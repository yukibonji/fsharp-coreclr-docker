FROM microsoft/dotnet:core

RUN mkdir -p /dotnet-app
COPY ./dist /dotnet-app
WORKDIR /dotnet-app

EXPOSE 5000

ENTRYPOINT ["dotnet", "dotnet-app.dll"]
