FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
COPY WebAPIExample/bin/Debug/netcoreapp2.1/publish .
EXPOSE 5678
ENTRYPOINT ["dotnet","WebAPIExample.dll","--urls=http://*:5678"]
#WORKDIR /src/WebApiTest
#COPY bin/release/netcoreapp2.1/publish/ /src/WebApiTest
#ENTRYPOINT ["dotnet", "WebApi.dll"]