using Toybox.Application;
using Toybox.WatchUi;
using Toybox.Application.Storage;

class DarknessBot extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
        
    }

    // onStop() is called when your application is exiting
    function onStop(state) {

    }

    // Return the initial view of your application here
    function getInitialView() {
        return [ new MainView(), new MainViewDelegate(), WatchUi.SLIDE_LEFT ];
    }
}
