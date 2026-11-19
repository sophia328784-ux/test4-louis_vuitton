package org.teleal.cling.protocol.sync;

import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.control.IncomingActionRequestMessage;
import org.teleal.cling.protocol.ReceivingSync;

/* JADX INFO: loaded from: classes5.dex */
public class ReceivingAction extends ReceivingSync<StreamRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingAction.class.getName());
    protected static final ThreadLocal<IncomingActionRequestMessage> requestThreadLocal = new ThreadLocal<>();
    protected static final ThreadLocal<UpnpHeaders> extraResponseHeadersThreadLocal = new ThreadLocal<>();

    public ReceivingAction(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    public static UpnpHeaders getExtraResponseHeaders() {
        return extraResponseHeadersThreadLocal.get();
    }

    public static IncomingActionRequestMessage getRequestMessage() {
        return requestThreadLocal.get();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
    
        if (((org.teleal.common.util.MimeType) r6.f78433a).f78647b.equals(r8.f78647b) != false) goto L13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.teleal.cling.protocol.ReceivingSync
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.teleal.cling.model.message.StreamResponseMessage executeSync() {
        /*
            Method dump skipped, instruction units count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.teleal.cling.protocol.sync.ReceivingAction.executeSync():org.teleal.cling.model.message.StreamResponseMessage");
    }
}
