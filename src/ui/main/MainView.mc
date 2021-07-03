using Toybox.WatchUi;

class MainView extends WatchUi.View {
    function initialize() {
        View.initialize();
    }

    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
        View.findDrawableById("MainText").setText("0.0");
    }

    function onShow() {

    }

    function onUpdate(dc) {
        View.findDrawableById("MainText").setText(RuntimeData.speed.format("%0.1f"));
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    function onHide() {

    }	
}