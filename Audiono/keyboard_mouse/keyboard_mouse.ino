//#include "key_map.h"
#include <Keyboard.h>
#include <Mouse.h>

#define HORIZ_SPEED 0.00162
#define VERTI_TIME  5500
#define SPACE_TIME  1500

#define STROBE    10
#define PRESSING  11

#define UP    KEY_UP_ARROW
#define DOWN  KEY_DOWN_ARROW
#define LEFT  KEY_LEFT_ARROW
#define RIGHT KEY_RIGHT_ARROW
#define JUMP  32

#define PRESS_M  press_key('M');delay(100);release_key('M');delay(100)

//#define MOUSE_L 12
#define LEFT_SINGLE_CLICK Mouse.click()
#define LEFT_DOUBLE_CLICK LEFT_SINGLE_CLICK;delay(100);LEFT_SINGLE_CLICK

//#define MOUSE_R 13

#define LEFT_JUMP   100
#define RIGHT_JUMP  99

#define LEFT_UP     98
#define RIGHT_UP    97
#define LEFT_DOWN   96
#define RIGHT_DOWN  95

#define FINISH  0

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
void press_release_key(int key, int delay_ms);

void move(int dir, float distance);
void go_to_route(int route);

void start_isr();
void end_isr();

volatile bool running_flag;
volatile byte current_route;

void setup() {
  Serial.begin(9600);
  
  DDRD |= B11111100;
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(STROBE, OUTPUT);
  pinMode(PRESSING, OUTPUT);

//  pinMode(MOUSE_L, OUTPUT);
//  pinMode(MOUSE_R, OUTPUT);

  digitalWrite(STROBE, LOW);
  digitalWrite(PRESSING, LOW);

  // release mouse buttons
//  digitalWrite(MOUSE_L, HIGH);
//  digitalWrite(MOUSE_R, HIGH);

  current_route=1;
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
    //官爵对话
    else if ( serial_data == 't' ){
      press_release_key('G', 1000);
      press_release_key(KEY_RETURN, 1000);
      press_release_key(KEY_RETURN, 1000);
      press_release_key(KEY_RETURN, 1000);
      Serial.print("t");
    }
    else if ( serial_data == 'h' ) {
      press_release_key(KEY_F11, 500);
      press_release_key(KEY_F11, 500);
      Serial.print("h");
    }
    
  }
  
  if(running_flag){
    go_to_route(current_route);
    running_flag=0;
  }
}

void press_key(int key){
  Keyboard.press(key);
}

void release_key(int key){
  Keyboard.release(key);
}

void press_release_key(int key, int delay_ms){
  press_key(key);
  delay(100);
  release_key(key);
  delay(delay_ms);
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
