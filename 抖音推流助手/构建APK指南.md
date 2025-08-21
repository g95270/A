# 抖音推流助手 APK 构建指南

## 方案1：使用Android Studio（推荐）

### 1. 下载并安装Android Studio
- 访问：https://developer.android.com/studio
- 下载最新版本的Android Studio
- 安装时选择"Standard"安装模式

### 2. 打开项目
- 启动Android Studio
- 选择"Open an existing Android Studio project"
- 导航到项目目录：`C:\Users\Administrator\Desktop\抖音推流助手\android`
- 等待项目同步完成

### 3. 构建APK
- 点击菜单：Build → Build Bundle(s) / APK(s) → Build APK(s)
- 或者使用快捷键：Ctrl + F9
- 等待构建完成

### 4. 找到生成的APK
- 构建完成后，APK文件位于：
  `android/app/build/outputs/apk/debug/app-debug.apk`

## 方案2：使用命令行工具

### 1. 安装Java JDK
- 下载OpenJDK 11或更高版本
- 设置JAVA_HOME环境变量

### 2. 安装Gradle
- 下载Gradle 7.0或更高版本
- 设置GRADLE_HOME环境变量
- 将gradle/bin添加到PATH

### 3. 构建命令
```bash
cd android
gradle assembleDebug
```

## 方案3：使用在线构建服务

### 1. GitHub Actions
- 将项目推送到GitHub
- 创建.github/workflows/build.yml工作流
- 自动构建APK

### 2. 第三方构建服务
- Appetize.io
- Bitrise
- CircleCI

## 当前项目状态

✅ 已完成：
- Android项目结构
- Java源代码文件
- 布局和资源文件
- Gradle配置文件
- 构建脚本

❌ 需要安装：
- Java JDK 11+
- Gradle 7.0+
- Android SDK

## 快速开始

如果您想立即开始构建，建议：

1. **下载Android Studio**（约1GB）
2. **打开项目**：`抖音推流助手/android`
3. **等待同步**：首次打开可能需要几分钟
4. **点击构建**：Build → Build APK(s)

## 注意事项

- 首次构建可能需要下载依赖，请确保网络连接稳定
- 构建时间取决于电脑性能，通常需要2-10分钟
- 生成的APK可以直接安装到Android设备上测试

## 技术支持

如果遇到构建问题，请检查：
1. Java版本是否兼容
2. Gradle版本是否支持
3. Android SDK是否正确安装
4. 网络连接是否正常

