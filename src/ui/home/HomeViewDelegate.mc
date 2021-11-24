using Toybox.WatchUi;
using Toybox.System;

class HomeViewDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        if (Toybox.WatchUi has :Menu2) {
            var menu = new WatchUi.Menu2({
                :title => "DOES NOT WORK"
            });

            menu.addItem(new WatchUi.MenuItem(
                "Beep",
                null,
                "Beep",
                null
            ));
            menu.addItem(new WatchUi.ToggleMenuItem(
                "Lights",
                null,
                "Lights",
                false,
                null
            ));

            WatchUi.pushView(menu, new MyMenuDelegateLol(), WatchUi.SLIDE_UP);
        } else {

        }
    }
}

class MyMenuDelegateLol extends WatchUi.Menu2InputDelegate {
    function initialize() {

    }

    function onSelect(item) {

    }
}