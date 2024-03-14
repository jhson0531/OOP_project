// son 캐릭터 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
void drawCharacter(float x, float y, float d) {
  strokeWeight(5);
  stroke(0,0,0);
  fill(255);
  
  circle(x-d*12.5, y-d*7.5, d*15);
  circle(x+d*12.5, y-d*7.5, d*15);
  
  fill(255,192,203);
  stroke(255,192,203);
  circle(x-d*12.2, y-d*7.2, d*8);
  circle(x+d*12.2, y-d*7.2, d*8);
  
  stroke(0,0,0);
  fill(255);
  rect(x-d*7, y+d*9, d*14, d*20);
  rect(x-d*3.75, y+d*9, d*7.5, d*9);
  
  line(x-d*7, y+d*12, x-d*17, y+d*6.5);
  line(x+d*7, y+d*12, x+d*17, y+d*6.5);
  
  ellipse(x, y, d*25, d*21);
  
  fill(255,192,203);
  stroke(255,192,203);
  circle(x-d*4.8, y-d*3.2, d);
  circle(x+d*4.8, y-d*3.2, d);
  
  fill(0,0,0);
  stroke(0,0,0);
  circle(x-d*4, y-d*4,d);
  circle(x+d*4, y-d*4,d);
  
  circle(x,y,d*0.6);
  
  fill(255);
  arc(x, y+d*5, d*4, d*3.2, 0, PI);
  
  stroke(255,0,0);
  fill(255,0,0);
  circle(x-d*17, y+d*6.5, d);
  circle(x+d*17, y+d*6.5, d);

  strokeWeight(5);
  stroke(0,0,0);
  fill(255);
}
