class AppEventImpl implements AppEvent {
  final String type;
  final payload;

  AppEventImpl(String this.type, [this.payload]);
}
