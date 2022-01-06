import 'dart:async';

class EventBus {
  StreamController<String> _streamController = StreamController<String>();
  Stream<String> get _dataStream=>_streamController.stream;
  StreamSink<String> get _dataSink=>_streamController.sink;
  StreamSubscription _dataSubscription;

  void _init(){
    _dataSubscription = _dataStream.listen((value){
      _notify(value);
    });
  }

  void registerObserver(String key){

  }

  void _notify(String value) {

  }
}
