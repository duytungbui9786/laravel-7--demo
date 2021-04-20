$(".menu1").next('ul').toggle();

$(".menu1").click(function(event) {
    $(this).next("ul").toggle(500);
});
$('.service_bottom .service-list').slick({
    dots: true,
    infinite: true,
    slidesToShow: 6,
    slidesToScroll: 6
});
/* end slick jquery */
var id_type = $('.my-tab2-content-item.active').attr("data_id");
$(document).ready(function() {
    //

    //
    /* getProductHot("getProductsComon","products_common",2); */
    /* tab1 */
    $('.my-tab .target').on('click', function() {
        //
        $('.my-tab .target').removeClass('active');
        $(this).addClass('active');
        //
        $('.my-tab .my-tab-content .my-tab-content-item').removeClass('active');
        var data_target = $(this).attr("data-target");
        $('#' + data_target + '').addClass('active');
    });
    /* tab2 */
    $('.my-tab2 .target').on('click', function() {
        //
        $('.my-tab2 .target').removeClass('active');
        $(this).addClass('active');
        //
        $('.my-tab2 .my-tab-content .my-tab2-content-item').removeClass('active');
        var data_target2 = $(this).attr("data-target");
        $('#' + data_target2 + '').addClass('active');
    });

    //load more sp thịnh hành
    $('#my-tab-content-1 .get-more-bt').click(function() {
        var current_prod_common_page = parseInt($('#current_prod_common_page').val());
        current_prod_common_page += 1;
        getProductHot("getProductsComon", "products_common", current_prod_common_page);
    });
    $('#my-tab-content-2 .get-more-bt').click(function() {
        var current_prod_new_page = parseInt($('#current_prod_new_page').val());
        current_prod_new_page += 1;
        getProductHot("getProductsNew", "product_new", current_prod_new_page);
    });
    $('#my-tab-content-3 .get-more-bt').click(function() {
        var current_prod_comming_page = parseInt($('#current_prod_comming_page').val());
        current_prod_comming_page += 1;
        getProductHot("getProductsComming", "product_comming", current_prod_comming_page);
    });
    //load more sp list type
    $('.get-more-bt-2').click(function() {
        var cat_id = parseInt($(this).attr('data-id'));
        //my-tab2-content-''++''
        var current_prod_tab2_page = parseInt($('#current_prod_tab2_page-' + cat_id + '').val());
        current_prod_tab2_page += 1;
        $.ajax({
            url: "getProductsByCat",
            type: "post",
            dataType: "json",
            data: {
                _token: csrf_token,
                id: cat_id,
                page: current_prod_tab2_page
            },
            success: function(data) {
                $('#my-tab2-content-' + cat_id + ' .mt-product-list').append(data.html);
                //
                $('#current_prod_tab2_page-' + cat_id + '').val(data.page);
                $('#total_prod_tab2_page-' + cat_id + '').val(data.total_page);
                if (data.total_page <= data.page) {
                    $('#my-tab2-content-' + cat_id + ' .get-more').hide();
                }
            }
        });
        $('.service_right .service_text').click(function() {
            var index = $(this).attr('data-index');
            $('.service_right .hiden').hide();
            $('.service_right .hiden.i-' + index + '').slideToggle(1000).show();
        });
        $('.service_bottom .service-list').slick({
            dots: true,
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1
        });
    });
    // jquery trang giỏ hàng chi tiết

    $('.img-list').on('click', function() {
        var data_target = $(this).attr("data_target");
        $('.main-img .img-list-op').removeClass('active');
        $('#' + data_target + '').addClass('active');
        $('.db-img-list .img-list').removeClass('active');
        $(this).addClass('active');
    });
    //add to cart
    $('.dp-addtocart').click(function() {
        var prod_amount = $('#prod_amount').val();
        prod_amount = Math.max(prod_amount, 1);
        var product_id = parseInt($(this).attr('product-id'));
        addProdToCart(product_id, prod_amount);
    });
    //popup
    $('.orderfastname').click(function(e) {
        $('.show2').show();
    });
    $('.orderfastname').click(function() {
        var number = $('.ordercartbox .inputnum').val();
        $('.popup .inputnum').val(number);
        var price = $('#price').attr('data');
        var total = price *= number;
        $('#price').html(total + 'đ');
    });
    //
    $('#popupOrderModal .prod-amount').change(function() {
        var number = ($(this).val());
        var price = $('#price').attr('data');
        var total = price *= number;
        $('#price').html(total + 'đ');
    });
    $('.my-tab .target').on('click', function() {
        //
        $('.my-tab .target').removeClass('active');
        $(this).addClass('active');
        //
        $('.my-tab .my-tab-content .my-tab-content-item').removeClass('active');
        var data_target = $(this).attr("data-target");
        $('#' + data_target + '').addClass('active');
    });
    // Sản phẩm bạn đã xem

    /* onclick="addProdToCart({{ $item->id }}, 1);" */
    


});

function viewcart(product_id) {

    $.ajax({
        url: "viewcart", // gửi ajax đến file addtocart.php
        type: "post", // chọn phương thức gửi là post
        dataType: "json", // dữ liệu trả về dạng json
        data: { // Danh sách các thuộc tính sẽ gửi đi
            _token: csrf_token,
            product_id: product_id,
        },
        success: function(json) { // ----> hiển thị các dữ liệu đc xuất ra từ get_district.php (echo ...)
            //tự tăng số sản phẩm khi thêm sản phẩm +1
            alert(json.message);
        }
    });
}


function getProductByCat(id) {
    //lấy sản phẩm bé trai bé gái ->list        
    $.ajax({
        url: "getProductsByCat",
        type: "post",
        dataType: "json",
        data: {
            _token: csrf_token,
            id: id,
            page: 1
        },
        success: function(data) {
            $('#my-tab2-content-' + id + ' .mt-product-list').append(data.html);
            if (data.total_page <= data.page) {
                $('#my-tab2-content-' + id + ' .get-more').hide();
            }
        }
    });
}

function getProductHot(type, response_id, page) {
    var url_post;
    if (type == "getProductsComon") {
        url_post = "getProductsComon";
    } else if (type == "getProductsNew") {
        url_post = "getProductsNew";
    } else {
        type == "getProductsComming"
        url_post = "getProductsComming";
    }
    $.ajax({
        url: url_post,
        type: "post",
        dataType: "json",
        data: {
            _token: csrf_token,
            page: page
        },
        success: function(data) {
            $("#" + response_id + "").append(data.html);
            if (type == "getProductsComon") {
                $('#current_prod_common_page').val(data.page);
                $('#total_prod_common_page').val(data.total_page);
                if (data.total_page <= data.page) {
                    $('#my-tab-content-1 .get-more').hide();
                }
            } else if (type == "getProductsNew") {
                $('#current_prod_new_page').val(data.page);
                $('#total_prod_new_page').val(data.total_page);
                if (data.total_page <= data.page) {
                    $('#my-tab-content-2 .get-more').hide();
                }
            } else if (type == "getProductsComming") {
                $('#current_prod_comming_page').val(data.page);
                $('#total_prod_comming_page').val(data.total_page);
                if (data.total_page <= data.page) {
                    $('#my-tab-content-3 .get-more').hide();
                }
            }

        }
    });
}