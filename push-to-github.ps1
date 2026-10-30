# ====================================================================
# PowerShell Automation: Push Assignment-2-Individual-Project to GitHub
# Target: https://github.com/lokeshkarrothu148/full-stack.git
# ====================================================================

Write-Host "====================================================================" -ForegroundColor Cyan
Write-Host " CollegeHub: Push Assignment-2-Individual-Project to GitHub" -ForegroundColor Cyan
Write-Host " Repository: https://github.com/lokeshkarrothu148/full-stack.git" -ForegroundColor Cyan
Write-Host "====================================================================" -ForegroundColor Cyan

# 1. Check if Git is available
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "`n[ERROR] Git command not found in your system PATH." -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "Or install via winget in PowerShell: winget install --id Git.Git -e --source winget" -ForegroundColor Yellow
    Exit 1
}

# 2. Initialize Git if needed
if (-not (Test-Path ".git")) {
    Write-Host "`n[1/5] Initializing local Git repository..." -ForegroundColor Green
    git init
}

# 3. Configure Remote URL
Write-Host "`n[2/5] Setting remote origin to https://github.com/lokeshkarrothu148/full-stack.git..." -ForegroundColor Green
git remote remove origin 2>$null
git remote add origin https://github.com/lokeshkarrothu148/full-stack.git
git remote -v

# 4. Stage Files
Write-Host "`n[3/5] Staging Assignment-2-Individual-Project files..." -ForegroundColor Green
git add Assignment-2-Individual-Project
git add README.md package.json database.sql server.js config middleware routes public uploads

# 5. Commit
Write-Host "`n[4/5] Committing changes..." -ForegroundColor Green
git commit -m "Add Assignment-2-Individual-Project: CollegeHub - Smart College Management System"

# 6. Push to main branch
Write-Host "`n[5/5] Pushing to GitHub (main branch)..." -ForegroundColor Green
git branch -M main

# Pull with rebase first in case remote has existing commits (e.g. initial README)
git pull origin main --rebase --allow-unrelated-histories 2>$null

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n====================================================================" -ForegroundColor Green
    Write-Host " [SUCCESS] Pushed to https://github.com/lokeshkarrothu148/full-stack.git" -ForegroundColor Green
    Write-Host "====================================================================" -ForegroundColor Green
} else {
    Write-Host "`n[NOTE] If git requested authentication, provide your GitHub Personal Access Token (PAT) as password." -ForegroundColor Yellow
}

