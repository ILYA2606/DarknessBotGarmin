using WatchUi

function phoneAppMessageHandler(message) {
    var data = message.data;
    Communications.emptyMailbox();

    if (data != null) {
        if (data.type == "livedata") {
            RuntimeData.speed = data.speed
        }
    }

    WatchUi.requestUpdate();
}