FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /source

COPY . .

RUN dotnet build
ENTRYPOINT ["dotnet", "HelloDocker/bin/Debug/net5.0/HelloDocker.dll"]
