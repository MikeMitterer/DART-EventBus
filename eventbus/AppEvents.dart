interface AppEvents default AppEventsImpl {
  AppEvents();
  AppEventListenerList operator [](String type);
}
