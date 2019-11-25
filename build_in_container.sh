#/bin/bash

# http://www.hanselman.com/blog/ExploringASPNETCoreWithDockerInBothLinuxAndWindowsContainers.aspx
# https://blogs.msdn.microsoft.com/stevelasker/2016/09/29/building-optimized-docker-images-with-asp-net-core/

# DEBUG

# Build the current directory and push it to ./bin/Release/PublishOutput
docker run -it -v `pwd`:/sln --workdir /sln microsoft/aspnetcore-build sh build.sh

# Run the container with the output mounted.
docker run -it -p 8080:80 -v `pwd`/Web:/app:ro --workdir /app microsoft/aspnetcore bash -c "dotnet bin/Web.dll"
