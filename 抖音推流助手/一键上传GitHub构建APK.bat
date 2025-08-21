@echo off
chcp 65001 >nul
title 抖音推流助手 - 一键上传GitHub构建APK

echo ========================================
echo 抖音推流助手 - 一键上传GitHub构建APK
echo ========================================
echo.
echo 🚀 这是获得APK的最快方法！
echo 🌐 无需安装任何软件，完全在线构建
echo ⏱️  约10-15分钟即可获得APK文件
echo.

echo 📋 步骤说明：
echo    1. 创建GitHub账号（如果没有）
echo    2. 创建新仓库
echo    3. 上传项目代码
echo    4. 自动构建APK
echo    5. 下载生成的APK文件
echo.

echo 🔗 立即开始：
echo.
echo [1] 创建GitHub账号
echo [2] 创建新仓库
echo [3] 上传代码教程
echo [4] 查看构建状态
echo [5] 下载APK文件
echo.

set /p choice=请选择 (1-5): 

if "%choice%"=="1" (
    echo.
    echo 🌐 正在打开GitHub注册页面...
    start https://github.com/signup
    echo.
    echo ✅ GitHub注册页面已打开！
    echo 📝 请完成注册，然后返回选择选项2
    echo.
) else if "%choice%"=="2" (
    echo.
    echo 🆕 正在打开创建仓库页面...
    start https://github.com/new
    echo.
    echo ✅ 创建仓库页面已打开！
    echo 📝 请按以下步骤操作：
    echo    1. 仓库名称：douyin-streaming-helper
    echo    2. 选择：Public
    echo    3. 勾选：Add a README file
    echo    4. 点击：Create repository
    echo.
) else if "%choice%"=="3" (
    echo.
    echo 📤 代码上传教程：
    echo.
    echo 💻 方法1：使用GitHub Desktop（推荐）
    echo    1. 下载：https://desktop.github.com/
    echo    2. 安装并登录
    echo    3. 克隆刚创建的仓库
    echo    4. 将项目文件复制到仓库文件夹
    echo    5. 提交并推送代码
    echo.
    echo 💻 方法2：使用网页上传
    echo    1. 在仓库页面点击"uploading an existing file"
    echo    2. 拖拽整个项目文件夹
    echo    3. 添加提交信息
    echo    4. 点击"Commit changes"
    echo.
    echo 💻 方法3：使用命令行
    echo    1. 安装Git：https://git-scm.com/
    echo    2. 运行以下命令：
    echo       git clone [您的仓库地址]
    echo       cd douyin-streaming-helper
    echo       copy "抖音推流助手\*" .
    echo       git add .
    echo       git commit -m "Initial commit"
    echo       git push
    echo.
) else if "%choice%"=="4" (
    echo.
    echo 🔍 查看构建状态：
    echo    1. 在您的GitHub仓库页面
    echo    2. 点击"Actions"标签
    echo    3. 查看构建进度
    echo    4. 等待构建完成（约10-15分钟）
    echo.
    echo 📱 构建完成后，您将看到：
    echo    ✅ app-debug.apk
    echo    ✅ app-release.apk
    echo.
) else if "%choice%"=="5" (
    echo.
    echo ⬇️  下载APK文件：
    echo    1. 在Actions页面找到成功的构建
    echo    2. 点击构建记录
    echo    3. 在Artifacts部分下载APK文件
    echo    4. 将APK传输到Android设备
    echo    5. 安装并测试应用
    echo.
) else (
    echo.
    echo ❌ 无效选择，请重新运行脚本
    echo.
)

echo ========================================
echo 快速提示
echo ========================================
echo.
echo 💡 推荐流程：
echo    1. 选择选项1创建GitHub账号
echo    2. 选择选项2创建仓库
echo    3. 选择选项3上传代码
echo    4. 选择选项4查看构建状态
echo    5. 选择选项5下载APK
echo.
echo 💡 预计总时间：15-20分钟
echo 💡 完全免费，无需安装任何软件
echo 💡 构建完成后可重复使用
echo.

echo 按任意键退出...
pause >nul

