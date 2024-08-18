Stream<String> getStreamList() async* {
  yield 'masterclass';
  await Future.delayed(Duration(milliseconds: 1000));
  yield 'flutterando';
  await Future.delayed(Duration(milliseconds: 1000));
  yield 'dart';
}
