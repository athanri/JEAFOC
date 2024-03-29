@echo off

set /a counter=0

for %%f in (*.jpg) do (
	"C:\Program Files\libwebp-1.3.2\bincwebp.exe" -q 80 %%f -o %%~nf.webp
	set /A counter=counter+1
)

echo ************************************
echo %counter% files have been processed.
echo ************************************