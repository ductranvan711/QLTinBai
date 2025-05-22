const baseUrl = getRootLink();

$(document).ready(function() {
    // tạo banner
    function initializeBanners() {
        const banners = [
            {
                imageUrl: "https://huecit.vn/Portals/3/QuangCao/Nam2022/T10/UngDungCDSDN.png",
            },
            {
                imageUrl: "https://huecit.vn/Portals/3/QuangCao/Nam2022/T4/BannerOpenData.jpg",
            },
            {
                imageUrl: "https://huecit.vn/Portals/3/QuangCao/Nam2015/T11/HueCIT_Banner1.jpg",
            }
        ];

        // tạo html
        const carouselInner = $('.carousel-inner');
        banners.forEach((banner, index) => {
            const slide = $('<div>', {
                class: `carousel-item ${index === 0 ? 'active' : ''} h-100`,
                html: `<img src="${banner.imageUrl}" class="d-block w-100 h-100 img-fluid" alt="Banner ${index + 1}">`
            });
            carouselInner.append(slide);
        });

        // tạo carousel
        $('#bannerCarousel').carousel({
            interval: 5000,
            wrap: true
        });
    }

    // tạo banner khi load
    initializeBanners();
    
    // lấy danh sách tin tức
    async function getNews() {
        try {
            const res = await fetch(`${baseUrl}/api/TinTucApi/GetLatestNews`, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                }
            });
            
            if (!res.ok) {
                var errText = await res.text();
                throw new Error(errText);
            }
            
            const data = await res.json();
            return data;
            
        } catch (err) {
            showNotification(0, err.message);
            return [];
        }
    }

    // hiển thị tin tức
    function displayNews(data) {
        const newsContainer = $('#newsList');
        newsContainer.empty();

        if (data && data.isSuccess && data.value && data.value.length > 0) {
            // phần tin mới nhất
            const latestNews = data.value[0];
            const latestNewsHtml = `
                <div class="col-md-6 mb-4">
                    <div class="latest-news position-relative h-100 d-flex flex-column">
                        <div class="flex-grow-1">
                            <a href="/${latestNews.urlChuyenMuc}/${latestNews.urlBaiViet}">
                                <img src="${latestNews.thumbnail}" 
                                     class="w-100 hover-image latest-news-image" 
                                     alt="${latestNews.tieuDe}">
                            </a>
                            <a href="/${latestNews.urlChuyenMuc}" class="text-decoration-none">
                                <span class="badge bg-info mt-4" style="color: #000">${latestNews.tenChuyenMuc}</span>
                            </a>
                            <a href="/${latestNews.urlChuyenMuc}/${latestNews.urlBaiViet}" class="text-decoration-none">
                                <h4 class="mt-2 hover-title news-title">${latestNews.tieuDe}</h4>
                            </a>
                        </div>
                        <small class="text-muted mt-auto">${new Date(latestNews.ngayCongBo).toLocaleDateString('vi-VN')}</small>     
                    </div>
                </div>
            `;

            // phần 3 tin còn lại
            const otherNewsHtml = `
                <div class="col-md-6">
                    ${data.value.slice(1, 4).map(item => `
                        <div class="news-item mb-4">
                            <div class="d-flex h-100">
                                <div class="news-image mr-1" style="width: 40%;">
                                    <a href="/${item.urlChuyenMuc}/${item.urlBaiViet}">
                                        <img src="${item.thumbnail}" 
                                             class="w-100 h-100 hover-image" 
                                             alt="${item.tieuDe}">
                                    </a>
                                </div>
                                <div class="news-content d-flex flex-column" style="width: 60%;">
                                    <div class="flex-grow-1">
                                        <a href="/${item.urlChuyenMuc}" class="text-decoration-none">
                                            <span class="badge bg-info mb-2" style="color: #000">${item.tenChuyenMuc}</span>
                                        </a>
                                        <a href="/${item.urlChuyenMuc}/${item.urlBaiViet}" class="text-decoration-none">
                                            <h6 class="hover-title news-title">${item.tieuDe}</h6>
                                        </a>
                                    </div>
                                    <small class="text-muted">${new Date(item.ngayCongBo).toLocaleDateString('vi-VN')}</small>
                                </div>
                            </div>
                        </div>
                    `).join('')}
                </div>
            `;

            newsContainer.append(latestNewsHtml + otherNewsHtml);
        } else {
            newsContainer.append('<div class="col-12 text-center">K có tin tức</div>');
        }
    }

    // Khởi tạo danh sách tin tức
    async function initializeNews() {
        const data = await getNews();
        displayNews(data);
    }

    // tạo tin tức
    initializeNews();

    // lấy danh sách tin tức dịch vụ
    async function getServiceNews() {
        try {
            const res = await fetch(`${baseUrl}/api/TinTucApi/GetServiceNews`, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                }
            });
            
            if (!res.ok) {
                var errText = await res.text();
                throw new Error(errText);
            }
            
            const data = await res.json();
            return data;
            
        } catch (err) {
            showNotification(0, err.message);
            return [];
        }
    }

    // hiển thị tin tức dịch vụ
    function displayServiceNews(data) {
        const serviceContainer = $('#serviceList');
        serviceContainer.empty();
    
        if (data && data.isSuccess && data.value && data.value.length > 0) {
            const serviceNewsHtml = data.value.map(item => `
                <div class="col-md-4 mb-4">
                    <a href="/${item.urlChuyenMuc}/${item.urlBaiViet}" class="text-decoration-none">
                        <div class="service-item h-100 d-flex flex-column">
                            <div class="flex-grow-1">
                                <div class="service-icon">
                                    <img src="${item.thumbnail}" alt="${item.tieuDe}">
                                </div>
                                <h5 class="hover-title service-title">${item.tieuDe}</h5>
                                <p class="text-muted service-summary">${item.tomTat}</p>
                            </div>
                        </div>
                    </a>
                </div>
            `).join('');
    
            serviceContainer.append(serviceNewsHtml);
        } else {
            serviceContainer.append('<div class="col-12 text-center">K co tin dich vu</div>');
        }
    }

    // Khởi tạo danh sách dịch vụ
    async function initializeServices() {
        const data = await getServiceNews();
        displayServiceNews(data);
    }
    initializeServices();

    // lấy danh sách tin tức đào tạo
    async function getTrainingNews() {
        try {
            const res = await fetch(`${baseUrl}/api/TinTucApi/GetTrainingNews`, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                }
            });
            
            if (!res.ok) {
                var errText = await res.text();
                throw new Error(errText);
            }
            
            const data = await res.json();
            return data;
            
        } catch (err) {
            showNotification(0, err.message);
            return [];
        }
    }

    // hiển thị tin tức đào tạo
    function displayTrainingNews(data) {
        if (!data || !data.isSuccess || !data.value || data.value.length === 0) {
            $('#trainingCarousel .carousel-inner').html('<div class="text-center">K co tin tuc</div>');
            $('#trainingNewsList').html('<div class="text-center">K co tin tuc</div>');
            return;
        }

        // Lọc tin tiêu điểm cho slider
        const featuredNews = data.value.filter(item => item.tieuDiem);
        const normalNews = data.value.filter(item => !item.tieuDiem).slice(0, 4);

        // Hiển thị tin tiêu điểm trong carousel
        const carouselInner = $('#trainingCarousel .carousel-inner');
        carouselInner.empty();
        
        featuredNews.forEach((item, index) => {
            const slide = $('<div>', {
                class: `carousel-item ${index === 0 ? 'active' : ''}`,
                html: `
                    <a href="/${item.urlChuyenMuc}/${item.urlBaiViet}">
                        <img src="${item.thumbnail}" 
                            class="d-block w-100 training-slide-image" 
                            alt="${item.tieuDe}">
                        <div class="carousel-caption">
                            <h5>${item.tieuDe}</h5>
                        </div>
                    </a>
                `
            });
            carouselInner.append(slide);
        });

        // Hiển thị tin thường
        const newsListHtml = `
            <div class="row">
                ${normalNews.map(item => `
                    <div class="col-md-6 mb-1">
                        <div class="training-news-item">
                            <a href="/${item.urlChuyenMuc}/${item.urlBaiViet}" class="text-decoration-none">
                                <img src="${item.thumbnail}" 
                                     class="hover-image" 
                                     alt="${item.tieuDe}">
                            </a>
                            <div class="training-news-content">
                                <a href="/${item.urlChuyenMuc}" class="text-decoration-none">
                                    <span class="badge bg-info" style="color: #000">${item.tenChuyenMuc}</span>
                                </a>
                                <a href="/${item.urlChuyenMuc}/${item.urlBaiViet}" class="text-decoration-none">
                                    <h6 class="hover-title training-news-title">${item.tieuDe}</h6>
                                </a>
                            </div>
                        </div>
                    </div>
                `).join('')}
            </div>
        `;

        $('#trainingNewsList').html(newsListHtml);
    }

    // Khởi tạo danh sách đào tạo
    async function initializeTraining() {
        const data = await getTrainingNews();
        displayTrainingNews(data);
    }
    initializeTraining();
});