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
