@echo off
chcp 65001 >nul
echo ========================================
echo 抖音推流助手 APK 构建脚本
echo ========================================
echo.

echo 正在检查环境...
where gradle >nul 2>nul
if %errorlevel% neq 0 (
    echo 错误: 未找到 Gradle，请先安装 Android Studio 或配置 Gradle 环境变量
    pause
    exit /b 1
)

echo 正在检查 Java 环境...
where java >nul 2>nul
if %errorlevel% neq 0 (
    echo 错误: 未找到 Java，请先安装 JDK 并配置环境变量
    pause
    exit /b 1
)

echo 环境检查完成！
echo.

echo 正在清理项目...
cd android
gradle clean
if %errorlevel% neq 0 (
    echo 错误: 清理项目失败
    pause
    exit /b 1
)

echo 正在构建 Debug APK...
gradle assembleDebug
if %errorlevel% neq 0 (
    echo 错误: 构建 Debug APK 失败
    pause
    exit /b 1
)

echo 正在构建 Release APK...
gradle assembleRelease
if %errorlevel% neq 0 (
    echo 错误: 构建 Release APK 失败
    pause
    exit /b 1
)

echo.
echo ========================================
echo 构建完成！
echo ========================================
echo.
echo Debug APK 位置: android/app/build/outputs/apk/debug/app-debug.apk
echo Release APK 位置: android/app/build/outputs/apk/release/app-release.apk
echo.

echo 是否要安装到连接的设备？(Y/N)
set /p choice=
if /i "%choice%"=="Y" (
    echo 正在查找连接的设备...
    adb devices
    echo.
    echo 正在安装 Debug APK...
    adb install -r android/app/build/outputs/apk/debug/app-debug.apk
    if %errorlevel% equ 0 (
        echo 安装成功！
    ) else (
        echo 安装失败，请检查设备连接
    )
)

echo.
echo 构建脚本执行完成！
pause

