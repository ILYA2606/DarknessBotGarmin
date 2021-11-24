using Toybox.WatchUi;
using Toybox.Communications;

function phoneAppMessageHandler(message) {
    var data = message.data;

    if (data != null) {
        RuntimeData.speed = data["speed"];
        // RuntimeData.isWheelConnected = data["connected"];
        RuntimeData.distance = data["distance"];
        // RuntimeData.totalMileage = data["totalMileage"];
        // RuntimeData.voltage = data["voltage"];
        // RuntimeData.maxSpeed = data["maxSpeed"];
        // RuntimeData.singleMaxSpeed = data["singleMaxSpeed"];
        // RuntimeData.avgSpeed = data["avgSpeed"];
        RuntimeData.battery = data["battery"];
        // RuntimeData.runtime = data["runtime"];
        // RuntimeData.remaining = data["remaining"];
        RuntimeData.temperature = data["temperature"];
        // RuntimeData.current = data["current"];
        // RuntimeData.maxCurrent = data["maxCurrent"];
        // if (data["settings"]["beep"] != null) { RuntimeData.canBeep = data["settings"]["beep"]; }
        // if (data["settings"]["torch"] != null) { RuntimeData.areHeadlightsOn = data["settings"]["torch"]; }
        // if (data["settings"]["lights"] != null) { RuntimeData.areParkLightsOn = dat["settings"]["lights"]; }
        // if (data["settings"]["strobe"] != null) { RuntimeData.isStrobeOn = data["settings"]["strobe"]; }
        // if (data["settings"]["lock"] != null) { RuntimeData.isLockOn = data["settings"]["lock"]; }
        // if (data["settings"]["limit"] != null) { RuntimeData.isLimitModeOn = data["settings"]["limit"]; }
        // if (data["settings"]["turnOff"] != null) { RuntimeData.canTurnOff = data["settings"]["turnOff"]; }
        // RuntimeData.trackRecordingEnabled = data["settings"]["tracker"];
        // RuntimeData.isFarhenheitUnit = data["isFahrenheitUnit"];
        // RuntimeData.isImperialUnit = data["isImperialUnit"];
    }

    WatchUi.requestUpdate();
}
