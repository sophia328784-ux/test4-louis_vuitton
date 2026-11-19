package org.teleal.cling.model.message.control;

import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpResponse;

/* JADX INFO: loaded from: classes5.dex */
public class IncomingActionResponseMessage extends StreamResponseMessage implements ActionResponseMessage {
    public IncomingActionResponseMessage(StreamResponseMessage streamResponseMessage) {
        super(streamResponseMessage);
    }

    @Override // org.teleal.cling.model.message.control.ActionMessage
    public final String b() {
        return null;
    }

    public IncomingActionResponseMessage(UpnpResponse upnpResponse) {
        super(upnpResponse);
    }
}
