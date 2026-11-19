package org.teleal.cling.model.message.gena;

import java.util.ArrayList;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.header.EventSequenceHeader;
import org.teleal.cling.model.message.header.NTEventHeader;
import org.teleal.cling.model.message.header.NTSHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.RemoteService;
import org.teleal.cling.model.types.NotificationSubtype;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class IncomingEventRequestMessage extends StreamRequestMessage {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f78422f;
    public final RemoteService g;

    public IncomingEventRequestMessage(StreamRequestMessage streamRequestMessage, RemoteService remoteService) {
        super(streamRequestMessage);
        this.f78422f = new ArrayList();
        this.g = remoteService;
    }

    public final UnsignedIntegerFourBytes h() {
        EventSequenceHeader eventSequenceHeader = (EventSequenceHeader) this.f78412c.k(UpnpHeader.Type.SEQ, EventSequenceHeader.class);
        if (eventSequenceHeader != null) {
            return (UnsignedIntegerFourBytes) eventSequenceHeader.f78433a;
        }
        return null;
    }

    public final boolean i() {
        NTEventHeader nTEventHeader = (NTEventHeader) this.f78412c.k(UpnpHeader.Type.NT, NTEventHeader.class);
        NTSHeader nTSHeader = (NTSHeader) this.f78412c.k(UpnpHeader.Type.NTS, NTSHeader.class);
        return (nTEventHeader == null || nTEventHeader.f78433a == null || nTSHeader == null || !((NotificationSubtype) nTSHeader.f78433a).equals(NotificationSubtype.PROPCHANGE)) ? false : true;
    }

    @Override // org.teleal.cling.model.message.UpnpMessage
    public final String toString() {
        return super.toString() + " SEQUENCE: " + Long.valueOf(h().f78534a);
    }
}
