@echo off
REM Set relative path to the workspace folder
set WORKSPACE_FOLDER=%cd%\workspace

REM Build the Docker image
docker build -t cc3-env .

REM Create the container and bind the workspace folder
docker create -it --name cc3-vm -e DISPLAY=host.docker.internal:0.0 -v "%WORKSPACE_FOLDER%:/workspace" cc3-env
