# 🚀 Hướng Dẫn Deploy Lên GitHub Pages

## Bước 1: Tạo Repository Trên GitHub

1. Đăng nhập GitHub: https://github.com
2. Nhấn nút **"+"** góc trên → **"New repository"**
3. Điền thông tin:
   - **Repository name**: `screen-sharing-app`
   - **Description**: "Web-based screen sharing app"
   - Chọn **Public**
   - **KHÔNG** tick "Add a README file"
4. Nhấn **"Create repository"**

## Bước 2: Push Code Lên GitHub

### Nếu có Git Bash:

```bash
# Mở Git Bash trong thư mục project
git init
git add .
git commit -m "Initial commit: Screen sharing app"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/screen-sharing-app.git
git push -u origin main
```

### Nếu dùng GitHub Desktop:

1. Tải GitHub Desktop: https://desktop.github.com
2. File → Add Local Repository
3. Chọn thư mục project
4. Nhấn "Publish repository"
5. Xong!

## Bước 3: Enable GitHub Pages

1. Vào repository trên GitHub
2. Nhấn **Settings** (bánh răng)
3. Chọn **Pages** ở menu bên trái
4. **Source**: chọn **main** branch
5. Folder: chọn **/ (root)**
6. Nhấn **Save**

## Bước 4: Đợi Deploy

- Đợi 2-3 phút để GitHub build
- Refresh trang Settings → Pages
- Sẽ thấy link: `https://YOUR_USERNAME.github.io/screen-sharing-app`

## Bước 5: Truy Cập Website

Mở trình duyệt, vào:
```
https://YOUR_USERNAME.github.io/screen-sharing-app/index-online.html
```

🎉 **Xong!** Website đã online!

## 📱 Chia Sẻ Link

Giờ bạn có thể chia sẻ link này cho bất kỳ ai:
- Gửi qua Zalo, Messenger
- Mở trên điện thoại, tablet
- Chia sẻ với bạn bè

## 🔄 Cập Nhật Sau Này

Khi có thay đổi:

```bash
git add .
git commit -m "Update: Mô tả thay đổi"
git push
```

GitHub Pages sẽ tự động cập nhật sau vài phút!

## ❓ Troubleshooting

### Lỗi: "git: command not found"
→ Cài Git: https://git-scm.com/download/win

### Lỗi: "Permission denied"
→ Tạo Personal Access Token:
1. GitHub → Settings → Developer settings → Tokens
2. Generate new token (classic)
3. Chọn `repo`
4. Dùng token thay cho password

### Website không hiện
→ Đợi thêm 5-10 phút
→ Kiểm tra Settings → Pages có link chưa
→ Clear cache trình duyệt (Ctrl+F5)

## 💡 Tips

- Link ngắn hơn: Dùng bit.ly hoặc tinyurl.com
- Custom domain: Settings → Pages → Custom domain
- HTTPS: GitHub Pages tự động có SSL

---

**Cần trợ giúp?** Mở issue trên GitHub repository!
