import 'dart:isolate';

// This function runs in a new isolate
void isolateFunction(SendPort sendPort) {
  // Send a message back to the main isolate
  sendPort.send("Hello from the new isolate!");
}

void main() async {
  // Create a ReceivePort to receive messages from the new isolate
  ReceivePort receivePort = ReceivePort();

  // Spawn a new isolate and pass the SendPort of the ReceivePort
  await Isolate.spawn(isolateFunction, receivePort.sendPort);

  // Listen for messages from the new isolate
  receivePort.listen((message) {
    print("Message from new isolate: $message");
    receivePort.close();  // Close the ReceivePort when done
  });

  print("Main isolate is done!");
}
