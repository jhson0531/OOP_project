float []x1, y1, x2, y2;
float count = 0;
float state = 0;
int j=0;
int k=0;

void setup()
{
  size(700, 850);
  ar();
}

void draw()
{
  // 윗배경
  fill(000, 155, 255);    //하늘색
  rect(0, 0, 700, 700);
  // 아랫배경
  fill(153, 255, 120);
  rect(0, 700, 700, 150);
  
  if(state == 0)
  {
    for(int i=0; i<3+j; i++)
    {
      kim(x1[i], y1[i], 5);    // 장애물 캐릭터1
      drawCharacter(x2[i], y2[i], 1.5); // 장애물 캐릭터2
      if(y1[i] < height) y1[i] += 10 +j;     // Y축이 끝이 되기 전까지 떨어지기
      if(y2[i] < height) y2[i] += 10 +j;     // Y축이 끝이 되기 전까지 떨어지기
      if(y1[i] >= height)  // y축 끝으로 갔을때 x[]에 새로운 좌표 지정
      {
        k++;
        if(k%4==0)
       {
          j++;
          ar();
       }
       else ar();
      
      }
    }
  }
  else
  {
    count ++;
    if(count < 180)
    {
      textSize(100);
      text("GameOVer", 140, 425);
    }
  }
    mouse();
} 


void ar(){
  x1 = new float[3+j];    // x 배열
  y1 = new float[3+j];    // y 배열
  x2 = new float[3+j];    // x 배열
  y2 = new float[3+j];    // y 배열
  for(int i=0; i<3+j; i++)
  {
    x1[i] = random(width);
    y1[i] = random(0, 100);
    
    x2[i] = random(width);
    y2[i] = random(0, 100);
  }
}

void mouse()
{
  float mainX = mouseX;
  float mainY = mouseY;
  covy(mainX, mainY, 50);
  
  for(int i=0; i<3+j; i++)    // 충돌
  {
    float dx1 = x1[i] - mainX;    // 마우스 X좌표
    float dy1 = y1[i] - mainY;    // 마우스 Y좌표
    float d1 = sqrt(dx1*dx1 + dy1*dy1);
    
    float dx2 = x2[i] - mainX;    // 마우스 X좌표
    float dy2 = y2[i] - mainY;    // 마우스 Y좌표
    float d2 = sqrt(dx2*dx2 + dy2*dy2);
    
    if(d1<50 || d2<50) state = 1;   // 충돌 시 state = 1
  }
}



  
  
