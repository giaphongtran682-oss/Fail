# Ông Già Noel 2026 — bản cập nhật nhạc và tra cứu đơn

## Nội dung cập nhật
- Nhạc nền dùng giai điệu điệp khúc **Jingle Bells** (tác phẩm public-domain), phối tiếng chuông, piano và bass nhẹ; có nhịp dài/ngắn rõ hơn. Người dùng chạm để bật nhạc; nút điều khiển vẫn thu gọn ở góc màn hình.
- Khách chỉ cần nhập số điện thoại đã dùng khi đặt lịch để xem danh sách đơn, trạng thái, lịch hẹn, dịch vụ và tổng tiền. Nếu số điện thoại có nhiều đơn, hệ thống hiển thị tối đa 20 đơn gần nhất.
- Để hạn chế lộ dữ liệu, tra cứu bằng số điện thoại không trả về địa chỉ, ghi chú, tên bé hoặc thông tin liên hệ chi tiết. Tuy vậy, người biết số điện thoại của khách vẫn có thể xem thông tin cơ bản của đơn.

## Cài đặt
1. Thay `index.html` trên hosting bằng file mới trong gói ZIP.
2. `admin.html` không thay đổi trong bản này. Có thể giữ nguyên file quản trị đang chạy.
3. SQL tạo RPC tra cứu số điện thoại đã được áp dụng trực tiếp vào Supabase project `yvqoypzlafrscuxkesao`; không cần chạy lại nếu đang dùng đúng project này. File SQL được đính kèm để lưu hồ sơ.
4. Xóa cache hoặc mở lại website sau khi tải file mới lên hosting.

## Lưu ý
- Nhạc được tổng hợp trực tiếp trong trình duyệt bằng Web Audio API, không phải file MP3. Trình duyệt điện thoại yêu cầu người dùng chạm nút trước khi phát.
- Tra cứu chỉ yêu cầu số điện thoại, không có OTP. Nếu cần bảo mật mạnh hơn, nên bổ sung xác thực OTP qua SMS/Zalo.
