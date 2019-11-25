#/bin/bash
wd=$(pwd)

# Restore
cd $wd/Library/
dotnet restore
cd $wd/Web/
dotnet restore
cd $wd/console/
dotnet restore
cd $wd/Api/
dotnet restore

# Build
cd $wd/Library/
dotnet build
cd $wd/Web/
dotnet build
cd $wd/console/
dotnet build
cd $wd/Api/
dotnet build

# Publish Web
cd $wd/Web/
dotnet publish -c Release -o ./bin/