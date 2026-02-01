@echo off
echo 🧹 正在清理 STM32 项目编译产物和临时文件...

:: 1. 删除编译构建目录
if exist "build" (
    rmdir /s /q "build"
    echo ✅ 已删除 build/ 目录
)

:: 2. 删除其他临时文件和目录
if exist "bin" (
    rmdir /s /q "bin"
    echo ✅ 已删除 bin/ 目录
)
if exist "obj" (
    rmdir /s /q "obj"
    echo ✅ 已删除 obj/ 目录
)
if exist ".cache" (
    rmdir /s /q ".cache"
    echo ✅ 已删除 .cache/ 目录
)

:: 3. 删除编译生成的二进制文件
del /f /q "*.elf" 2>nul
del /f /q "*.hex" 2>nul
del /f /q "*.bin" 2>nul
del /f /q "*.map" 2>nul
del /f /q "*.lst" 2>nul
echo ✅ 已删除所有编译二进制文件

:: 4. 删除 VS Code 临时缓存
if exist ".vscode/ipch" (
    rmdir /s /q ".vscode/ipch"
    echo ✅ 已删除 .vscode/ipch/ 缓存
)

echo 🎉 清理完成！
pause