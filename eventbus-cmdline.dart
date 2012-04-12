#import("eventbus/lib.dart");

void main() {
  final EventBus eventbus = new EventBus();
 
  eventbus.on['test'].add((AppEvent event) {
    print("Event from EventBus, Type: ${event.type}");
  }); 

  eventbus.on['test'].dispatch(new AppEvent("mytype"));
} 
