package org.teleal.cling.protocol;

import org.teleal.cling.UpnpService;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ReceivingSync<IN extends StreamRequestMessage, OUT extends StreamResponseMessage> extends ReceivingAsync<IN> {
    protected OUT outputMessage;

    public ReceivingSync(UpnpService upnpService, IN in) {
        super(upnpService, in);
    }

    @Override // org.teleal.cling.protocol.ReceivingAsync
    public final void execute() {
        this.outputMessage = (OUT) executeSync();
    }

    public abstract OUT executeSync();

    public OUT getOutputMessage() {
        return this.outputMessage;
    }

    public void responseException(Throwable th) {
    }

    public void responseSent(StreamResponseMessage streamResponseMessage) {
    }

    @Override // org.teleal.cling.protocol.ReceivingAsync
    public String toString() {
        return "(" + getClass().getSimpleName() + ")";
    }
}
