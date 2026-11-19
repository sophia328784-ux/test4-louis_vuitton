package org.teleal.cling.model.message.gena;

import java.util.List;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.header.CallbackHeader;
import org.teleal.cling.model.message.header.SubscriptionIdHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.LocalService;

/* JADX INFO: loaded from: classes5.dex */
public class IncomingSubscribeRequestMessage extends StreamRequestMessage {
    public IncomingSubscribeRequestMessage(StreamRequestMessage streamRequestMessage, LocalService localService) {
        super(streamRequestMessage);
    }

    public final List h() {
        CallbackHeader callbackHeader = (CallbackHeader) this.f78412c.k(UpnpHeader.Type.CALLBACK, CallbackHeader.class);
        if (callbackHeader != null) {
            return (List) callbackHeader.f78433a;
        }
        return null;
    }

    public final String i() {
        SubscriptionIdHeader subscriptionIdHeader = (SubscriptionIdHeader) this.f78412c.k(UpnpHeader.Type.SID, SubscriptionIdHeader.class);
        if (subscriptionIdHeader != null) {
            return (String) subscriptionIdHeader.f78433a;
        }
        return null;
    }
}
