@echo off

IF EXIST "%USERPROFILE%\anaconda3\Scripts\activate.bat" (
    CALL "%USERPROFILE%\anaconda3\Scripts\activate.bat"
    CALL conda activate calliope-thesis-env

) ELSE IF EXIST "%USERPROFILE%\anaconda3\condabin\conda.bat" (
    CALL "%USERPROFILE%\anaconda3\condabin\conda.bat" activate calliope-thesis-env

) ELSE IF EXIST "%USERPROFILE%\AppData\Local\anaconda3\condabin\conda.bat" (
    CALL "%USERPROFILE%\AppData\Local\anaconda3\condabin\conda.bat" activate calliope-thesis-env

) ELSE IF EXIST "%USERPROFILE%\AppData\Local\anaconda3\Library\bin\conda.bat" (
    CALL "%USERPROFILE%\AppData\Local\anaconda3\Library\bin\conda.bat" activate calliope-thesis-env

) ELSE (
    echo Could not find Anaconda/Conda activation file.
    echo Checked common user-level Anaconda paths.
    pause
    exit /b 1
)

echo Saving results in outputs folder

IF NOT EXIST outputs mkdir outputs

echo Running without_transformer scenario...
calliope run model.yaml --scenario=without_transformer --save_netcdf="outputs\without_transformer.nc"

echo Running with_transformer scenario...
calliope run model.yaml --scenario=with_transformer --save_netcdf="outputs\with_transformer.nc"

echo Running grid_only scenario...
calliope run model.yaml --scenario=grid_only --save_netcdf="outputs\grid_only.nc"

echo All scenarios completed!
pause