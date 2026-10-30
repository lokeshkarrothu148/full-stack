@echo off
echo ====================================================================
echo  CollegeHub: Push Assignment-2-Individual-Project to GitHub
echo  Repository: https://github.com/lokeshkarrothu148/full-stack.git
echo ====================================================================
echo.

:: 1. Check if Git is installed
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Git is not installed or not in your system PATH.
    echo Please download and install Git for Windows from: https://git-scm.com/download/win
    echo After installation, reopen this terminal and rerun this script.
    pause
    exit /b 1
)

echo [1/5] Initializing Git repository...
if not exist ".git" (
    git init
)

echo [2/5] Configuring Git remote origin...
git remote remove origin >nul 2>nul
git remote add origin https://github.com/lokeshkarrothu148/full-stack.git
git remote -v

echo [3/5] Staging Assignment-2-Individual-Project files...
git add Assignment-2-Individual-Project
git add README.md package.json database.sql server.js config middleware routes public uploads

echo [4/5] Creating commit...
git commit -m "Add Assignment-2-Individual-Project: CollegeHub - Smart College Management System"

echo [5/5] Pushing to GitHub (main branch)...
git branch -M main
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ====================================================================
    echo [SUCCESS] Code successfully pushed to:
    echo https://github.com/lokeshkarrothu148/full-stack.git
    echo ====================================================================
) else (
    echo.
    echo [NOTICE] If prompted for authentication, enter your GitHub Username
    echo and Personal Access Token (PAT) as the password.
)

pause

