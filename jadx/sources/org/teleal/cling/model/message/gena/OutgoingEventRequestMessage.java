package org.teleal.cling.model.message.gena;

import java.net.URL;
import java.util.Collection;
import java.util.LinkedHashMap;
import org.teleal.cling.model.gena.GENASubscription;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.header.ContentTypeHeader;
import org.teleal.cling.model.message.header.EventSequenceHeader;
import org.teleal.cling.model.message.header.NTEventHeader;
import org.teleal.cling.model.message.header.NTSHeader;
import org.teleal.cling.model.message.header.SubscriptionIdHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.state.StateVariableValue;
import org.teleal.cling.model.types.NotificationSubtype;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingEventRequestMessage extends StreamRequestMessage {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Collection f78423f;

    public OutgoingEventRequestMessage(GENASubscription gENASubscription, URL url, UnsignedIntegerFourBytes unsignedIntegerFourBytes, Collection<StateVariableValue> collection) {
        super(new UpnpRequest(UpnpRequest.Method.NOTIFY, url));
        this.f78412c.h(UpnpHeader.Type.CONTENT_TYPE, new ContentTypeHeader());
        this.f78412c.h(UpnpHeader.Type.NT, new NTEventHeader());
        this.f78412c.h(UpnpHeader.Type.NTS, new NTSHeader(NotificationSubtype.PROPCHANGE));
        this.f78412c.h(UpnpHeader.Type.SID, new SubscriptionIdHeader(gENASubscription.e()));
        this.f78412c.h(UpnpHeader.Type.SEQ, new EventSequenceHeader(unsignedIntegerFourBytes.f78534a));
        this.f78423f = collection;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public OutgoingEventRequestMessage(GENASubscription gENASubscription, URL url) {
        LinkedHashMap linkedHashMap;
        UnsignedIntegerFourBytes unsignedIntegerFourBytesC = gENASubscription.c();
        synchronized (gENASubscription) {
            linkedHashMap = gENASubscription.f78404f;
        }
        this(gENASubscription, url, unsignedIntegerFourBytesC, linkedHashMap.values());
    }
}
