FROM mcr.microsoft.com/dotnet/core/sdk
COPY WebAPIExample/bin/Debug/netcoreapp2.1/publish .
EXPOSE 5678
ENTRYPOINT ["dotnet","WebAPIExample.dll","--urls=http://*:5678"]