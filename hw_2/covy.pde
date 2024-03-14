 // 커비 캐릭터 ----------------------------------------------
 void covy(float c_x, float c_y, float c_d){  
  strokeWeight(3);  // 캐릭터 선 굵기
  stroke(0, 0, 0);  // 캐릭터 선 색상
  fill(255, 153, 255); // 캐릭터 색상 
  rotation(c_x+c_d/4, c_y+c_d*0.375, 0.2, c_d*0.375, 40);       // 3. 오른쪽 다리
  rotation(c_x-c_d/2, c_y+c_d*0.125, 3/4, c_d*0.35, 30);      // 4. 왼쪽 팔  
  circle(c_x, c_y, c_d);      // 5. 몸통
  circle(c_x+c_d/2, c_y-c_d/8, c_d/3);      // 6. 오른쪽 팔
  rotation(c_x- c_d/4, c_y+c_d*0.375, 3.3/4, c_d*0.4, 20);  // 7. 왼쪽 발
  
  // 8. 뺨  
  fill(255,51,51);
  ellipse(c_x-c_d/4, c_y, c_d*0.18, c_d*0.08);
  ellipse(c_x+c_d/4, c_y, c_d*0.18, c_d*0.08); 
  
  // 9. 눈   
  fill(0, 0, 0);
  ellipse(c_x - c_d*0.1, c_y-c_d/5, c_d*0.1, c_d*0.25);
  ellipse(c_x + c_d*0.1, c_y-c_d/5, c_d*0.1, c_d*0.25);
  fill(255, 255, 255);
  ellipse(c_x - c_d*0.1, c_y-c_d*0.25, c_d*0.08, c_d*0.12);
  ellipse(c_x + c_d*0.1, c_y-c_d*0.25, c_d*0.08, c_d*0.12);
  
  // 10. 입
  fill(255,0,0);
  arc(c_x, c_y, c_d*0.125, c_d*0.19, 0, PI);
  line(c_x-c_d*0.05 ,c_y, c_x+c_d*0.05 , c_y);   
}

void rotation(float a, float b, float angle, float h, float w){    // 3,4번의 도형 회전 함수(지역, 전역 변수 사용)
  translate(a, b);
  rotate(PI * angle);
  ellipse(0, 0, w, h);
  resetMatrix(); // 초기화
}
