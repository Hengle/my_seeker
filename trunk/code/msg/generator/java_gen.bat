@echo off


::Java������·��
set JAVA_COMPILER_PATH=protoc.exe
::Java�ļ�����·��, ���Ҫ����\������
set JAVA_TARGET_PATH=../java_proto

::ɾ��֮ǰ�������ļ�

del /f /s /q %JAVA_TARGET_PATH%\*.* 

::���������ļ�
for /f "delims=" %%i in ('dir /b "../proto/*.proto"') do ( 
    ::���� Java ����
    echo %JAVA_COMPILER_PATH%  --proto_path=../proto/ --java_out=%JAVA_TARGET_PATH% %%i
    %JAVA_COMPILER_PATH% --proto_path=../proto/ --java_out=%JAVA_TARGET_PATH% %%i
    
)

echo Э��������ϡ�

pause