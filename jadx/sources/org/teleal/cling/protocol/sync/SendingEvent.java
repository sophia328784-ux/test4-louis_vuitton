package org.teleal.cling.protocol.sync;

import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.gena.LocalGENASubscription;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.gena.OutgoingEventRequestMessage;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.protocol.SendingSync;

/* JADX INFO: loaded from: classes5.dex */
public class SendingEvent extends SendingSync<OutgoingEventRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(SendingEvent.class.getName());
    protected final UnsignedIntegerFourBytes currentSequence;
    protected final OutgoingEventRequestMessage[] requestMessages;
    protected final String subscriptionId;

    public SendingEvent(UpnpService upnpService, LocalGENASubscription localGENASubscription) {
        super(upnpService, null);
        this.subscriptionId = localGENASubscription.e();
        synchronized (localGENASubscription) {
        }
        throw null;
    }

    @Override // org.teleal.cling.protocol.SendingSync
    public StreamResponseMessage executeSync() {
        log.fine("Sending event for subscription: " + this.subscriptionId);
        StreamResponseMessage streamResponseMessageC = null;
        for (OutgoingEventRequestMessage outgoingEventRequestMessage : this.requestMessages) {
            if (this.currentSequence.f78534a == 0) {
                log.fine("Sending initial event message to callback URL: " + outgoingEventRequestMessage.g());
            } else {
                log.fine("Sending event message '" + this.currentSequence + "' to callback URL: " + outgoingEventRequestMessage.g());
            }
            streamResponseMessageC = getUpnpService().c().c(outgoingEventRequestMessage);
            log.fine("Received event callback response: " + streamResponseMessageC);
        }
        return streamResponseMessageC;
    }
}
