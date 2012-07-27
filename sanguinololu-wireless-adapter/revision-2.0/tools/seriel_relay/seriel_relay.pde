/**/


void setup(){
  Serial.begin(115200);
  Serial1.begin(115200);
  /*Serial1.write("\n");
  delay(2000);
  Serial1.write("SET BT AUTH * 1234\n");
  delay(2000);
  Serial1.write("PIO SETDIR FF FF\n");
  //Serial1.write("PIO SETDIR 04 04\n");
  delay(2000);
  Serial1.write("PIO SET FF 00\n");
  //Serial1.write("PIO SET 04 00\n");
  delay(2000);*/

  /*char *command[] = {}
  char command[] = "PIO SETDIR FF FF\r\n"

  Serial.begin(115200);
  Serial1.begin(115200);

  while(Serial1.available()){
    Serial1.write(command);
    delay(1000);
    if (Serial1.read() == 'O' && Serial1.read() == 'K'){
        Serial.println("here 4");
        break;
    }
    int i=0;
    while(Serial1.available()){
      if(Serial1.read() == command[i]){
      }
    }
  }*/
}

void loop(){
  if (Serial1.available())
    Serial.write(Serial1.read());
  if (Serial.available())
    Serial1.write(Serial.read());
}
