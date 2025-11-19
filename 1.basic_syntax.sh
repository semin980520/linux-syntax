1.basic _ syntax.sh
# 현재 위치 경로를 출력
PWD
# 현재위치에서 파일 및 폴더 목록 조회
ls

#목록조회 자세히
ls -l

# 목록조회 자세히, 숨김파일까지
ls -al

# 목록조회 자세히, 숨김파일까지, 오래된순정렬
la -alrt

# 디렉토리 생성
mkdir semin_dir

# 특정 디렉토리로 이동
cd semin_dir

#상위 데릭토리로 이동
cd .. , cd ../

#루트 디렉토리로(최상위 디렉토리) 이동
cd /

# 직전폴더로 이동(뒤로가기)
cd -

# 홈경로(/home/본인계정폴더)로 이동
cd

# 상대경로와 절대경로
# 상대경로 : cd ../../../ (한번에 이동하여 쓸 수 있음)
# 절대경로 : cd /home

# 파일내용을 터미널창에 출력하기
cat first_file.txt

# 파일내용 편집기로 열기 : nano, vi
nano first_file.txt
vi first_file.txt

# 상위 10줄 출력하기(위에서 10개)
head 파일명 

# 하위 10줄 출력하기(아래서 10개)
tail 파일명


# 하위 n줄 출력하기
tail -숫자 파일명

# 파일내용 실시간 조회
tail -f 파일명

# 도스키(방향키) 위/우래를 통해 이전명령어 조회 가능
# history를 통해 이전 실행한 명령어 모두 조회 가능
# clear를 통해 터미널창에 보이는 명령어 내역 모두 지우기
# ctrl+c 를 통해 입력중인 명령어 취소 

# 파일삭제 명령어 . -f 옵션을 통해 묻지않고 삭제
rm 파일명 touch

# 폴더째 삭제
rm -r 폴더명 mkdir

# 터미널창에 입력한 문자열을 출력
echo "holle world"

# echo를 통해 파일에 내용 입력이 가능
# > : 덮어쓰기 , >> : 추가모드
echo "holle world" > second_file.txt

# 복사명령어(폴더 복사시는 -r 옵션)
# cp 복사대상 복사 될 파일명
cp first_file.txt first_file_copy.txt

# 파일이동 명령어 
mv 이동대상파일 경로/이동 될 파일명
# 현재폴더에서 파일명 변경
mv second_file.txt ./third_file.txt
# 상위폴더로 파일이동
mv second_file.txt ../

# grep : 파일 내에서 문자열 찾기
# r : 디렉토리 내 n : 라인 수 출력 i : 대소문자 구분 없이
grep -rni "holle" . 

#find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt"
find . -name "hello.*"
find . -type f 파일만찾기

# find 와 그랩의 혼용
# ㅣ xargs를 통해 왼쪽 실행문의 결과값을 오른쪽의 실행문의 input값으로 전달
find . -name "*.txt" ㅣ xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello"{} /;

# 타입은 file인 파일중에 이름이 first로 시작하는 파일을 찾아,
# 그 파일들 안에 hellp라는 키워드가 들어가 있는 문장 찾아라.
find . -type f -name "first.*" | xargs grep -rni "hello"

