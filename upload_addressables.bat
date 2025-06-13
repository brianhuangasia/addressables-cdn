@echo off
cd /d %~dp0

:: Step 1: 切换大小写敏感
git config core.ignorecase false

:: Step 2: 添加文件（包括修改、删除）
git add -A

:: Step 3: 提交更新
git commit -m "更新 Addressables CDN 内容"

:: Step 4: 推送到远程 gh-pages 分支
git push origin gh-pages

pause