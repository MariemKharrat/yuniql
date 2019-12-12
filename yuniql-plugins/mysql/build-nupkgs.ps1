param(
    [string]$version,
    [string]$apiKey
)

dotnet pack ./src/Yuniql.MySql.csproj -p:packageversion=$version -c release -o nupkgs
dotnet nuget push ./nupkgs/Yuniql.MySql.$version.nupkg -k $apiKey -s https://api.nuget.org/v3/index.json
