# Lifting Up State

Because the widget(view state controller) is calling the view_model to update its not a controller that we are constructing but a view-model that controls access to the model.

Do not be unkind towards yourself as some well known Google IO presenters call it wrong as controller too like GSkinner. But, OOP-wiae it is in fact a view model as in non pure OOP frameworks usually the framework forms its own super controllers.

In the Flutter framework case, widgets are state super state view controllers. And, yes in native iOS and Android have simular super controller structures.

THUS READ LIFTING UP STATE AS LIFTING UP VIEW STATE LOGIC.

Thus, state management in the flutter framework is about correcting and repairing the problems of implementing the 
view-model MVVM pattern which in the Flutter framework is actually WidgetViewSuperController-MVVM pattern.

The making data flow one direction does not resolve the synching problems, which is one of the reasons why we need to move both to better dependency injection and better observers (notifiers).