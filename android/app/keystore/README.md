# 키스토어 파일 생성 방법

아래 명령어를 통해 키스토어 파일을 생성합니다.
명령어 입력 시 project-name 을 변경해주세요.

```
keytool -genkey -v -keystore project-name.jks -keyalg RSA -keysize 2048 -validity 10000 -alias project-name
```

**예시**
```
$ keytool -genkey -v -keystore worryless.jks -keyalg RSA -keysize 2048 -validity 10000 -alias worryless
키 저장소 비밀번호 입력:  
새 비밀번호 다시 입력: 
Enter the distinguished name. Provide a single dot (.) to leave a sub-component empty or press ENTER to use the default value in braces.
이름과 성을 입력하십시오.
  [Unknown]:  daegon lee
조직 단위 이름을 입력하십시오.
  [Unknown]:  dev
조직 이름을 입력하십시오.
  [Unknown]:  none
구/군/시 이름을 입력하십시오?
  [Unknown]:  seoul
시/도 이름을 입력하십시오.
  [Unknown]:  seoul
이 조직의 두 자리 국가 코드를 입력하십시오.
  [Unknown]:  KR
CN=daegon lee, OU=dev, O=none, L=seoul, ST=seoul, C=KR이(가) 맞습니까?
  [아니오]:  예

다음에 대해 유효 기간이 10,000일인 2,048비트 RSA 키 쌍 및 자체 서명된 인증서(SHA384withRSA)를 생성하는 중
        : CN=daegon lee, OU=dev, O=none, L=seoul, ST=seoul, C=KR
[worryless.jks을(를) 저장하는 중]
```

키를 생성했다면(생성된 경로: 프로젝트 루트) android/app/keystore/project-name.jks 경로로 옮겨주세요.

# Key Properties 파일 생성

프로젝트의 android 디렉토리에 key.properties 파일을 생성하고 아래 내용을 입력합니다.

```
storePassword=<앞서 설정한 비밀번호>
keyPassword=<앞서 설정한 비밀번호>
keyAlias=<project-name>
storeFile=keystore/<project-name>.jks
```