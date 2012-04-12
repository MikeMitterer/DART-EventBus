interface AppEventListenerList default AppEventListenerListImpl {
  AppEventListenerList();
  AppEventListenerList add(AppEventListener handler, [bool useCapture]);

  AppEventListenerList remove(AppEventListener handler, [bool useCapture]);

  bool dispatch(AppEvent evt);
}