class AppEventsImpl implements AppEvents {
  Map<String, AppEventListenerList> _listenerMap;

  AppEventsImpl() {
    _listenerMap = new Map<String, AppEventListenerList>();
  }

  AppEventListenerList operator [](String type) {
    type = type.toLowerCase();
    return _listenerMap.putIfAbsent(type, () => new AppEventListenerList());
  }
}