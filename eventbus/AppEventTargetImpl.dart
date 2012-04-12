class AppEventTargetImpl implements AppEventTarget {
  AppEvents _on;

  AppEvents get on() {
    if (_on === null) {
      _on = new AppEvents();
    }
    return _on;
  }
}
