interface AppEvent default AppEventImpl {
  AppEvent(String type, [payload]);

  String get type();

  get payload();
}
