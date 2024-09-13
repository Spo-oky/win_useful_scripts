Add-Type @"
    using System;
    using System.Runtime.InteropServices;
    public class Win {
        [DllImport("user32.dll", SetLastError = true)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool MoveWindow(IntPtr hWnd, int X, int Y, int nWidth, int nHeight, bool bRepaint);

        [DllImport("user32.dll", SetLastError = true)]
        public static extern IntPtr GetWindowThreadProcessId(IntPtr hWnd, out uint processId);
    }
"@

# Define the array with folder locations and window properties (Top, Left, Width, Height)
$windows = @(
    @{Location="C:\"; Top=0; Left=100; Width=800; Height=600},
    @{Location="D:\"; Top=200; Left=300; Width=800; Height=600},
    @{Location="E:\"; Top=300; Left=500; Width=800; Height=600}
)

# Create the Shell.Application COM object
$shell = New-Object -ComObject Shell.Application

# Loop through each location and its window properties
foreach ($window in $windows) {
    # Open the folder
    $shell.Open($window.Location)

    # Wait briefly to ensure the window has opened
    Start-Sleep -Seconds 2

    # Get the collection of open windows from the Shell.Application object
    $openWindows = $shell.Windows()

    # Loop through each open window and check for the correct folder path
    foreach ($explorerWindow in $openWindows) {
        try {
            if ($explorerWindow.Document.Folder.Self.Path -eq $window.Location) {
                # Get the handle (hWnd) of the Explorer window
                $hWnd = $explorerWindow.HWND

                # Move and resize the window
                [Win]::MoveWindow($hWnd, $window.Left, $window.Top, $window.Width, $window.Height, $true)
                Write-Host "Moved window for $($window.Location) to position [$($window.Left), $($window.Top)] with size [$($window.Width)x$($window.Height)]"
                break
            }
        } catch {
            # If there's an error accessing the Document or Folder, skip this window
            Write-Host "Error accessing window for $($window.Location). Skipping..."
        }
    }
}
