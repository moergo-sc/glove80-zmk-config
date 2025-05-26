@echo off

setlocal enabledelayedexpansion

set IMAGE=glove80-zmk-config-docker

:: Set branch name from first parameter, default to main if not provided
if "%~1"=="" (
	set BRANCH=main
) else (
	set BRANCH=%~1
)

:: Build Docker image
docker build -t "%IMAGE%" .

:: Run Docker container
docker run --rm -v "%cd%:/config" -e UID=0 -e GID=0 -e BRANCH="%BRANCH%" "%IMAGE%"

endlocal
