package org.teleal.cling.model.message;

import java.net.InetAddress;
import org.teleal.cling.model.message.UpnpOperation;

/* JADX INFO: loaded from: classes5.dex */
public class IncomingDatagramMessage<O extends UpnpOperation> extends UpnpMessage<O> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final InetAddress f78407f;

    public IncomingDatagramMessage(IncomingDatagramMessage incomingDatagramMessage) {
        super(incomingDatagramMessage);
        this.f78407f = incomingDatagramMessage.f78407f;
    }

    public IncomingDatagramMessage(O o, InetAddress inetAddress, int i2, InetAddress inetAddress2) {
        super(o);
        this.f78407f = inetAddress2;
    }
}
