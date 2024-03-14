
// kim 캐릭터 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
void kim(float x, float y, float d){
  
  float eye_x=x-3*d;
  float eye_y=y-d;
  
  float mouth_x=x;
  float mouth_y=y+2*d;
  
  face(x,y,d);
  eye(eye_x,eye_y,d);
  mouth(mouth_x,mouth_y,d);
  
}
  
void face(float x,float y,float d){
  fill(251,206,177);
  circle(x,y,d*10);
}
  
void eye(float eye_x,float eye_y,float d){
 stroke(0,0,0);
 line(eye_x,eye_y,eye_x+2*d,eye_y-2*d);
 line(eye_x+2*d,eye_y,eye_x,eye_y-2*d);
 
 line(eye_x+4*d,eye_y,eye_x+6*d,eye_y-2*d);
 line(eye_x+6*d,eye_y,eye_x+4*d,eye_y-2*d);
}

void mouth(float mouth_x, float mouth_y, float d){
  fill(128,128,128);
  circle(mouth_x,mouth_y,d*2);
}
  
  
  
