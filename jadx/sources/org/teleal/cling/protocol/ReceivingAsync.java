package org.teleal.cling.protocol;

import org.teleal.cling.UpnpService;
import org.teleal.cling.model.message.UpnpMessage;
import org.teleal.cling.model.message.header.UpnpHeader;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ReceivingAsync<M extends UpnpMessage> implements Runnable {
    private M inputMessage;
    private final UpnpService upnpService;

    public ReceivingAsync(UpnpService upnpService, M m) {
        this.upnpService = upnpService;
        this.inputMessage = m;
    }

    public abstract void execute();

    public <H extends UpnpHeader> H getFirstHeader(UpnpHeader.Type type, Class<H> cls) {
        return (H) getInputMessage().f78412c.k(type, cls);
    }

    public M getInputMessage() {
        return this.inputMessage;
    }

    public UpnpService getUpnpService() {
        return this.upnpService;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zWaitBeforeExecution;
        try {
            zWaitBeforeExecution = waitBeforeExecution();
        } catch (InterruptedException unused) {
            zWaitBeforeExecution = false;
        }
        if (zWaitBeforeExecution) {
            execute();
        }
    }

    public String toString() {
        return "(" + getClass().getSimpleName() + ")";
    }

    public boolean waitBeforeExecution() throws InterruptedException {
        return true;
    }
}
