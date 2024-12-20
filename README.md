# win_useful_scripts
Some Windows useful scripts

## Open Explorer n Resize V2.ps1

This script opens multiple Explorer Windows and resize and position.

Change this array for your needs:

```
$windows = @(
    @{Location="C:\"; Top=0; Left=100; Width=800; Height=600},
    @{Location="D:\"; Top=200; Left=300; Width=800; Height=600},
    @{Location="E:\"; Top=300; Left=500; Width=800; Height=600}
)
```

As example of the first item of the array, it opens a Explorer Window on "C:\" at pixel position of TOP 0, Left 100px and with WIDTH of 800px, HEIGHT of 600px.
Can be added more Explorer Windows to the array and arranged as your wish.

#### For more detail see my website:
![image](https://flagcdn.com/16x12/pt.png) [https://sos-admins.com/programacao/scripts/multiplas-janelas-do-explorador-com-posicionamento-e-tamanho/](https://sos-admins.com/programacao/scripts/multiplas-janelas-do-explorador-com-posicionamento-e-tamanho/) \
![image](https://flagcdn.com/16x12/gb.png) [https://en.sos-admins.com/programming/scripts-programming/automatically-open-multiple-file-explorer-windows-with-custom-positions-and-sizes/](https://en.sos-admins.com/programming/scripts-programming/automatically-open-multiple-file-explorer-windows-with-custom-positions-and-sizes/)

## Delete recursive in MS Teams.ps1

This script helps delete all files in a Teams folder. Doing this in Teams is tedious if you have multiple folders and files, it have to be deleted page by page.
With this script you can delete all folder in one time.

As example, this deletes the folder **test** inside **Documents**
```
$SiteURL = "https://sos-admins.sharepoint.com/personal/spo_oky_sos-admins_com" 
$FolderSiteRelativeURL = "/personal/spo_oky_sos-admins_com/Documents/test"
```

#### For more detail see my website:
![image](https://flagcdn.com/16x12/pt.png) [https://sos-admins.com/programacao/scripts/multiplas-janelas-do-explorador-com-posicionamento-e-tamanho/](https://sos-admins.com/programacao/scripts/apagar-arquivos-pastas-recursivamente-teams/)

## /audio/Extract Audio from videos.ps1

This is a script to extract audio from videos in a directory without encoding and using ffmpeg

just need to change the variables to your need

```
$inputDir = "C:\path\to\your\input\directory"
$outputDir = "C:\path\to\your\output\directory"
....
$ffmpegPath = "C:\path\to\ffmpeg\bin\ffmpeg.exe"
$outputExtension = ".mp3"
```

#### For more detail see my website:
![image](https://flagcdn.com/16x12/pt.png) [https://sos-admins.com/programacao/scripts/extrair-audio-de-videos-com-ffmpeg/](https://sos-admins.com/programacao/scripts/extrair-audio-de-videos-com-ffmpeg/) \
![image](https://flagcdn.com/16x12/gb.png) [https://en.sos-admins.com/programming/scripts-programming/extracting-audio-from-videos-without-encoding-using-ffmpeg-in-powershell/](https://en.sos-admins.com/programming/scripts-programming/extracting-audio-from-videos-without-encoding-using-ffmpeg-in-powershell/)


please buy me a coffee:

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://paypal.me/AMLGaspar)
