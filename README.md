# Coffee store management website

CSM là một Website được xây dựng bằng Java Servlet và JSP. Được xây dự, Vinlo đem đến cho người dùng giao diện thân thiện, dễ dàng tạo và quản lý bài viết, comment, downvote, upvote bài viết, theo dõi người dùng khác.

## Chức năng
### 1. User 
- Xác thực người dùng
- Chỉnh sửa thông tin cá nhân
- Xem thông tin sản phẩm
- Thêm sản phẩm vào giỏ hàng, thanh toán, theo dõi đơn hàng
### 2. Admin
- Quản lý người dùng
- Thêm, sửa, xóa sản phẩm
- Quản lý đơn hàng

## Kiến trúc sản phẩm
### Mô hình MVC
- Model: Quản lý dữ liệu của ứng dụng. Tất cả các tương tác với cơ sở dữ liệu được xử lý tại đây.
- View: Chịu trách nhiệm hiển thị dữ liệu. Sử dụng JSP để render HTML. 
- Controller: Xử lý các yêu cầu của người dùng, xử lý đầu vào bằng cách sử dụng model, và chọn các view để phản hồi.

[![img.png](https://i.postimg.cc/t4KztSgx/img.png)](https://postimg.cc/hX0xK0TD)


## Cài đặt

1. Sao chép repository:
   ```sh
   https://github.com/nqa12901/CafeStore.git
   cd CafeStore
2. Cài đặt dependency
    ```sh
   mvn clean install
3. Cấu hình cài đặt cơ sở dữ liệu trong tệp .DBConfig.java


