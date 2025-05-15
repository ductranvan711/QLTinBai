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
});