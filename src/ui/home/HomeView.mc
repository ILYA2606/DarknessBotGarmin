using Toybox.WatchUi;

class HomeView extends WatchUi.View {
    function initialize() {
        View.initialize();
    }

    function onLayout(dc) {
        setLayout(Rez.Layouts.HomeLayout(dc));
    }

    function onShow() {

    }

    function onUpdate(dc) {
        // View.findDrawableById("MainText").setText(RuntimeData.speed.format("%0.1f"));
        // View.findDrawableById("LeftText").setText(RuntimeData.battery.format("%0.1f"));
        // View.findDrawableById("CenterText").setText(RuntimeData.distance.format("%0.1f"));
        // View.findDrawableById("RightText").setText(RuntimeData.temperature.format("%0.1f"));
        View.findDrawableById("MainText").setText(RuntimeData.speed.toNumber().toString());
        View.findDrawableById("LeftText").setText(RuntimeData.battery.toNumber().toString());
        View.findDrawableById("CenterText").setText(RuntimeData.distance.toNumber().toString());
        View.findDrawableById("RightText").setText(RuntimeData.temperature.toNumber().toString());
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    function onHide() {

    }	
}