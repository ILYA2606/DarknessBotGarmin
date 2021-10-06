using Toybox.WatchUi;
using Toybox.System;

class SeparatorRenderer extends WatchUi.Drawable {
    private var leftSeparatorX = System.getDeviceSettings().screenWidth * 0.3;
    private var leftSeparatorY = System.getDeviceSettings().screenHeight * 0.6;
    private var rightSeparatorX = System.getDeviceSettings().screenWidth * 0.7;
    private var rightSeparatorY = System.getDeviceSettings().screenHeight * 0.6;

    function initialize(params) {
        Drawable.initialize(params);
    }

    function draw(dc) {
        dc.setColor(Graphics.COLOR_DK_GRAY, Graphics.COLOR_BLACK);
        dc.setPenWidth(5);
        dc.drawLine(leftSeparatorX, leftSeparatorY, leftSeparatorX, leftSeparatorY + 50);
        dc.drawLine(rightSeparatorX, rightSeparatorY, rightSeparatorX, rightSeparatorY + 50);
    }
}