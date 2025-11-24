# --------------------------------- LƯU Ý ------------------------------------------------------------
# để lấy đường dẫn file zip thì vào folder chứa file zip mở CMD kéo thẳng file vào CMD sẽ hiện đường dẫn đầy đủ của file zip
# để lấy đường dẫn folder thì sau khi giải nén xong thì mở folder vừa giải nén và copy đường dẫn
# Nếu bị lỗi unauthorized access thì chạy lệnh này 'Set-ExecutionPolicy RemoteSigned -Scope CurrentUser'





# link đến file zip hoặc link folder sau khi giải nén filezip(vào bên trong folder rồi copy link)
# param(
#     [string]$FilePath,
#     [string]$FTU,
#     [string]$FCD
# )
$FilePath="C:\Users\shibe\Desktop\test_cp\USWPM48PT01-giet-tool\USWPM48PT01_109pcs_2643013075_log"

if (Test-Path $FilePath -PathType Container) {
    & .\log_no_zip.ps1 -LOG_DIR $FilePath
}
elseif (Test-Path $FilePath -PathType Leaf) {
    & .\log_zip.ps1 -zipFile $FilePath
}
else {
    Write-Host "Path khong ton tai. Vui long kiem tra lai!" -ForegroundColor Red
    exit
}



