FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /source

COPY . .

RUN dotnet build

ENV ASPNETCORE_URLS=http://+:80  
EXPOSE 80

ENTRYPOINT ["dotnet", "HelloDocker/bin/Debug/net5.0/HelloDocker.dll"]



#Build image and run container 

# docker build -t hello-docker .
# docker run -it --rm -p 5000:80 --name hello-dotnet-container hello-docker
