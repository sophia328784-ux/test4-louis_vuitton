package org.teleal.cling.protocol.sync;

import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.gena.CancelReason;
import org.teleal.cling.model.gena.RemoteGENASubscription;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.gena.OutgoingUnsubscribeRequestMessage;
import org.teleal.cling.protocol.SendingSync;

/* JADX INFO: loaded from: classes5.dex */
public class SendingUnsubscribe extends SendingSync<OutgoingUnsubscribeRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(SendingUnsubscribe.class.getName());
    protected final RemoteGENASubscription subscription;

    public SendingUnsubscribe(UpnpService upnpService, RemoteGENASubscription remoteGENASubscription) {
        super(upnpService, new OutgoingUnsubscribeRequestMessage(remoteGENASubscription));
        this.subscription = remoteGENASubscription;
    }

    @Override // org.teleal.cling.protocol.SendingSync
    public StreamResponseMessage executeSync() {
        log.fine("Sending unsubscribe request: " + getInputMessage());
        final StreamResponseMessage streamResponseMessageC = getUpnpService().c().c(getInputMessage());
        getUpnpService().b().w(this.subscription);
        getUpnpService().getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.protocol.sync.SendingUnsubscribe.1
            @Override // java.lang.Runnable
            public void run() {
                StreamResponseMessage streamResponseMessage = streamResponseMessageC;
                if (streamResponseMessage == null) {
                    SendingUnsubscribe.log.fine("Unsubscribe failed, no response received");
                    SendingUnsubscribe.this.subscription.f(CancelReason.UNSUBSCRIBE_FAILED, null);
                    return;
                }
                if (((UpnpResponse) streamResponseMessage.f78411b).b()) {
                    SendingUnsubscribe.log.fine("Unsubscribe failed, response was: " + streamResponseMessageC);
                    SendingUnsubscribe.this.subscription.f(CancelReason.UNSUBSCRIBE_FAILED, (UpnpResponse) streamResponseMessageC.f78411b);
                    return;
                }
                SendingUnsubscribe.log.fine("Unsubscribe successful, response was: " + streamResponseMessageC);
                SendingUnsubscribe.this.subscription.f(null, (UpnpResponse) streamResponseMessageC.f78411b);
            }
        });
        return streamResponseMessageC;
    }
}
