#!/usr/bin/env bash
dotnet restore
if [[ $1 == "release" ]]; then
    rm -r bin/Release/net5.0/publish
    dotnet build -c Release -p:DebugType=none
    dotnet publish -c Release -p:DebugType=none
    cd bin/Release/net5.0/publish
else
    rm -r bin/Debug/net5.0/publish
    dotnet build
    dotnet publish
    cd bin/Debug/net5.0/publish
fi
mkdir plugins
mkdir libraries
rm Impostor.Api.dll ImpostorCord.deps.json ImpostorCord.pdb
mv ImpostorCord.dll plugins/
mv *.dll libraries
