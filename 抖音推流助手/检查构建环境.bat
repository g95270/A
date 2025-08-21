@echo off
chcp 65001 >nul
echo ========================================
echo 抖音推流助手 APK 构建环境检查
echo ========================================
echo.

echo 正在检查Java环境...
java -version >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ Java已安装
    java -version
) else (
    echo ❌ Java未安装
    echo 请下载并安装OpenJDK 11或更高版本
    echo 下载地址：https://adoptium.net/
    echo.
)

echo.
echo 正在检查Gradle环境...
gradle -version >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ Gradle已安装
    gradle -version
) else (
    echo ❌ Gradle未安装
    echo 请下载并安装Gradle 7.0或更高版本
    echo 下载地址：https://gradle.org/releases/
    echo.
)

echo.
echo 正在检查Android SDK...
if exist "%ANDROID_HOME%" (
    echo ✅ Android SDK已安装
    echo 路径：%ANDROID_HOME%
) else (
    echo ❌ Android SDK未安装
    echo 建议安装Android Studio，它会自动安装Android SDK
    echo 下载地址：https://developer.android.com/studio
    echo.
)

echo.
echo ========================================
echo 推荐解决方案
echo ========================================
echo.
echo 🚀 最简单的方法：安装Android Studio
echo 1. 下载Android Studio（约1GB）
echo 2. 安装时选择"Standard"模式
echo 3. 打开项目：抖音推流助手\android
echo 4. 等待同步完成后点击Build → Build APK(s)
echo.
echo 📱 生成的APK将位于：
echo android\app\build\outputs\apk\debug\app-debug.apk
echo.
echo 按任意键退出...
pause >nul

