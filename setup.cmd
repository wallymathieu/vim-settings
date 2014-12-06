@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
@if not exist "%HOME%" @set HOME=%USERPROFILE%
@set APP_DIR=%CD%


call mklink "%HOME%\.vimrc" "%APP_DIR%\vimrc"
call mklink "%HOME%\_vimrc" "%APP_DIR%\vimrc"

call mklink /J "%HOME%\.vim" "%APP_DIR%\vim"

call mklink "%APP_DIR%\vim\autoload\pathogen.vim" "%APP_DIR%\vim-pathogen\autoload\pathogen.vim"


