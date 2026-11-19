package org.teleal.cling.model.message.gena;

import java.net.URL;
import java.util.List;
import org.teleal.cling.model.gena.RemoteGENASubscription;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.header.CallbackHeader;
import org.teleal.cling.model.message.header.NTEventHeader;
import org.teleal.cling.model.message.header.TimeoutHeader;
import org.teleal.cling.model.message.header.UpnpHeader;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingSubscribeRequestMessage extends StreamRequestMessage {
    public OutgoingSubscribeRequestMessage(RemoteGENASubscription remoteGENASubscription, List<URL> list) {
        int i2;
        super(UpnpRequest.Method.SUBSCRIBE, remoteGENASubscription.j());
        this.f78412c.h(UpnpHeader.Type.CALLBACK, new CallbackHeader(list));
        this.f78412c.h(UpnpHeader.Type.NT, new NTEventHeader());
        UpnpHeaders upnpHeaders = this.f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.TIMEOUT;
        synchronized (remoteGENASubscription) {
            i2 = remoteGENASubscription.f78402c;
        }
        upnpHeaders.h(type, new TimeoutHeader(i2));
    }
}
