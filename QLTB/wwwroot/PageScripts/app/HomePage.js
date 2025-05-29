const baseUrl = getRootLink();

$(document).ready(function () {
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

    // function chung lấy tin tức
    async function getNewsWithType(type, count, categories = []) {
        try {
            // tạo request body
            const requestBody = {
                type: type,
                count: count,
                chuyenMuc: categories.length > 0 ? categories.join(',') : null
            };

            const res = await fetch(`${baseUrl}/api/TinTucApi/GetNews`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(requestBody)
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

    // lấy danh sách tin tức
    async function getNews() {
        return await getNewsWithType(1, 4, []);
    }

    // hiển thị tin tức
    function displayNews(data) {
        const newsContainer = $('#newsList');
        newsContainer.empty();

        if (data && data.isSuccess && data.value && data.value.length > 0) {
            // phần tin mới nhất
            const latestNews = data.value[0];
            const latestNewsHtml = `
                <div class="col-md-6 mb-2">
                    <div class="latest-news position-relative h-100 d-flex flex-column">
                        <div class="flex-grow-1 position-relative" style="overflow: hidden; height: 100%">
                            <a href="/${latestNews.urlChuyenMuc}/chi-tiet/${latestNews.urlBaiViet}" class="d-block h-100">
                                <img src="${latestNews.thumbnail}" 
                                     class="w-100 h-100 hover-image latest-news-image" 
                                     style="object-fit: cover;"
                                     alt="${latestNews.tieuDe}">
                                <div class="news-overlay">
                                    <a href="/${latestNews.urlChuyenMuc}" class="text-decoration-none">
                                        <span class="badge bg-info" style="color: #000">${latestNews.tenChuyenMuc}</span>
                                    </a>
                                    <a href="/${latestNews.urlChuyenMuc}/chi-tiet/${latestNews.urlBaiViet}" class="text-decoration-none">
                                        <h4 class="mt-2 text-white hover-title news-title">${latestNews.tieuDe}</h4>
                                    </a>              
                                    <small class="text-white d-block mt-1">${new Date(latestNews.ngayCongBo).toLocaleDateString('vi-VN')}</small>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            `;

            // phần 3 tin còn lại
            const otherNewsHtml = `
                <div class="col-md-6">
                    ${data.value.slice(1, 4).map(item => `
                        <div class="news-item mb-2">
                            <div class="d-flex h-100">
                                <div class="news-image mr-1" style="width: 40%;">
                                    <a href="/${item.urlChuyenMuc}/chi-tiet/${item.urlBaiViet}">
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
                                        <a href="/${item.urlChuyenMuc}/chi-tiet/${item.urlBaiViet}" class="text-decoration-none">
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
        // ds ID tt chuyên mục dich vụ
        const serviceCategories = [
            "B51F7635-9FB5-4494-95A3-10B57D0B5CF4"
        ];

        return await getNewsWithType(2, 6, serviceCategories);
    }

    // hiển thị tin tức dịch vụ
    function displayServiceNews(data) {
        const serviceContainer = $('#serviceList');
        serviceContainer.empty();

        if (data && data.isSuccess && data.value && data.value.length > 0) {
            const serviceNewsHtml = data.value.map(item => `
                <div class="col-md-4 mb-4">
                    <a href="/${item.urlChuyenMuc}/chi-tiet/${item.urlBaiViet}" class="text-decoration-none">
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
        // ds ID tt chuyên mục
        const trainingCategories = [
            "F120BB65-2B4E-48AF-9A96-497058EBFB95",
            "57214E56-18B0-456A-9B36-D263CB332D75",
            "B87D10B9-5835-4C3C-A0C1-507D65746850",
            "4BCE5E1E-7461-4D1F-8199-B3C5CD42B9F2"
        ];

        return await getNewsWithType(3, 4, trainingCategories);
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
                    <a href="/${item.urlChuyenMuc}/chi-tiet/${item.urlBaiViet}">
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
                            <a href="/${item.urlChuyenMuc}/chi-tiet/${item.urlBaiViet}" class="text-decoration-none">
                                <img src="${item.thumbnail}" 
                                     class="hover-image" 
                                     alt="${item.tieuDe}">
                            </a>
                            <div class="training-news-content">
                                <a href="/${item.urlChuyenMuc}" class="text-decoration-none">
                                    <span class="badge bg-info" style="color: #000">${item.tenChuyenMuc}</span>
                                </a>
                                <a href="/${item.urlChuyenMuc}/chi-tiet/${item.urlBaiViet}" class="text-decoration-none">
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

    // lấy danh sách sản phẩm
    async function getProductNews() {
        // ds ID chuyên mục sản phẩm
        const productCategories = [
            "FEE4C680-5952-4B0A-AB24-5EEFD52BAEE7",
            "11930BAB-964D-49EB-A089-2822E94845D9",
            "6EEE995F-D0F9-4951-8882-706CF843C0BE"
        ];

        return await getNewsWithType(4, null, productCategories);
    }

    // hiển thị sản phẩm
    function displayProductNews(data) {
        const carouselInner = $('#productCarousel .carousel-inner');
        carouselInner.empty();

        if (!data || !data.isSuccess || !data.value || data.value.length === 0) {
            carouselInner.html('<div class="text-center">K co san pham</div>');
            return;
        }

        // Tạo slide cho từng sản phẩm
        data.value.forEach((item, index) => {
            const slide = $('<div>', {
                class: `carousel-item ${index === 0 ? 'active' : ''}`,
                html: `
                    <div class="row">
                        ${getProductsForSlide(data.value, index).map(product => `
                            <div class="col-12 col-sm-12 col-md-6 col-lg-4">
                                <div class="product-item h-100">
                                    <a href="/${product.urlChuyenMuc}/chi-tiet/${product.urlBaiViet}" class="text-decoration-none">
                                        <div class="product-image-wrapper">
                                            <img src="${product.thumbnail}" 
                                                 class="w-100 product-image" 
                                                 alt="${product.tieuDe}">
                                        </div>
                                        <div class="product-content">
                                            <h5 class="hover-title product-title">${product.tieuDe}</h5>
                                            ${product.tomTat ? `<p class="product-summary">${product.tomTat}</p>` : ''}
                                        </div>
                                    </a>
                                </div>
                            </div>
                        `).join('')}
                    </div>
                `
            });
            carouselInner.append(slide);
        });

        // Khởi tạo carousel
        $('#productCarousel').carousel({
            interval: 5000,
            wrap: true
        });
    }

    // lưu trữ dữ liệu sản phẩm
    let productData = null;

    // Khởi tạo danh sách sản phẩm
    async function initializeProducts() {
        // Chỉ gọi API nếu chưa có dữ liệu
        if (productData === null) {
            productData = await getProductNews();
        }
        displayProductNews(productData);
    }

    initializeProducts();

    $(window).on('resize', function () {
        if (productData !== null) {
            displayProductNews(productData);
        }
    });
});

// Hàm lấy sản phẩm cho mỗi slide dựa trên kích thước màn hình
function getProductsForSlide(products, currentIndex) {
    const totalProducts = products.length;
    const result = [];
    let itemsPerSlide;

    if (window.innerWidth < 768) { // mobile
        itemsPerSlide = 1;
    } else if (window.innerWidth < 992) { // tablet
        itemsPerSlide = 2;
    } else { // pc
        itemsPerSlide = 3;
    }

    // lấy số lượng sản phẩm tương ứng
    for (let i = 0; i < itemsPerSlide; i++) {
        const index = (currentIndex + i) % totalProducts;
        result.push(products[index]);
    }

    return result;
}
