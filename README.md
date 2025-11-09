# 🖥️ Chia Sẻ Màn Hình - Screen Sharing App

Ứng dụng chia sẻ màn hình web với tính năng chat, camera và audio real-time sử dụng WebRTC.

## 🌐 Demo Online

**Live Demo**: https://YOUR_USERNAME.github.io/screen-sharing-app/index-online.html

## 📦 2 Phiên bản

### 1. **index.html** - Demo Local
- Chỉ hoạt động trên cùng thiết bị (localStorage)
- Dùng để test nhanh
- Mở 2 tab để test

### 2. **index-online.html** - Phiên bản Online ⭐
- Hoạt động giữa các thiết bị khác nhau
- Sử dụng PeerJS cho signaling
- Máy tính ↔ Điện thoại
- **KHUYÊN DÙNG PHIÊN BẢN NÀY!**

## ✨ Tính năng

- 🖥️ **Chia sẻ màn hình** - Share màn hình qua internet
- 💬 **Chat real-time** - Nhắn tin trực tiếp giữa các thiết bị
- 📹 **Camera** - Bật camera để người khác thấy bạn
- 🎤 **Microphone** - Truyền âm thanh qua WebRTC
- 🌍 **Cross-device** - Hoạt động giữa máy tính và điện thoại
- 📱 **Responsive** - Giao diện tối ưu cho mobile
- 🎨 **Giao diện đẹp** - UI hiện đại với gradient màu tím

## 🚀 Cách sử dụng (index-online.html)

### Người chia sẻ (Máy tính):
1. Mở `index-online.html`
2. Nhập tên của bạn
3. Nhấn "Bắt Đầu Chia Sẻ"
4. Chọn màn hình muốn chia sẻ
5. Copy **Peer ID** (mã dài)
6. Gửi Peer ID cho người xem (qua Zalo, Messenger, v.v.)

### Người xem (Điện thoại/Máy khác):
1. Mở `index-online.html` trên thiết bị của bạn
2. Chọn tab "Xem"
3. Nhập tên của bạn
4. Dán **Peer ID** vào
5. Nhấn "Kết Nối"
6. Xem màn hình được chia sẻ! 🎉

## 🛠️ Công nghệ

- **WebRTC** - Peer-to-peer video/audio streaming
- **PeerJS** - WebRTC signaling service (miễn phí)
- **Vanilla JavaScript** - Không cần framework
- **CSS3** - Responsive design với media queries
- **HTML5** - getUserMedia, getDisplayMedia APIs

## 📦 Cài đặt

### Cách 1: Clone từ GitHub
```bash
git clone https://github.com/[your-username]/screen-sharing-app.git
cd screen-sharing-app
```

### Cách 2: Download ZIP
1. Nhấn nút "Code" → "Download ZIP"
2. Giải nén
3. Mở `index-online.html` trong trình duyệt

## 🌐 Sử dụng Online

**Không cần cài đặt!** Chỉ cần truy cập:
```
https://[your-username].github.io/screen-sharing-app/index-online.html
```

Hoặc mở file `index-online.html` trực tiếp trong trình duyệt.

## ⚠️ Lưu ý

- **PeerJS**: Sử dụng server miễn phí, có thể chậm đôi khi
- **Mobile Screen Sharing**: Một số trình duyệt mobile không hỗ trợ chia sẻ màn hình (chỉ xem được)
- **HTTPS**: Cần HTTPS khi deploy lên web (GitHub Pages tự động có)
- **Peer ID**: Mã dài, cần copy chính xác
- **Firewall**: Một số mạng công ty có thể chặn WebRTC

## 🚀 Deploy lên GitHub Pages

1. Push code lên GitHub repository
2. Vào **Settings** → **Pages**
3. Source: chọn **main** branch
4. Nhấn **Save**
5. Đợi 2-3 phút
6. Truy cập: `https://[username].github.io/[repo-name]/index-online.html`

## 🔧 Nâng cấp cho Production

Để cải thiện hiệu suất:
1. **Custom PeerJS Server** - Tự host PeerJS server
2. **TURN Server** - Cho NAT traversal tốt hơn
3. **Backend** - Quản lý sessions và analytics
4. **CDN** - Tăng tốc độ tải trang

## 📝 License

MIT License - Tự do sử dụng và chỉnh sửa

## 👨‍💻 Tác giả

Được tạo với ❤️ bởi [Your Name]

## 🤝 Đóng góp

Pull requests được chào đón! Đối với thay đổi lớn, vui lòng mở issue trước.

## 📸 Screenshots

[Thêm screenshots của ứng dụng ở đây]

---

**Lưu ý**: Đây là demo project sử dụng localStorage. Để deploy production, cần implement WebSocket signaling server.
