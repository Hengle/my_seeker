echo -----------KEY HASH ����-----------  
echo=  
echo=  
echo  ��ǰ����·��Ϊ��%cd%  
echo -----------copy debug.keystore �� jdk��------------
rem ����Ŀ¼ /s /e /y ˵�����ڸ����ļ���ͬʱҲ���ƿ�Ŀ¼����Ŀ¼�����Ŀ��·���Ѿ�����ͬ�ļ��ˣ�ʹ�ø��Ƿ�ʽ����������ʾ  
Xcopy D:\Android_SDK\.android\debug.keystore D:\Program Files\Java\jdk1.8.0_161\bin  /s /e /y  
rem CD�л���ͬ�̷�ʱ����Ҫ����/d  
CD /D D:\  
CD D:\Program Files\Java\jdk1.8.0_161\bin
echo  ��ǰ����·��Ϊ��%cd%  
echo -------------����debug.txt �� openssl\bin�� �������� android ----------
keytool -exportcert -alias androiddebugkey -keystore debug.keystore > D:\openssl-0.9.8k_X64\bin\debug.txt 
echo -------------debug.txt�������-----------------------  
CD D:\openssl-0.9.8k_X64\bin
echo  ��ǰ����·��Ϊ��%cd% 
echo -------------����debug_sha.txt-----------------------
openssl sha1 -binary debug.txt >debug_sha.txt
echo -------------debug_sha.txt�������-----------------------  

echo -------------����debug_base64.txt-----------------------
openssl base64 -in debug_sha.txt >debug_base64.txt
echo -------------debug_base64.txt�������-----------------------  

echo ����

PAUSE