pushd C:\arkserver\ShooterGame\Saved\Config\WindowsServer\
git reset --hard HEAD
git checkout au-ragnarok
git pull
powershell .\SetPassword.ps1 C:\au-password.txt
popd

start "Asgaard Untamed" /normal "C:\arkserver\ShooterGame\Binaries\Win64\ShooterGameServer.exe" Ragnarok?listen?Port=7777?QueryPort=27015?MaxPlayers=100?bRawSockets?AllowCrateSpawnsOnTopOfStructures=True -UseBattlEye -NotifyAdminCommandsInChat -nomansky -useallavailablecores -usecache -nosteamclient -game -server -log