@echo off

CALL "%USERPROFILE%\anaconda3\Scripts\activate.bat"
CALL conda activate calliope-thesis-env

echo Saving results in outputs folder

echo Running without_transformer scenario...
calliope run model.yaml --scenario=without_transformer --save_netcdf="outputs\without_transformer.nc"

echo Running with_transformer scenario...
calliope run model.yaml --scenario=with_transformer --save_netcdf="outputs\with_transformer.nc"

echo All scenarios completed!
pause
