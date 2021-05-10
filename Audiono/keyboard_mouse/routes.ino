// with shoes
move_unit_t route_common[] {
  { LEFT, 1.7 },
  { JUMP, 1 },
  { JUMP, 1 },
  { JUMP, 1 },
  { JUMP, 1 },
  { JUMP, 1 },
  { LEFT, 0.5 },
  { LEFT_JUMP, 0 },
  { RIGHT, 0.1 },
  { RIGHT_JUMP, 0 },
  { RIGHT, 1.5 },
  { JUMP, 0 },
  { JUMP, 0 },
  { RIGHT, 2 },
  { JUMP, 0 },
  { RIGHT, 2 },
  { JUMP, 0 },
  { RIGHT, 2 },
  { JUMP, 0 },
  { RIGHT, 2 },
  { JUMP, 0 },
  { RIGHT, 2 },
  { JUMP, 0 },
  { RIGHT, 5 },
  { JUMP, 0 },
  { RIGHT, 2 },
  { JUMP, 0 },
  { RIGHT, 4 },
  { JUMP, 0 },
  { RIGHT, 2 },

  { JUMP, 0 },
  { JUMP, 1 },
  { FINISH, 0 }
};

move_unit_t route_1[] = {
  { LEFT, 10.2 },
  { JUMP, 0 },
  { LEFT, 2 },
  { JUMP, 0 },
  { LEFT, 7 },
  { JUMP, 0 },
  { JUMP, 0 },
  { JUMP, 0 },
  { LEFT, 0.55 }, 
  { JUMP, 0 },
  { LEFT, 0.6 }, 
  { RIGHT, 0.4 },
  { RIGHT_JUMP, 1 },
  { RIGHT, 1.2 },
  { RIGHT_JUMP, 1 },
//  { RIGHT, 5.6 },
  {RIGHT_UP, 6},
  { UP, 0 },
  { LEFT, 2.2 },
  { LEFT_JUMP, 0 },
  { LEFT, 0.8 },
  { LEFT_JUMP, 0 },
  { LEFT, 1.6 },
  { LEFT_JUMP, 0 },
  { LEFT, 5.2 },
  { UP, 0 },
  { FINISH, 0 }
};

// without shoes
//move_unit_t route_2[] = {
//  { LEFT, 1.5 },
//  { UP, 0 },
//  { RIGHT, 3 },
//  { RIGHT_JUMP, 1 },
//  { RIGHT, 1.4 },
//  { RIGHT_JUMP, 1 },
//  { RIGHT, 2.45 },
//  { UP, 0 },
//  { LEFT, 0.6 },
//  { LEFT_JUMP, 0 },
//  { LEFT, 3.2 },
//  { LEFT_JUMP, 0 },
//  { LEFT, 6.9 },
//  { UP, 1 },
//  { FINISH, 0 }
//};

// with shoes
move_unit_t route_2[] = {
//  { LEFT, 0.5 },
  {LEFT_UP, 1},
  { UP, 0 },
  { RIGHT, 2.7 },
  { RIGHT_JUMP, 1 },
  { RIGHT, 1.15 },
  { RIGHT_JUMP, 1 },
//  { RIGHT, 2.3 },
  {RIGHT_UP, 3},
  { UP, 0 },
  { LEFT, 0.5 },
  { LEFT_JUMP, 0 },
  { LEFT, 2.8 },
  { LEFT_JUMP, 0 },
//  { LEFT, 6.65 },
  {LEFT_UP, 8},
  { UP, 1 },
  { FINISH, 0 }
};

move_unit_t route_3[] = {
  {RIGHT_UP, 8.5},
  { UP, 0 },
  {RIGHT_UP, 4},
  { UP, 0 },
  {LEFT_UP, 1},
  { UP, 0 },
  { RIGHT, 2 }, //avoid going back down
  {RIGHT_DOWN, 2.5 },
  { DOWN, 0 },
  {RIGHT_DOWN, 1 },
  { DOWN, 0 },
  { UP, 0 },
  { FINISH, 0 }
};

move_unit_t route_4[] = {
  { LEFT, 9.5 },
  { JUMP, 0 },
  { LEFT, 2.5 },
  { JUMP, 0 },
//  { LEFT, 3.9 },
  {LEFT_DOWN, 4.5 },
  { DOWN, 0 },
  { LEFT, 5 },
  { RIGHT, 0.25 },
  { UP, 0 },
  { FINISH, 0 }
};

move_unit_t route_5[] = {
//  { RIGHT, 2.9 },
  {RIGHT_DOWN, 3.5 },
  { DOWN, 0 },
  { LEFT, 5.1 },
  { LEFT_JUMP, 0 },
  { LEFT, 7 },
  { RIGHT, 7 },
  { LEFT, 2.6 },
  { UP, 0 },
  { FINISH, 0 }
};

// without shoes
//move_unit_t route_6[] = {
//  { RIGHT, 21 },
//  { JUMP, 1 },
//  { JUMP, 1 },
//  { LEFT, 1 },
//  { JUMP, 1 },
//  { JUMP, 1 },
//  { RIGHT, 0.52 },
//  { JUMP, 1 },
//  { JUMP, 1 },
//  { JUMP, 1 },
//  { JUMP, 1 },
//  { JUMP, 1 },
//  { RIGHT, 0.9 },
//  { JUMP, 1 },
//  { RIGHT, 1 },
//  { JUMP, 1 },
//  { RIGHT, 0.8 },
//  { UP, 1 },
//  { RIGHT, 0.5 },
//  { UP, 1 },
//  { RIGHT, 6 },
//  { DOWN, 1 },
//  { LEFT, 0.5 },
//  { DOWN, 1 },
//  { RIGHT, 0.3 },
//  { DOWN, 1 },
//  { LEFT, 3 },
//  { JUMP, 1 },
//  { JUMP, 1 },
//  { JUMP, 1 },
//  { UP, 1 },
//  { FINISH, 0 }
//};

// with shoes
move_unit_t route_6[] = {
  { RIGHT, 21 },
  { JUMP, 1 },
  { JUMP, 1 },
  { LEFT, 1 },
  { JUMP, 1 },
  { JUMP, 1 },
  { RIGHT, 0.52 },
  { JUMP, 1 },
  { JUMP, 1 },
//  { JUMP, 1 },
//  { RIGHT, 0.4 },
//  { JUMP, 1 },
//  { JUMP, 1 },
//  { RIGHT_JUMP, 1 },
//  { RIGHT, 0.6 },
//  { JUMP, 1 },
//  { RIGHT_UP, 1 },
//  { UP, 1 },
//  { RIGHT_UP, 1 },
//  { UP, 1 },
//  { RIGHT, 10 },
//  {LEFT_DOWN, 0.8 },
//  { DOWN, 1 },
//  {LEFT_DOWN, 1 },
  { RIGHT, 10 },
  { JUMP, 1 },
  { RIGHT, 3 },
  { JUMP, 1 },
  { RIGHT, 2 },
  {LEFT_DOWN, 2 },
  { DOWN, 1 },
  { RIGHT, 2 },
  {LEFT_DOWN, 1.5 },
  { DOWN, 1 },    
  { LEFT, 3 },
  { JUMP, 1 },
  { JUMP, 1 },
  { JUMP, 1 },
  { UP, 1 },
  { FINISH, 0 }
};
