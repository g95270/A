@echo off
chcp 65001 >nul
title 抖音推流助手 - 一键下载安装

echo ========================================
echo 抖音推流助手 APK - 一键下载安装
echo ========================================
echo.
echo 🚀 正在为您准备最快的APK构建方案...
echo.

echo 📥 方案1：下载Android Studio（推荐）
echo    下载地址：https://developer.android.com/studio
echo    文件大小：约1GB
echo    安装时间：约10-15分钟
echo.

echo 📥 方案2：下载便携版构建工具包
echo    包含：Java + Gradle + Android SDK
echo    文件大小：约500MB
echo    安装时间：约5-10分钟
echo.

echo 📥 方案3：在线构建服务
echo    无需安装任何软件
echo    上传代码即可自动构建
echo    完全免费
echo.

echo ========================================
echo 推荐选择
echo ========================================
echo.
echo 🥇 第一名：Android Studio
echo    优点：功能最全、最稳定、官方支持
echo    缺点：需要下载1GB文件
echo.
echo 🥈 第二名：在线构建
echo    优点：无需安装、立即使用
echo    缺点：需要网络上传代码
echo.
echo 🥉 第三名：便携版工具包
echo    优点：文件较小、安装快速
echo    缺点：配置复杂、可能不稳定
echo.

echo ========================================
echo 立即开始
echo ========================================
echo.
echo 请选择您的偏好：
echo.
echo [1] 下载Android Studio（推荐）
echo [2] 使用在线构建服务
echo [3] 下载便携版工具包
echo [4] 查看详细安装教程
echo.

set /p choice=请输入选择 (1-4): 

if "%choice%"=="1" (
    echo.
    echo 🚀 正在打开Android Studio下载页面...
    start https://developer.android.com/studio
    echo.
    echo ✅ 下载页面已打开！
    echo 📱 安装完成后，请：
    echo    1. 打开Android Studio
    echo    2. 选择"Open an existing project"
    echo    3. 导航到：抖音推流助手\android
    echo    4. 等待同步完成后点击Build → Build APK(s)
    echo.
) else if "%choice%"=="2" (
    echo.
    echo 🌐 正在为您准备在线构建方案...
    echo.
    echo 📋 步骤：
    echo    1. 将项目上传到GitHub
    echo    2. 创建自动构建工作流
    echo    3. 等待构建完成
    echo    4. 下载生成的APK
    echo.
    echo 🔗 需要我帮您创建GitHub仓库和构建配置吗？
    echo.
) else if "%choice%"=="3" (
    echo.
    echo 📦 正在准备便携版工具包下载...
    echo.
    echo ⚠️  注意：便携版可能不够稳定
    echo 📥 建议下载：
    echo    - OpenJDK 11: https://adoptium.net/
    echo    - Gradle 7.0+: https://gradle.org/releases/
    echo    - Android SDK: https://developer.android.com/studio#command-tools
    echo.
) else if "%choice%"=="4" (
    echo.
    echo 📚 正在打开详细安装教程...
    start 构建APK指南.md
    echo.
    echo ✅ 教程已打开！
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
echo 💡 如果您选择Android Studio：
echo    - 下载约1GB，安装约10-15分钟
echo    - 首次打开项目需要下载依赖（约5-10分钟）
echo    - 构建APK约2-5分钟
echo.
echo 💡 如果您选择在线构建：
echo    - 无需下载任何软件
echo    - 上传代码后自动构建
echo    - 约10-15分钟获得APK
echo.

echo 按任意键退出...
pause >nul
