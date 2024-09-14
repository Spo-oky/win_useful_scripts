# Define the input and output directories
$inputDir = "C:\path\to\your\input\directory"
$outputDir = "C:\path\to\your\output\directory"

# Define the location of ffmpeg.exe (replace this with your actual ffmpeg path)
$ffmpegPath = "C:\path\to\ffmpeg\bin\ffmpeg.exe"
$outputExtension = ".mp3"

# Ensure the output directory exists
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir
}

# List all files in the directory (change "*.mp4" to match your file format)
Get-ChildItem -Path $inputDir -Filter "*.mp4" | ForEach-Object {
    $inputFile = $_.FullName
    $outputFile = [System.IO.Path]::Combine($outputDir, ($_.BaseName + $outputExtension))

    # FFmpeg command to extract audio without re-encoding
    Start-Process -Wait -NoNewWindow -FilePath $ffmpegPath -ArgumentList "-i `"$inputFile`" -vn -acodec copy `"$outputFile`""
}
