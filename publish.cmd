rmdir dist /s /q
for /f %%i in ('docker create dotnet-dev') do set DOTNETDEVID=%%id
SET DOTNETDEVID=%DOTNETDEVID:~0,12%
docker cp %DOTNETDEVID%:/compiled-app dist/
docker rm -v %DOTNETDEVID%

docker build -f Dockerfile -t dotnet-app .
