#define HORIZ_SPEED 0.00162
#define VERTI_TIME  5500
#define SPACE_TIME  1500

#define UP    13
#define DOWN  12
#define LEFT  11
#define RIGHT 10
#define JUMP  9

#define KEY_M 8
#define PRESS_M  press_key(KEY_M);delay(100);release_key(KEY_M);delay(100)

#define MOUSE_L 7
#define LEFT_SINGLE_CLICK digitalWrite(MOUSE_L, LOW);delay(100);digitalWrite(MOUSE_L, HIGH)
#define LEFT_DOUBLE_CLICK LEFT_SINGLE_CLICK;delay(100);LEFT_SINGLE_CLICK

#define MOUSE_R 6

#define LEFT_JUMP   100
#define RIGHT_JUMP  99

#define LEFT_UP     98
#define RIGHT_UP    97
#define LEFT_DOWN   96
#define RIGHT_DOWN  95

#define FINISH  0

#define START_BUTTON      2
#define END_BUTTON        3

typedef struct move_unit{
  int dir;
  double len;  
} move_unit_t;

extern move_unit_t route_common[];
extern move_unit_t route_1[];
extern move_unit_t route_2[];
extern move_unit_t route_3[];
extern move_unit_t route_4[];
extern move_unit_t route_5[];
extern move_unit_t route_6[];

void press_key(int key);
void release_key(int key);
void release_all_keys();

void move(int dir, float distance);
void go_to_route(int route);

void start_isr();
void end_isr();

volatile bool running_flag;
volatile byte current_route;

void setup() {
  Serial.begin(9600);
  
  pinMode(UP,     OUTPUT);
  pinMode(DOWN,   OUTPUT);
  pinMode(LEFT,   OUTPUT);
  pinMode(RIGHT,  OUTPUT);
  pinMode(JUMP,   OUTPUT);
  pinMode(KEY_M,   OUTPUT);
  pinMode(MOUSE_L,     OUTPUT);
  pinMode(MOUSE_R,     OUTPUT);

  // release the keys
  digitalWrite(UP, LOW);
  digitalWrite(DOWN, LOW);
  digitalWrite(LEFT, LOW);
  digitalWrite(RIGHT, LOW);
  digitalWrite(JUMP, LOW);
  digitalWrite(KEY_M, LOW);

  // release mouse buttons
  digitalWrite(MOUSE_L, HIGH);
  digitalWrite(MOUSE_R, HIGH);

  pinMode(START_BUTTON, INPUT_PULLUP);
  pinMode(END_BUTTON, INPUT_PULLUP);

  attachInterrupt(digitalPinToInterrupt(START_BUTTON), start_isr, FALLING);
  attachInterrupt(digitalPinToInterrupt(END_BUTTON), end_isr, FALLING);

  current_route=1;

//  press_key(UP);
//  delay(1000);
//  release_key(UP);
//  press_key(DOWN);
//  delay(1000);
//  release_key(DOWN);
//  press_key(LEFT);
//  delay(1000);
//  release_key(LEFT);
//  press_key(RIGHT);
//  delay(1000);
//  release_key(RIGHT);
//  press_key(JUMP);
//  delay(1000);
//  release_key(JUMP);
//  PRESS_M;
//  delay(5000);
//  PRESS_M;
}

void loop()                  {
  if (Serial.available() > 0) {
    // read the incoming byte:
    int serial_data = Serial.read();
    
    // set route
    if( serial_data >= 49 && serial_data <= 54 ){
      current_route = serial_data-48;
      Serial.print("S");
    }
    // open map
    else if ( serial_data == 'O' ){
      PRESS_M;
      press_key(LEFT);
      delay(2000);
      release_key(LEFT);
      Serial.print("O");
    }
    // close map
    else if ( serial_data == 'C' ){
      PRESS_M;
      Serial.print("C");
    }
    // run
    else if ( serial_data == 'R' ){
      running_flag = 1;
      Serial.print("R");
    }
    // left single click
    else if ( serial_data == 's' ){
      LEFT_SINGLE_CLICK;
      Serial.print("s");
    }
    //left double click
    else if ( serial_data == 'd' ){
      LEFT_DOUBLE_CLICK;
      Serial.print("d");
    }
    
    
  }
  
  if(running_flag){
    go_to_route(current_route);
    running_flag=0;
  }
}

void press_key(int key){
  digitalWrite(key, HIGH);
}

void release_key(int key){
  digitalWrite(key, LOW);
  delay(200);
}

void release_all_keys(){
  for(int i=JUMP; i<=UP; i++){
    release_key(i);
  }
}

void move(int dir, float distance){
  int press_time;
  switch(dir){
    case UP:
    case DOWN:
      press_time=VERTI_TIME;
    break;
    case LEFT:
    case RIGHT:
      press_time=(int)(distance/HORIZ_SPEED);
    break;
    case JUMP:
      press_time=SPACE_TIME;
    break;
    case LEFT_JUMP:
      press_key(LEFT);
      delay(100);
      press_key(JUMP);
      delay(200);
      release_key(LEFT);
      delay(SPACE_TIME-200);
      release_key(JUMP);
      delay(100);
      press_key(JUMP);
      delay(SPACE_TIME);
      release_key(JUMP);
      return;
    break;
    case RIGHT_JUMP:
      press_key(RIGHT);
      delay(100);
      press_key(JUMP);
      delay(200);
      release_key(RIGHT);
      delay(SPACE_TIME-200);
      release_key(JUMP);
      delay(100);
      press_key(JUMP);
      delay(SPACE_TIME);
      release_key(JUMP);
      return;
    break;
    case LEFT_UP:
      press_time=(int)(distance/HORIZ_SPEED);
      press_key(UP);
      press_key(LEFT);
      delay(press_time);
      release_key(LEFT);
      release_key(UP);
    break;
    case RIGHT_UP:
      press_time=(int)(distance/HORIZ_SPEED);
      press_key(UP);
      press_key(RIGHT);
      delay(press_time);
      release_key(RIGHT);
      release_key(UP);
    break;
    case LEFT_DOWN:
      press_time=(int)(distance/HORIZ_SPEED);
      press_key(DOWN);
      press_key(LEFT);
      delay(press_time);
      release_key(LEFT);
      release_key(DOWN);
    break;
    case RIGHT_DOWN:
      press_time=(int)(distance/HORIZ_SPEED);
      press_key(DOWN);
      press_key(RIGHT);
      delay(press_time);
      release_key(RIGHT);
      release_key(DOWN);
    break;
  }
  press_key(dir);
  delay(press_time);
  release_key(dir);
}

void go_to_route(int route){
  move_unit_t* curr_route;
  int i=0;
  switch(route){
    case 1:
      curr_route = route_common;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
      curr_route = route_1;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
    break;
    case 2:
      curr_route = route_common;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
      curr_route = route_2;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
    break;
    case 3:
      curr_route = route_common;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
      curr_route = route_3;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
    break;
    case 4:
      curr_route = route_common;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
      curr_route = route_4;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
    break;
    case 5:
      curr_route = route_common;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
      curr_route = route_5;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
    break;
    case 6:
      curr_route = route_6;
      i=0;
      while(running_flag==1 && curr_route[i].dir!=FINISH){
        move(curr_route[i].dir, curr_route[i].len);
        i++;
      }
    break;
  }
  if(running_flag==1){
    move(RIGHT, 25);
  }
  Serial.print("F");
}

void start_isr(){
  running_flag=1;
}

void end_isr(){
  running_flag=0;
}
