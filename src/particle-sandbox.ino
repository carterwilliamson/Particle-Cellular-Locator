/*
 * Project particle-sandbox
 * Description:
 * Author:
 * Date:
 */

 #include "google-maps-device-locator.h"

 GoogleMapsDeviceLocator locator;

 void setup() {
 	Serial.begin(9600);
 	locator.withLocatePeriodic(60);
 }

 void loop() {
 	locator.loop();
 }
