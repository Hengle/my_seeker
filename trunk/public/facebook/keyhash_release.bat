echo -----------KEY HASH ����-----------  
echo=  
echo=  
echo  ��ǰ����·��Ϊ��%cd%  
echo -----------copy fotoyehan.keystore �� jdk��------------
rem ����Ŀ¼ /s /e /y ˵�����ڸ����ļ���ͬʱҲ���ƿ�Ŀ¼����Ŀ¼�����Ŀ��·���Ѿ�����ͬ�ļ��ˣ�ʹ�ø��Ƿ�ʽ����������ʾ  
Xcopy D:\work\seeker\keystore\fotoyehan.keystore "D:\Program Files\Java\jdk1.8.0_161\bin" /s /e /y /i
rem CD�л���ͬ�̷�ʱ����Ҫ����/d  
CD /D D:\  
CD D:\Program Files\Java\jdk1.8.0_161\bin
echo  ��ǰ����·��Ϊ��%cd%  
echo -------------����fotoyehan.txt �� openssl\bin�� �������� fotoyehan ----------
keytool -exportcert -alias yehan -keystore fotoyehan.keystore > D:\openssl-0.9.8k_X64\bin\fotoyehan.txt 
echo -------------fotoyehan.txt�������-----------------------  
CD D:\openssl-0.9.8k_X64\bin
echo  ��ǰ����·��Ϊ��%cd% 
echo -------------����fotoyehan_sha.txt-----------------------
openssl sha1 -binary fotoyehan.txt >fotoyehan_sha.txt
echo -------------fotoyehan_sha.txt�������-----------------------  

echo -------------����fotoyehan_base64.txt-----------------------
openssl base64 -in fotoyehan_sha.txt >fotoyehan_base64.txt
echo -------------fotoyehan_base64.txt�������-----------------------  

echo ����

PAUSE