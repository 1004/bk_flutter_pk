import 'dart:async';

typedef ChangeObserver = Function(String);

class EventBus {
  static EventBus _instance;

  factory EventBus() => _eventBus();

  EventBus._(){
    _init();
  }

  static EventBus _eventBus() {
    if (_instance == null) {
      _instance = EventBus._();
    }
    return _instance;
  }

  Map<String, ChangeObserver> observers = {};

  // StreamController<String> _streamController = StreamController<String>();//单播
  // ignore: close_sinks
  StreamController<String> _streamController =
      StreamController<String>.broadcast(); //广播
  Stream<String> get _dataStream => _streamController.stream;

  StreamSink<String> get _dataSink => _streamController.sink;
  StreamSubscription _dataSubscription;

  void _init() {
    _dataSubscription = _dataStream.listen((value) {
      _notify(value);
    });
  }

  // void _close(){
  //   _dataSubscription.cancel();
  // }

  void sendMsg(String value) {
    _dataSink.add(value);
  }

  void registerObserver(String key, ChangeObserver changeObserver) {
    observers[key] = changeObserver;
  }

  void unRegisterObserver(String key) {
    observers.remove(key);
  }

  void _notify(String value) {
    observers.forEach((k, v) {
      v(value);
    });
  }
}
