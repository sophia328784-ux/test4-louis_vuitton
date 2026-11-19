package org.teleal.cling.model.message;

import java.net.InetAddress;
import org.teleal.cling.model.message.UpnpOperation;

/* JADX INFO: loaded from: classes5.dex */
public abstract class OutgoingDatagramMessage<O extends UpnpOperation> extends UpnpMessage<O> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final InetAddress f78408f;
    public final int g;

    public OutgoingDatagramMessage(UpnpRequest upnpRequest, InetAddress inetAddress, int i2) {
        super(upnpRequest);
        this.f78408f = inetAddress;
        this.g = i2;
    }
}
