// 전역변수 선언
float coordinate_X, coordinate_Y, unitLength; // 캐릭터의 중심좌표와 단위길이 변수

void setup() {
  size(1000, 1000); // 캔버스 크기 설정
  
    unitLength = 10; // 단위길이 설정
  
  // 첫 번째 캐릭터 그리기 (위치 330,330 / 비율 1)
  coordinate_X = 330;
  coordinate_Y = 330;
  drawCharacter(coordinate_X, coordinate_Y, 1);
  
  // 두 번째 캐릭터 그리기 (위치 700,700 / 비율 0.6)
  coordinate_X = 700;
  coordinate_Y = 700;
  drawCharacter(coordinate_X, coordinate_Y, 0.6);
}

void drawCharacter(float x, float y, float scale) {
  // 비율 설정
  float d;
  d = unitLength * scale;
  
  // 붓 씻어주기
  strokeWeight(5);
  stroke(0,0,0);
  fill(255);
  
  //귀 그리기
  circle(x-d*12.5, y-d*7.5, d*15); //바깥쪽 귀
  circle(x+d*12.5, y-d*7.5, d*15);
  
  fill(255,192,203); //안쪽 귀
  stroke(255,192,203);
  circle(x-d*12.2, y-d*7.2, d*8);
  circle(x+d*12.2, y-d*7.2, d*8);
  
  //몸통 그리기
  stroke(0,0,0);
  fill(255);
  rect(x-d*7, y+d*9, d*14, d*20);
  rect(x-d*3.75, y+d*9, d*7.5, d*9);
  
  //팔 그리기
  line(x-d*7, y+d*12, x-d*17, y+d*6.5);
  line(x+d*7, y+d*12, x+d*17, y+d*6.5);
  
  // 얼굴 그리기
  ellipse(x, y, d*25, d*21); //얼굴 윤곽선
  
  fill(255,192,203); //눈 밑에 핑크색 포인트
  stroke(255,192,203);
  circle(x-d*4.8, y-d*3.2, d);
  circle(x+d*4.8, y-d*3.2, d);
  
  fill(0,0,0); //눈
  stroke(0,0,0); 
  circle(x-d*4, y-d*4, d);
  circle(x+d*4, y-d*4, d);
  
  circle(x,y,d*0.6); //코
  
  fill(255); //입
  arc(x,y+d*5,d*4,d*3.2,0,PI);
  
  // 손 그리기
  stroke(255,0,0);
  fill(255,0,0);
  circle(x-d*17, y+d*6.5,d);
  circle(x+d*17, y+d*6.5,d);
 
}
