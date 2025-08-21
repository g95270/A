Write-Host "========================================" -ForegroundColor Cyan
Write-Host "抖音推流助手 APK 构建环境检查" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "正在检查Java环境..." -ForegroundColor Yellow
try {
    $javaVersion = & java -version 2>&1
    Write-Host "✅ Java已安装" -ForegroundColor Green
    Write-Host $javaVersion -ForegroundColor Gray
} catch {
    Write-Host "❌ Java未安装" -ForegroundColor Red
    Write-Host "请下载并安装OpenJDK 11或更高版本" -ForegroundColor Yellow
    Write-Host "下载地址：https://adoptium.net/" -ForegroundColor Blue
}

Write-Host ""
Write-Host "正在检查Gradle环境..." -ForegroundColor Yellow
try {
    $gradleVersion = & gradle -version 2>&1
    Write-Host "✅ Gradle已安装" -ForegroundColor Green
    Write-Host $gradleVersion -ForegroundColor Gray
} catch {
    Write-Host "❌ Gradle未安装" -ForegroundColor Red
    Write-Host "请下载并安装Gradle 7.0或更高版本" -ForegroundColor Yellow
    Write-Host "下载地址：https://gradle.org/releases/" -ForegroundColor Blue
}

Write-Host ""
Write-Host "正在检查Android SDK..." -ForegroundColor Yellow
if ($env:ANDROID_HOME) {
    Write-Host "✅ Android SDK已安装" -ForegroundColor Green
    Write-Host "路径：$env:ANDROID_HOME" -ForegroundColor Gray
} else {
    Write-Host "❌ Android SDK未安装" -ForegroundColor Red
    Write-Host "建议安装Android Studio，它会自动安装Android SDK" -ForegroundColor Yellow
    Write-Host "下载地址：https://developer.android.com/studio" -ForegroundColor Blue
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "推荐解决方案" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "🚀 最简单的方法：安装Android Studio" -ForegroundColor Green
Write-Host "1. 下载Android Studio（约1GB）" -ForegroundColor White
Write-Host "2. 安装时选择'Standard'模式" -ForegroundColor White
Write-Host "3. 打开项目：抖音推流助手\android" -ForegroundColor White
Write-Host "4. 等待同步完成后点击Build → Build APK(s)" -ForegroundColor White
Write-Host ""
Write-Host "📱 生成的APK将位于：" -ForegroundColor Green
Write-Host "android\app\build\outputs\apk\debug\app-debug.apk" -ForegroundColor Gray
Write-Host ""
Write-Host "按任意键退出..." -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
