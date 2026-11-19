package org.teleal.cling.model.message.gena;

import org.teleal.cling.model.gena.LocalGENASubscription;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.header.ServerHeader;
import org.teleal.cling.model.message.header.SubscriptionIdHeader;
import org.teleal.cling.model.message.header.TimeoutHeader;
import org.teleal.cling.model.message.header.UpnpHeader;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingSubscribeResponseMessage extends StreamResponseMessage {
    public OutgoingSubscribeResponseMessage(LocalGENASubscription localGENASubscription) {
        int i2;
        super(new UpnpResponse(UpnpResponse.Status.OK));
        this.f78412c.h(UpnpHeader.Type.SERVER, new ServerHeader());
        this.f78412c.h(UpnpHeader.Type.SID, new SubscriptionIdHeader(localGENASubscription.e()));
        UpnpHeaders upnpHeaders = this.f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.TIMEOUT;
        synchronized (localGENASubscription) {
            i2 = localGENASubscription.d;
        }
        upnpHeaders.h(type, new TimeoutHeader(i2));
    }

    public OutgoingSubscribeResponseMessage(UpnpResponse.Status status) {
        super(status);
    }
}
