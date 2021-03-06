@echo off
if "%1"=="" (
  echo Please provide the path to the application archive.
) else (
  echo Creating Config Server...
  cf create-service -c '{ "git": { "uri": "https://github.com/rbagadhi/config", "label": "master"  } }' p-config-server standard config-server > nul
  :check
    cf service config-server | find "succeeded" > nul
    if errorlevel 1 goto :check
    echo Config Server created. Pushing application.
    cf push -p %1
)
