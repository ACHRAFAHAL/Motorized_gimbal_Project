import processing.serial.*;

Serial myPort;
String data = "";
float roll, pitch, yaw;

void setup() {
  size(1600, 900, P3D);
  myPort = new Serial(this, "COM5", 19200);
  myPort.bufferUntil('\n');
}

void draw() {
  frameRate(30); // Limit frame rate to 30 fps
  translate(width/2, height/2, 0);
  background(233);
  textSize(22);
  text("Roll: " + int(roll) + "     Pitch: " + int(pitch), -100, 265);
  rotateX(radians(-pitch));
  rotateZ(radians(-roll));
  rotateY(radians(yaw));
  textSize(30);  
  fill(0, 76, 153);
  box(386, 40, 200);
  textSize(25);
  fill(255, 255, 255);
  text("TIPE : AHAL ACHRAF", -183, 10, 101);
}

void serialEvent (Serial myPort) { 
  data = myPort.readStringUntil('\n');
  if (data != null) {
    data = trim(data);
    String items[] = split(data, '/');
    if (items.length > 1) {
      roll = float(items[0]);
      pitch = float(items[1]);
      yaw = float(items[2]);
    }
  }
}
