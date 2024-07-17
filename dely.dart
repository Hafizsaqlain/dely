import 'dart:async';

void main() {
  final controller = StreamController<int>();
  
  controller.stream.listen((data) {
    print(data); // Prints the numbers 1 to 5
  });
  
  for (var i = 1; i <= 5; i++) {
    controller.sink.add(i);
  }
  
  controller.close();
}
