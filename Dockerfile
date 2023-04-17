# create aspnet source image
FROM microsoft/dotnet:2.1-sdk AS build-env

# set working directory
WORKDIR /app

# copy all my files into the working directory
COPY . ./

# restore all the packages
RUN dotnet restore

# publish the app
RUN dotnet publish -c Release -o out

# expose container network
EXPOSE 80

# create runtime image
FROM microsoft/dotnet:2.1-aspnetcore-runtime
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "MyWebApp.dll"]




