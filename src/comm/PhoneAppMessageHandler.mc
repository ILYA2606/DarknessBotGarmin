using Toybox.WatchUi;
using Toybox.Communications;

function phoneAppMessageHandler(message) {
    var data as Dictionary = message.data;
    Communications.emptyMailbox();

    if (data != null) {
        switch (data["type"]) {
            case "livedata": {
                RuntimeData.speed = data["speed"];
                RuntimeData.isWheelConnected = data["connected"];
                RuntimeData.distance = data["distance"];
                RuntimeData.totalMileage = data["totalMileage"];
                RuntimeData.voltage = data["voltage"];
                RuntimeData.speed = data["speed"];
                RuntimeData.maxSpeed = data["maxSpeed"];
                RuntimeData.singleMaxSpeed = data["singleMaxSpeed"];
                RuntimeData.avgSpeed = data["avgSpeed"];
                RuntimeData.battery = data["battery"];
                RuntimeData.runtime = data["runtime"];
                RuntimeData.remaining = data["remaining"];
                RuntimeData.temperature = data["temperature"];
                RuntimeData.current = data["current"];
                RuntimeData.maxCurrent = data["maxCurrent"];
            }
            case "settings": {
                if (data["beep"] != null) { RuntimeData.canBeep = data["beep"]; }
                if (data["torch"] != null) { RuntimeData.areHeadlightsOn = data["torch"]; }
                if (data["lights"] != null) { RuntimeData.areParkLightsOn = data["lights"]; }
                if (data["strobe"] != null) { RuntimeData.isStrobeOn = data["strobe"]; }
                if (data["lock"] != null) { RuntimeData.isLockOn = data["lock"]; }
                if (data["limit"] != null) { RuntimeData.isLimitModeOn = data["limit"]; }
                if (data["turnOff"] != null) { RuntimeData.canTurnOff = data["turnOff"]; }
                RuntimeData.trackRecordingEnabled = data["tracker"];
                if (data["vibroLevel"] != null) { RuntimeData.vibrationLevel = data["vibroLevel"]; }
                RuntimeData.isFarhenheitUnit = data["isFahrenheitUnit"];
                RuntimeData.isImperialUnit = data["isImperialUnit"];
            }
        }
    }

    WatchUi.requestUpdate();
}