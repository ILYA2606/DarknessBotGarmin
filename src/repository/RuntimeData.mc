module RuntimeData {
    var isWheelConnected as Boolean = false,
        distance as Double = 0.0,
        totalMileage as Double = 0.0,
        voltage as Double = 0.0,
        speed as Double = 0.0,
        maxSpeed as Double = 0.0,
        singleMaxSpeed as Double = 0.0,
        avgSpeed as Double = 0.0,
        battery as Double = 0,
        runtime as Double = 0,
        remaining as Double = 0.0,
        temperature as Double = 0.0,
        current as Double = 0.0,
        maxCurrent as Double = 0.0;

    var canBeep as Boolean = false,
        areHeadlightsOn as Boolean = false,
        areParkLightsOn as Boolean = false,
        isStrobeOn as Boolean = false,
        isLockOn as Boolean = false,
        isLimitModeOn as Boolean = false,
        canTurnOff as Boolean = false,
        trackRecordingEnabled as Boolean = false,
        vibrationLevel as Number = 0,
        isFarhenheitUnit as Boolean = false,
        isImperialUnit as Boolean = false;
}