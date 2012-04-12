class AppEventListenerListImpl implements AppEventListenerList {
  List<AppEventListener> _listenerList;

  AppEventListenerListImpl() {
    _listenerList = new List<AppEventListener>();
  }

  AppEventListenerList add(AppEventListener handler, [bool useCapture]) {
    // useCapture is ignored.
    _listenerList.add(handler);
    return this;
  }

  AppEventListenerList remove(AppEventListener handler, [bool useCapture]) {
    // useCapture is ignored.
    int i = 0;
    while (i < _listenerList.length) {
      if (_listenerList[i] === handler) {
        _listenerList.removeRange(i, 1);
        continue;
      }
      i++;
    }
    return this;
  }

  bool dispatch(AppEvent event) {
    // TODO where the returned bool should come from?
    for (AppEventListener handler in _listenerList) {
      handler(event);
    }
    return true;
  }
}

