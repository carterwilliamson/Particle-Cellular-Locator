Particle Sandbox
================

# Introduction
This example contains two pieces. One is the particle firmware that will gather cell tower data and emit events.
The second piece is the webhook that ingests these events, transforms them into a Google Geolocate API call, and creates a POST request.

## Setup
For this project you'll need to have the Particle CLI installed along with dfu-util.
Setup steps for this can be found here -> https://docs.particle.io/guide/tools-and-features/cli/electron/

### Webhook
For your first time setup, you'll need to create the webhook. You can pass your Google API key as an argument `$ ./create-webhook.sh <YOUR_KEY>`, or set `$ export API_KEY=<YOUR_KEY>; ./create-webhook.sh`. It is recommended to use the env. variable approach as we will need that key set later anyway.

### Particle Device
Plug in your device via USB and set it to dfu mode. Then run `$ ./build.sh` and the project will build and flash to your device.
If you watch the Particle console, you should see events start popping up.

### Map
Now you're ready to set up the map, head over to -> https://github.com/carterwilliamson/particle-device-locator

The webook-test.json file is used to send test webhook requests to a requestbin url instead of the Google API.
