FROM microsoft/dotnet:core

RUN mkdir -p /dotnet-app
COPY ./dist /dotnet-app
WORKDIR /dotnet-app

ENTRYPOINT ["dotnet", "dotnet-app.dll"]
