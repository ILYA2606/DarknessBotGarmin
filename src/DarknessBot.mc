using Toybox.Application;
using Toybox.WatchUi;
using Toybox.Communications;

class DarknessBot extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
        Communications.registerForPhoneAppMessages(method(:phoneAppMessageHandler));
    }

    // onStop() is called when your application is exiting
    function onStop(state) {

    }

    // Return the initial view of your application here
    function getInitialView() {
        return [ new HomeView(), new HomeViewDelegate(), WatchUi.SLIDE_LEFT ];
    }
}
