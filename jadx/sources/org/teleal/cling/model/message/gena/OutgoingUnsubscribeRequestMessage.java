package org.teleal.cling.model.message.gena;

import org.teleal.cling.model.gena.RemoteGENASubscription;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.header.SubscriptionIdHeader;
import org.teleal.cling.model.message.header.UpnpHeader;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingUnsubscribeRequestMessage extends StreamRequestMessage {
    public OutgoingUnsubscribeRequestMessage(RemoteGENASubscription remoteGENASubscription) {
        super(UpnpRequest.Method.UNSUBSCRIBE, remoteGENASubscription.j());
        this.f78412c.h(UpnpHeader.Type.SID, new SubscriptionIdHeader(remoteGENASubscription.e()));
    }
}
