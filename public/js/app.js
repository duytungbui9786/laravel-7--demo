function addProdToCart(product_id, amount) {
    $.ajax({
        url: "addtocart", // gửi ajax đến file addtocart.php
        type: "post", // chọn phương thức gửi là post
        dataType: "json", // dữ liệu trả về dạng json
        data: { // Danh sách các thuộc tính sẽ gửi đi
            _token: csrf_token,
            product_id: product_id,
            amount: amount
        },
        success: function(json) { // ----> hiển thị các dữ liệu đc xuất ra từ get_district.php (echo ...)
            //tự tăng số sản phẩm khi thêm sản phẩm +1
            var cart_items = parseInt($('#total_cart_item').attr('data-count'));
            cart_items += parseInt(json.amount);
            $('#total_cart_item').attr('data-count', cart_items);
            $('#total_cart_item').html(cart_items);
            alert(json.message);
        }
    });
}