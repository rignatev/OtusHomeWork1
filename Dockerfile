FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY . .

RUN dotnet build -c release -o /src/build

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 8000
COPY --from=build /src/build .
CMD dotnet OtusHomeWork1.dll

