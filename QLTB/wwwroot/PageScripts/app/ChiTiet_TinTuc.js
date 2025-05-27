const baseUrl = getRootLink();

$(document).ready(function() {
    let currentBaiVietId = null;

    async function getTotalTinLienQuan(baiVietId) {
        try {
            const response = await fetch(`${baseUrl}/api/TinTucApi/GetTinLienQuanPaging?baiVietId=${baiVietId}&pageNumber=1&pageSize=1000`);
            const data = await response.json();
            if (data.isSuccess) {
                return data.value.length;
            }
            return 0;
        } catch (error) {
            console.error('loi: ', error);
            return 0;
        }
    }

    async function loadTinLienQuan(baiVietId, page = 1) {
        try {
            const pageSize = 3;
            const totalItems = await getTotalTinLienQuan(baiVietId);
            const totalPages = Math.ceil(totalItems / pageSize);

            const response = await fetch(`${baseUrl}/api/TinTucApi/GetTinLienQuanPaging?baiVietId=${baiVietId}&pageNumber=${page}&pageSize=${pageSize}`);
            const data = await response.json();

            if (data.isSuccess) {
                let html = '';
                data.value.forEach(tin => {
                    html += `
                        <div class="news-item">
                            <a href="${baseUrl}/${tin.urlChuyenMuc}/chi-tiet/${tin.urlBaiViet}" class="news-title">
                                ${tin.tieuDe} (${new Date(tin.ngayCongBo).toLocaleDateString('vi-VN')})
                            </a>
                        </div>
                    `;
                });

                // phân trang
                if (totalPages > 0) {
                    html += '<div class="pagination">';
                    // Prev
                    html += `<a href="#" class="page-link prev ${page === 1 ? 'disabled' : ''}" data-page="${page-1}">Prev</a>`;
                    
                    // Số trang
                    for (let i = 1; i <= totalPages; i++) {
                        html += `<a href="#" class="page-link ${i === page ? 'active' : ''}" data-page="${i}">${i}</a>`;
                    }
                    
                    // Next
                    html += `<a href="#" class="page-link next ${page === totalPages ? 'disabled' : ''}" data-page="${page+1}">Next</a>`;
                    html += '</div>';
                }

                document.getElementById('section-bottom').innerHTML = html;

                document.querySelectorAll('.page-link').forEach(link => {
                    link.addEventListener('click', async (e) => {
                        e.preventDefault();
                        const pageNumber = parseInt(e.target.getAttribute('data-page'));
                        await loadTinLienQuan(baiVietId, pageNumber);
                    });
                });
            }
        } catch (error) {
            console.error('loi: ', error);
        }
    }

    async function initializePage() {
        try {
            const urlParts = window.location.pathname.split('/');
            const urlBaiViet = urlParts[urlParts.length - 1];
            
            const res = await fetch(`${baseUrl}/api/TinTucApi/GetBaiVietChiTiet/${urlBaiViet}`, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                }
            });
            
            if (!res.ok) {
                const errText = await res.text();
                throw new Error(errText);
            }
            
            const data = await res.json();
            
            if (data && data.isSuccess && data.value) {
                $('#news-category').text(data.value.tenChuyenMuc);
                $('#news-title').text(data.value.tieuDe);
                $('#news-date').text(new Date(data.value.ngayCongBo).toLocaleDateString('vi-VN'));
                $('#news-summary').html(data.value.tomTat);
                $('#news-content').html(data.value.noiDung);

                if (data.value.tacGia) {
                    $('#news-content').append(`<div class="news-author-wrapper"><span class="news-author">Tác giả: ${data.value.tacGia}</span></div>`);
                }
                if (data.value.nguonTin) {
                    $('#news-source').text(`Nguồn tin: ${data.value.nguonTin}`);
                    $('#news-source-container').show();
                }
                
                // lấy id bài viết và load tin liên quan
                currentBaiVietId = data.value.id;
                await loadTinLienQuan(currentBaiVietId);
            } else {
                throw new Error('loi');
            }
        } catch (err) {
            console.error(err);
            showNotification(0, err.message);
        }
    }

    initializePage();
});