$filePath = "C:\Users\shibe\Desktop\test_cp\UXGFIBERT01_86pcs_2643011691_log\PASS\FT1\PASS_1C0B8B1EA940_UXGFIBERT01_FT1_UXGFIBEFT102_20250719052722_2643011691.log"
$content = Get-Content -Path $filePath -Raw

$pattern = "FTU version *: *(FTU_.*)"
$FTU = "" 

if ($content -match $pattern) {
    $FTU = $matches[1].Trim() 
    Write-Host "Đã tìm thấy: $FTU"
    Write-Host $matches.ToString()
} else {
    Write-Output "No match found"
}

Write-Host "---------$FTU-----------"