# cafe24project - 수강신청 웹 서비스

Server OS: Linux with AWS<br>

URL: http://ec2-13-124-139-197.ap-northeast-2.compute.amazonaws.com:8080/cafe24/Main.jsp<br>
Test ID: 아무 아이디나 입력하면 자동으로 로그인 되도록 설계<br>

# 소개
학생이 로그인 시 수강과목을 선택하면 시간표를 만들어 수강신청을 도와주는 웹 서비스 제작

# 사용한 기술
Front-end Technology:
- JSP
- HTML / CSS / Javascript
- jQuery

Backend Technologies:
- Dependency Management
	- Maven
- Server
	- Apache Tomcat 8.5.32
- Version Control
	- Git
- Eclipse
- Java 1.8.0_201
- JEE

# 프로젝트 흐름도
![shot7](https://github.com/dmsqufn093/cafe24project/blob/master/WebContent/img2019/shot7.png)
로그인 화면에서 아이디 입력 후 로그인 버튼 클릭 시 로그인이 되며 수강신청 페이지로 라우팅됩니다. (원하는 데이터 입력 후 로그인 가능)



![shot8](https://github.com/dmsqufn093/cafe24project/blob/master/WebContent/img2019/shot8.png)
수강신청하는 테이블과 선택한 수강과목을 보여주는 시간표 테이블을 나란히 노출시킬 수 있도록 만들었습니다.
해당하는 시간대의 체크박스를 클릭하면 오른쪽 시간표 테이블에 해당하는 과목의 시간대가 임시적으로 표시됩니다.
시간대를 임시적으로 표현할 때는 CSS를 이용하여 랜덤 값으로 색이 표시될 수 있도록 하였습니다.



![shot1](https://github.com/dmsqufn093/cafe24project/blob/master/WebContent/img2019/shot1.png)
1~2학점은 주 2시간 수업이 가능하기 때문에 주 2회 이상 시간을 체크할 경우 alert창을 띄워주고 선택하지 못하도록 하였습니다.



![shot2](https://github.com/dmsqufn093/cafe24project/blob/master/WebContent/img2019/shot2.png)
3학점 이상일 경우 주 2시간씩 2회 총 4시간의 수업을 진행해야 하기 때문에 주 1회만 신청했을 경우 2회 신청해야 한다는 alert창을 띄워줍니다.



![shot3](https://github.com/dmsqufn093/cafe24project/blob/master/WebContent/img2019/shot3.png)
요일과 시간이 겹치는 경우 중복된 시간을 선택했다는 alert창을 띄워 중복된 시간을 선택할 수 없도록 하였습니다.



![shot4](https://github.com/dmsqufn093/cafe24project/blob/master/WebContent/img2019/shot4.png)
최소 신청해야 하는 학점이 18학점이기 때문에 18학점 미만으로 선택했을 경우 최소 신청 학점이 18학점이라는 alert창을 띄우도록 했습니다.



![shot5](https://github.com/dmsqufn093/cafe24project/blob/master/WebContent/img2019/shot5.png)
반대로 최대 신청할 수 있는 학점은 21학점이기 때문에 21학점이 초과했을 경우 최대 신청 학점은 21학점이라는 alert창을 띄우도록 했습니다.



![shot6](https://github.com/dmsqufn093/cafe24project/blob/master/WebContent/img2019/shot6.png)
최종적으로 수강을 선택하고 수강신청 버튼을 눌렀을 경우 수강신청 완료 페이지가 뜨고 선택한 수강과목에 대한 정보들을 보여줄 수 있도록 했습니다.
기본적으로 데이터베이스를 거쳐 데이터를 저장하고 가져오는 것이 맞지만 세팅 관련해서 데이터베이스를 사용하지 않고 기능 구현을 하는 것이 시간적으로 더 효율적이라고 판단해서 데이터베이스를 사용하지 않았습니다.
만약 테이블을 생성한다면 아래의 스키마처럼 테이블을 만들 것입니다. 스키마는 아래와 같습니다.

# 테이블 스키마
![table](https://github.com/dmsqufn093/cafe24project/blob/master/WebContent/img2019/table.png)

