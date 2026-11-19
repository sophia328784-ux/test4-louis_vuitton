package org.teleal.cling.protocol.sync;

import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;
import k.a;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.Location;
import org.teleal.cling.model.Namespace;
import org.teleal.cling.model.NetworkAddress;
import org.teleal.cling.model.gena.RemoteGENASubscription;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.gena.IncomingSubscribeResponseMessage;
import org.teleal.cling.model.message.gena.OutgoingSubscribeRequestMessage;
import org.teleal.cling.model.message.header.CallbackHeader;
import org.teleal.cling.model.message.header.SubscriptionIdHeader;
import org.teleal.cling.model.message.header.TimeoutHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.meta.RemoteDeviceIdentity;
import org.teleal.cling.model.meta.RemoteService;
import org.teleal.cling.protocol.SendingSync;

/* JADX INFO: loaded from: classes5.dex */
public class SendingSubscribe extends SendingSync<OutgoingSubscribeRequestMessage, IncomingSubscribeResponseMessage> {
    private static final Logger log = Logger.getLogger(SendingSubscribe.class.getName());
    protected final RemoteGENASubscription subscription;

    public SendingSubscribe(UpnpService upnpService, RemoteGENASubscription remoteGENASubscription) {
        ArrayList arrayList;
        List listD = upnpService.c().d(((RemoteDeviceIdentity) ((RemoteDevice) ((RemoteService) remoteGENASubscription.d()).f78482e).f78444a).f78475e);
        Namespace namespace = upnpService.getConfiguration().getNamespace();
        synchronized (remoteGENASubscription) {
            arrayList = new ArrayList();
            Iterator it = listD.iterator();
            while (it.hasNext()) {
                arrayList.add(new Location((NetworkAddress) it.next(), URI.create(namespace.b(remoteGENASubscription.d()).toString() + "/cb.xml")).a());
            }
        }
        super(upnpService, new OutgoingSubscribeRequestMessage(remoteGENASubscription, arrayList));
        this.subscription = remoteGENASubscription;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0183 A[Catch: all -> 0x00bd, TRY_LEAVE, TryCatch #3 {all -> 0x00bd, blocks: (B:21:0x007c, B:23:0x009c, B:29:0x00c0, B:31:0x00d2, B:32:0x00f7, B:34:0x0103, B:36:0x010f, B:37:0x013f, B:39:0x0142, B:40:0x0143, B:41:0x0157, B:43:0x015a, B:44:0x015b, B:48:0x017f, B:51:0x0182, B:52:0x0183, B:38:0x0140, B:42:0x0158), top: B:65:0x007c, outer: #1, inners: #0, #2 }] */
    @Override // org.teleal.cling.protocol.SendingSync
    public synchronized IncomingSubscribeResponseMessage executeSync() {
        UpnpHeaders upnpHeaders = getInputMessage().f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.CALLBACK;
        CallbackHeader callbackHeader = (CallbackHeader) upnpHeaders.k(type, CallbackHeader.class);
        if (callbackHeader != null) {
            ((List) callbackHeader.f78433a).size();
        }
        HashMap map = a.f71507a;
        CallbackHeader callbackHeader2 = (CallbackHeader) getInputMessage().f78412c.k(type, CallbackHeader.class);
        if (!(callbackHeader2 != null && ((List) callbackHeader2.f78433a).size() > 0)) {
            log.fine("Subscription failed, no active local callback URLs available (network disabled?)");
            getUpnpService().getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.protocol.sync.SendingSubscribe.1
                @Override // java.lang.Runnable
                public void run() {
                    RemoteGENASubscription remoteGENASubscription = SendingSubscribe.this.subscription;
                    synchronized (remoteGENASubscription) {
                        remoteGENASubscription.i(null);
                    }
                }
            });
            return null;
        }
        Logger logger = log;
        logger.fine("Sending subscription request: " + getInputMessage());
        try {
            getUpnpService().b().s();
            StreamResponseMessage streamResponseMessageC = getUpnpService().c().c(getInputMessage());
            Objects.toString(streamResponseMessageC);
            if (streamResponseMessageC == null) {
                getUpnpService().getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.protocol.sync.SendingSubscribe.2
                    @Override // java.lang.Runnable
                    public void run() {
                        RemoteGENASubscription remoteGENASubscription = SendingSubscribe.this.subscription;
                        synchronized (remoteGENASubscription) {
                            remoteGENASubscription.i(null);
                        }
                    }
                });
                getUpnpService().b().A();
                return null;
            }
            final IncomingSubscribeResponseMessage incomingSubscribeResponseMessage = new IncomingSubscribeResponseMessage(streamResponseMessageC);
            incomingSubscribeResponseMessage.toString();
            if (((UpnpResponse) streamResponseMessageC.f78411b).b()) {
                logger.fine("Subscription failed, response was: " + incomingSubscribeResponseMessage);
                getUpnpService().getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.protocol.sync.SendingSubscribe.3
                    @Override // java.lang.Runnable
                    public void run() {
                        RemoteGENASubscription remoteGENASubscription = SendingSubscribe.this.subscription;
                        UpnpResponse upnpResponse = (UpnpResponse) incomingSubscribeResponseMessage.f78411b;
                        synchronized (remoteGENASubscription) {
                            remoteGENASubscription.i(upnpResponse);
                        }
                    }
                });
            } else {
                UpnpHeaders upnpHeaders2 = incomingSubscribeResponseMessage.f78412c;
                UpnpHeader.Type type2 = UpnpHeader.Type.SID;
                if (upnpHeaders2.k(type2, SubscriptionIdHeader.class) != null) {
                    UpnpHeaders upnpHeaders3 = incomingSubscribeResponseMessage.f78412c;
                    UpnpHeader.Type type3 = UpnpHeader.Type.TIMEOUT;
                    if (upnpHeaders3.k(type3, TimeoutHeader.class) != null) {
                        streamResponseMessageC.toString();
                        logger.fine("Subscription established, adding to registry, response was: " + streamResponseMessageC);
                        RemoteGENASubscription remoteGENASubscription = this.subscription;
                        String str = (String) ((SubscriptionIdHeader) incomingSubscribeResponseMessage.f78412c.k(type2, SubscriptionIdHeader.class)).f78433a;
                        synchronized (remoteGENASubscription) {
                            remoteGENASubscription.f78401b = str;
                        }
                        RemoteGENASubscription remoteGENASubscription2 = this.subscription;
                        int iIntValue = ((Integer) ((TimeoutHeader) incomingSubscribeResponseMessage.f78412c.k(type3, TimeoutHeader.class)).f78433a).intValue();
                        synchronized (remoteGENASubscription2) {
                            remoteGENASubscription2.d = iIntValue;
                        }
                        getUpnpService().b().k(this.subscription);
                        getUpnpService().getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.protocol.sync.SendingSubscribe.5
                            @Override // java.lang.Runnable
                            public void run() {
                                RemoteGENASubscription remoteGENASubscription3 = SendingSubscribe.this.subscription;
                                synchronized (remoteGENASubscription3) {
                                    remoteGENASubscription3.a();
                                }
                            }
                        });
                    } else {
                        logger.severe("Subscription failed, invalid or missing (SID, Timeout) response headers");
                        getUpnpService().getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.protocol.sync.SendingSubscribe.4
                            @Override // java.lang.Runnable
                            public void run() {
                                RemoteGENASubscription remoteGENASubscription3 = SendingSubscribe.this.subscription;
                                UpnpResponse upnpResponse = (UpnpResponse) incomingSubscribeResponseMessage.f78411b;
                                synchronized (remoteGENASubscription3) {
                                    remoteGENASubscription3.i(upnpResponse);
                                }
                            }
                        });
                    }
                } else {
                    logger.severe("Subscription failed, invalid or missing (SID, Timeout) response headers");
                    getUpnpService().getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.protocol.sync.SendingSubscribe.4
                        @Override // java.lang.Runnable
                        public void run() {
                            RemoteGENASubscription remoteGENASubscription3 = SendingSubscribe.this.subscription;
                            UpnpResponse upnpResponse = (UpnpResponse) incomingSubscribeResponseMessage.f78411b;
                            synchronized (remoteGENASubscription3) {
                                remoteGENASubscription3.i(upnpResponse);
                            }
                        }
                    });
                }
            }
            getUpnpService().b().A();
            return incomingSubscribeResponseMessage;
        } catch (Throwable th) {
            getUpnpService().b().A();
            throw th;
        }
    }
}
