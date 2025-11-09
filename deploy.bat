@echo off
chcp 65001 >nul
color 0A
cls

echo.
echo ╔════════════════════════════════════════════════════════════╗
echo ║          🚀 DEPLOY LÊN GITHUB PAGES 🚀                     ║
echo ╚════════════════════════════════════════════════════════════╝
echo.

REM Kiểm tra Git
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Git chưa được cài đặt!
    echo.
    echo 📥 Vui lòng:
    echo    1. Tải Git: https://git-scm.com/download/win
    echo    2. Cài đặt Git
    echo    3. Khởi động lại Command Prompt
    echo    4. Chạy lại file này
    echo.
    echo 💡 Hoặc dùng GitHub Desktop: https://desktop.github.com
    echo.
    pause
    exit /b 1
)

echo ✅ Git đã được cài đặt
echo.

REM Khởi tạo Git nếu chưa có
if not exist .git (
    echo 📦 Đang khởi tạo Git repository...
    git init
    echo ✅ Đã khởi tạo
    echo.
)

REM Cấu hình Git nếu chưa có
git config user.name >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo 👤 Cấu hình Git:
    echo.
    set /p GITNAME="   Nhập tên của bạn: "
    set /p GITEMAIL="   Nhập email: "
    git config --global user.name "!GITNAME!"
    git config --global user.email "!GITEMAIL!"
    echo ✅ Đã cấu hình
    echo.
)

REM Add và commit
echo 📝 Đang thêm files...
git add .
echo.

echo 💾 Đang commit...
git commit -m "Deploy: Screen sharing app with online version" >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo ✅ Đã commit
) else (
    echo ⚠️  Không có thay đổi mới
)
echo.

REM Nhập thông tin GitHub
echo ╔════════════════════════════════════════════════════════════╗
echo ║              📋 THÔNG TIN GITHUB                           ║
echo ╚════════════════════════════════════════════════════════════╝
echo.
set /p USERNAME="👤 GitHub Username: "
set /p REPONAME="📦 Tên Repository (vd: screen-sharing-app): "
echo.

REM Xóa remote cũ nếu có
git remote remove origin >nul 2>nul

REM Thêm remote mới
echo 🔗 Đang kết nối với GitHub...
git remote add origin https://github.com/%USERNAME%/%REPONAME%.git
echo ✅ Đã kết nối
echo.

REM Đổi branch
echo 🌿 Đang đổi branch thành main...
git branch -M main
echo ✅ Đã đổi branch
echo.

REM Push
echo 🚀 Đang push code lên GitHub...
echo.
echo ⚠️  Bạn sẽ cần nhập:
echo    - Username: %USERNAME%
echo    - Password: Personal Access Token
echo.
echo 💡 Lấy token tại: https://github.com/settings/tokens
echo    (Generate new token → repo → Copy token)
echo.
pause

git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ╔════════════════════════════════════════════════════════════╗
    echo ║              ✅ THÀNH CÔNG! ✅                             ║
    echo ╚════════════════════════════════════════════════════════════╝
    echo.
    echo 🎉 Code đã được push lên GitHub!
    echo.
    echo 🌐 Repository: https://github.com/%USERNAME%/%REPONAME%
    echo.
    echo ╔════════════════════════════════════════════════════════════╗
    echo ║          📱 ENABLE GITHUB PAGES                            ║
    echo ╚════════════════════════════════════════════════════════════╝
    echo.
    echo Để website live:
    echo.
    echo 1️⃣  Vào: https://github.com/%USERNAME%/%REPONAME%/settings/pages
    echo 2️⃣  Source: chọn "main" branch
    echo 3️⃣  Nhấn Save
    echo 4️⃣  Đợi 2-3 phút
    echo 5️⃣  Website sẽ live tại:
    echo.
    echo     https://%USERNAME%.github.io/%REPONAME%/index-online.html
    echo.
    echo 🎊 Xong! Chia sẻ link này cho bạn bè!
    echo.
    
    REM Mở browser
    set /p OPEN="Mở GitHub Pages settings ngay? (Y/N): "
    if /i "%OPEN%"=="Y" (
        start https://github.com/%USERNAME%/%REPONAME%/settings/pages
    )
) else (
    echo.
    echo ╔════════════════════════════════════════════════════════════╗
    echo ║              ❌ LỖI KHI PUSH                               ║
    echo ╚════════════════════════════════════════════════════════════╝
    echo.
    echo 🔍 Kiểm tra:
    echo.
    echo 1. Repository đã tạo trên GitHub chưa?
    echo    → Tạo tại: https://github.com/new
    echo.
    echo 2. Username và token đúng chưa?
    echo    → Kiểm tra lại
    echo.
    echo 3. Đã có Personal Access Token chưa?
    echo    → Tạo tại: https://github.com/settings/tokens
    echo.
)

echo.
pause
