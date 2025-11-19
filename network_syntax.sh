# 프로세스 목록조회
ps -ef 
ps -ef | grep "nginx"

# 패키지관련
# yum-레드헷계열 패키지관련도구 , apt-데비안계열 패키지관리도구
# 패키지 목록 최신화 
sudo apt update
# nginx 등 프로그램 설치
sudo apt install nginx
# 프로세스 실행관리 도구 : systemctl
sudo systemctl start nginx
sudo systemctl stop nginx
# 프로세스 강제종료
sudo kill -9 PID(프로세스ID) ps -ef 에서 번호 찾아서 넣기


# 특정 도메인의 ip 주소 정보 조회 : DNS 서버에 문의
nslookup google.com   (www.은 쓰면안됨)

# 로컬 ip 정보 조회 
ifcocnfig

# 네트워크연결상태 조회
# 일반적으로 ping은 보안사 막아두고 있음.
ping ip주소
ex) ping 8.8.8.8

# ip와 포트를 이용해, 특정 서버의 특정 프로그램의 통신상태까지 확인가능하다.
# 일반적으로 telnet은 막혀있고 , 사용하기를 권장하지 않음
telnet ip주소 포트번호
nc -zv ip주소(또는 도메인) 포트번호

#원격접속
ssh 계정명@도메인주소(또는 ip주소)

#원격파일전송 22 port opne
scp 전송하고자하는파일 원격지주소