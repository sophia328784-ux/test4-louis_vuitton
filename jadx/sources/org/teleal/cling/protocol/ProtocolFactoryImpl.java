package org.teleal.cling.protocol;

import com.linkplay.log.LinkplayLog;
import java.net.URI;
import java.net.URL;
import java.util.List;
import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.Namespace;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.gena.RemoteGENASubscription;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.UpnpOperation;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.types.InvalidValueException;
import org.teleal.cling.model.types.NamedServiceType;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.protocol.async.ReceivingSearchResponse;
import org.teleal.cling.protocol.async.SendingSearch;
import org.teleal.cling.protocol.sync.ReceivingAction;
import org.teleal.cling.protocol.sync.ReceivingEvent;
import org.teleal.cling.protocol.sync.ReceivingRetrieval;
import org.teleal.cling.protocol.sync.ReceivingSubscribe;
import org.teleal.cling.protocol.sync.ReceivingUnsubscribe;
import org.teleal.cling.protocol.sync.SendingAction;
import org.teleal.cling.protocol.sync.SendingSubscribe;
import org.teleal.cling.protocol.sync.SendingUnsubscribe;
import org.teleal.common.http.Headers;

/* JADX INFO: loaded from: classes5.dex */
public class ProtocolFactoryImpl implements ProtocolFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f78535b = Logger.getLogger(ProtocolFactory.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UpnpService f78536a;

    /* JADX INFO: renamed from: org.teleal.cling.protocol.ProtocolFactoryImpl$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f78537a;

        static {
            int[] iArr = new int[UpnpRequest.Method.values().length];
            f78537a = iArr;
            try {
                iArr[UpnpRequest.Method.NOTIFY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78537a[UpnpRequest.Method.MSEARCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f78537a[UpnpRequest.Method.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public ProtocolFactoryImpl(UpnpService upnpService) {
        f78535b.fine("Creating ProtocolFactory: ".concat(getClass().getName()));
        this.f78536a = upnpService;
    }

    @Override // org.teleal.cling.protocol.ProtocolFactory
    public final SendingAction a(ActionInvocation actionInvocation, URL url) {
        return new SendingAction(this.f78536a, actionInvocation, url);
    }

    @Override // org.teleal.cling.protocol.ProtocolFactory
    public final SendingSubscribe b(RemoteGENASubscription remoteGENASubscription) {
        return new SendingSubscribe(this.f78536a, remoteGENASubscription);
    }

    @Override // org.teleal.cling.protocol.ProtocolFactory
    public final ReceivingSearchResponse c(IncomingDatagramMessage incomingDatagramMessage) throws ProtocolCreationException {
        if (incomingDatagramMessage == null) {
            LinkplayLog.i("UPNP-SEARCH", "Response Message NULL.");
            return null;
        }
        UpnpOperation upnpOperation = incomingDatagramMessage.f78411b;
        if (upnpOperation == null) {
            LinkplayLog.i("UPNP-SEARCH", "Response Message Operation NULL.");
            return null;
        }
        if (upnpOperation instanceof UpnpRequest) {
            int i2 = AnonymousClass1.f78537a[((UpnpRequest) upnpOperation).f78415b.ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                return null;
            }
        } else if (upnpOperation instanceof UpnpResponse) {
            Logger logger = f78535b;
            UpnpService upnpService = this.f78536a;
            ServiceType[] serviceTypeArrF = upnpService.getConfiguration().f();
            if (serviceTypeArrF.length != 0) {
                List list = (List) incomingDatagramMessage.f78412c.f78640b.get(Headers.d(UpnpHeader.Type.USN.c()));
                String str = (list == null || list.size() <= 0) ? null : (String) list.get(0);
                if (str != null) {
                    if (!incomingDatagramMessage.f78412c.containsKey("Easylink")) {
                        try {
                            NamedServiceType namedServiceTypeA = NamedServiceType.a(str);
                            for (ServiceType serviceType : serviceTypeArrF) {
                                if (!namedServiceTypeA.f78517b.a(serviceType)) {
                                }
                            }
                        } catch (InvalidValueException unused) {
                            logger.finest("Not a named service type header value: ".concat(str));
                        }
                        logger.fine("Service advertisement not supported, dropping it: ".concat(str));
                    }
                }
                LinkplayLog.i("UPNP-SEARCH", "Is not support Service Advertisement.");
                return null;
            }
            return new ReceivingSearchResponse(upnpService, incomingDatagramMessage);
        }
        throw new ProtocolCreationException("Protocol for incoming datagram message not found: " + incomingDatagramMessage);
    }

    @Override // org.teleal.cling.protocol.ProtocolFactory
    public final SendingUnsubscribe d(RemoteGENASubscription remoteGENASubscription) {
        return new SendingUnsubscribe(this.f78536a, remoteGENASubscription);
    }

    @Override // org.teleal.cling.protocol.ProtocolFactory
    public final ReceivingSync e(StreamRequestMessage streamRequestMessage) throws ProtocolCreationException {
        f78535b.fine("Creating protocol for incoming synchronous: " + streamRequestMessage);
        UpnpOperation upnpOperation = streamRequestMessage.f78411b;
        boolean zEquals = ((UpnpRequest) upnpOperation).f78415b.equals(UpnpRequest.Method.GET);
        UpnpService upnpService = this.f78536a;
        if (zEquals) {
            return new ReceivingRetrieval(upnpService, streamRequestMessage);
        }
        Namespace namespace = upnpService.getConfiguration().getNamespace();
        URI uriG = streamRequestMessage.g();
        namespace.getClass();
        if (!uriG.toString().endsWith("/action")) {
            Namespace namespace2 = upnpService.getConfiguration().getNamespace();
            URI uriG2 = streamRequestMessage.g();
            namespace2.getClass();
            if (uriG2.toString().endsWith("/event")) {
                UpnpRequest upnpRequest = (UpnpRequest) upnpOperation;
                if (upnpRequest.f78415b.equals(UpnpRequest.Method.SUBSCRIBE)) {
                    return new ReceivingSubscribe(upnpService, streamRequestMessage);
                }
                if (upnpRequest.f78415b.equals(UpnpRequest.Method.UNSUBSCRIBE)) {
                    return new ReceivingUnsubscribe(upnpService, streamRequestMessage);
                }
            } else {
                Namespace namespace3 = upnpService.getConfiguration().getNamespace();
                URI uriG3 = streamRequestMessage.g();
                namespace3.getClass();
                if (uriG3.toString().endsWith("/cb.xml") && ((UpnpRequest) upnpOperation).f78415b.equals(UpnpRequest.Method.NOTIFY)) {
                    return new ReceivingEvent(upnpService, streamRequestMessage);
                }
            }
        } else if (((UpnpRequest) upnpOperation).f78415b.equals(UpnpRequest.Method.POST)) {
            return new ReceivingAction(upnpService, streamRequestMessage);
        }
        throw new ProtocolCreationException("Protocol for message type not found: " + streamRequestMessage);
    }

    @Override // org.teleal.cling.protocol.ProtocolFactory
    public final SendingSearch f(UpnpHeader upnpHeader) {
        return new SendingSearch(this.f78536a, upnpHeader, 3);
    }
}
