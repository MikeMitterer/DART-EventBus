#import("dart:html");
#import("eventbus/lib.dart");

void main() {
  final EventBus eventbus = new EventBus();
  
  _changeStatusMessage();
  _setUIEventHandlers(eventbus);
  _setAppEventHandlers(eventbus);
}

//-------------------------------------------------------------------------------------------------
// private
//-------------------------------------------------------------------------------------------------
  void _changeStatusMessage() {
    document.query('#status').innerHTML = "Dart is up an running...";  
  }
  
  void _setUIEventHandlers(final EventBus eventbus) {
    document.query("#button1").on.click.add((Event event) {
      print("Clicked on button1");
      eventbus.on['test'].dispatch(new AppEvent("mytype"));
    });
  }
    
    void _setAppEventHandlers(final EventBus eventbus) {
      eventbus.on['test'].add((AppEvent event) {
        print("Event from EventBus, Type: ${event.type}");
      }); 
  }