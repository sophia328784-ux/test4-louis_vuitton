package org.teleal.cling.protocol.sync;

import java.util.ArrayList;
import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.gena.RemoteGENASubscription;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.gena.IncomingEventRequestMessage;
import org.teleal.cling.model.message.gena.OutgoingEventResponseMessage;
import org.teleal.cling.model.message.header.ContentTypeHeader;
import org.teleal.cling.model.message.header.SubscriptionIdHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.RemoteService;
import org.teleal.cling.model.resource.ServiceEventCallbackResource;
import org.teleal.cling.model.state.StateVariableValue;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.model.types.UnsignedVariableInteger;
import org.teleal.cling.protocol.ReceivingSync;
import org.teleal.cling.registry.RegistryImpl;
import org.teleal.cling.transport.spi.UnsupportedDataException;
import org.teleal.common.util.MimeType;

/* JADX INFO: loaded from: classes5.dex */
public class ReceivingEvent extends ReceivingSync<StreamRequestMessage, OutgoingEventResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingEvent.class.getName());

    public ReceivingEvent(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0037  */
    /* JADX WARN: Instruction removed from duplicated block: B:11:0x0037, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.teleal.cling.protocol.ReceivingSync
    public OutgoingEventResponseMessage executeSync() {
        Object obj;
        ContentTypeHeader contentTypeHeader = (ContentTypeHeader) ((StreamRequestMessage) getInputMessage()).f78412c.k(UpnpHeader.Type.CONTENT_TYPE, ContentTypeHeader.class);
        if (contentTypeHeader == null || (obj = contentTypeHeader.f78433a) == null) {
            log.warning("Received without or with invalid Content-Type: " + getInputMessage());
        } else {
            String str = ((MimeType) obj).f78646a;
            MimeType mimeType = ContentTypeHeader.f78424c;
            if (!str.equals(mimeType.f78646a) || !((MimeType) contentTypeHeader.f78433a).f78647b.equals(mimeType.f78647b)) {
                log.warning("Received without or with invalid Content-Type: " + getInputMessage());
            }
        }
        ServiceEventCallbackResource serviceEventCallbackResource = (ServiceEventCallbackResource) getUpnpService().b().q(ServiceEventCallbackResource.class, ((StreamRequestMessage) getInputMessage()).g());
        if (serviceEventCallbackResource == null) {
            log.fine("No local resource found: " + getInputMessage());
            return new OutgoingEventResponseMessage(new UpnpResponse(UpnpResponse.Status.NOT_FOUND));
        }
        final IncomingEventRequestMessage incomingEventRequestMessage = new IncomingEventRequestMessage((StreamRequestMessage) getInputMessage(), (RemoteService) serviceEventCallbackResource.f78498b);
        UpnpHeaders upnpHeaders = incomingEventRequestMessage.f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.SID;
        SubscriptionIdHeader subscriptionIdHeader = (SubscriptionIdHeader) upnpHeaders.k(type, SubscriptionIdHeader.class);
        if ((subscriptionIdHeader != null ? (String) subscriptionIdHeader.f78433a : null) == null) {
            log.fine("Subscription ID missing in event request: " + getInputMessage());
            return new OutgoingEventResponseMessage(new UpnpResponse(UpnpResponse.Status.PRECONDITION_FAILED));
        }
        if (!incomingEventRequestMessage.i()) {
            log.fine("Missing NT and/or NTS headers in event request: " + getInputMessage());
            return new OutgoingEventResponseMessage(new UpnpResponse(UpnpResponse.Status.BAD_REQUEST));
        }
        if (!incomingEventRequestMessage.i()) {
            log.fine("Invalid NT and/or NTS headers in event request: " + getInputMessage());
            return new OutgoingEventResponseMessage(new UpnpResponse(UpnpResponse.Status.PRECONDITION_FAILED));
        }
        if (incomingEventRequestMessage.h() == null) {
            log.fine("Sequence missing in event request: " + getInputMessage());
            return new OutgoingEventResponseMessage(new UpnpResponse(UpnpResponse.Status.PRECONDITION_FAILED));
        }
        try {
            getUpnpService().getConfiguration().i().b(incomingEventRequestMessage);
            try {
                getUpnpService().b().s();
                RegistryImpl registryImplB = getUpnpService().b();
                SubscriptionIdHeader subscriptionIdHeader2 = (SubscriptionIdHeader) incomingEventRequestMessage.f78412c.k(type, SubscriptionIdHeader.class);
                final RemoteGENASubscription remoteGENASubscriptionP = registryImplB.p(subscriptionIdHeader2 != null ? (String) subscriptionIdHeader2.f78433a : null);
                if (remoteGENASubscriptionP != null) {
                    getUpnpService().getConfiguration().d().execute(new Runnable(this) { // from class: org.teleal.cling.protocol.sync.ReceivingEvent.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ReceivingEvent.log.fine("Calling active subscription with event state variable values");
                            RemoteGENASubscription remoteGENASubscription = remoteGENASubscriptionP;
                            UnsignedIntegerFourBytes unsignedIntegerFourBytesH = incomingEventRequestMessage.h();
                            ArrayList<StateVariableValue> arrayList = incomingEventRequestMessage.f78422f;
                            synchronized (remoteGENASubscription) {
                                UnsignedIntegerFourBytes unsignedIntegerFourBytes = remoteGENASubscription.f78403e;
                                if (unsignedIntegerFourBytes != null) {
                                    Long lValueOf = Long.valueOf(unsignedIntegerFourBytes.f78534a);
                                    remoteGENASubscription.f78403e.getClass();
                                    if (lValueOf.equals(Long.valueOf(UnsignedVariableInteger.Bits.THIRTYTWO.a())) && unsignedIntegerFourBytesH.f78534a == 1) {
                                        System.err.println("TODO: HANDLE ROLLOVER");
                                        return;
                                    }
                                    int i2 = (int) (unsignedIntegerFourBytesH.f78534a - (remoteGENASubscription.f78403e.f78534a + 1));
                                    if (i2 != 0) {
                                        remoteGENASubscription.h(i2);
                                    }
                                }
                                remoteGENASubscription.f78403e = unsignedIntegerFourBytesH;
                                for (StateVariableValue stateVariableValue : arrayList) {
                                    remoteGENASubscription.f78404f.put(stateVariableValue.f78499c.f78483a, stateVariableValue);
                                }
                                remoteGENASubscription.b();
                            }
                        }
                    });
                    return new OutgoingEventResponseMessage();
                }
                log.severe("Invalid subscription ID, no active subscription: " + incomingEventRequestMessage);
                return new OutgoingEventResponseMessage(new UpnpResponse(UpnpResponse.Status.PRECONDITION_FAILED));
            } finally {
                getUpnpService().b().A();
            }
        } catch (UnsupportedDataException e2) {
            log.fine("Can't read request body, " + e2);
            return new OutgoingEventResponseMessage(new UpnpResponse(UpnpResponse.Status.INTERNAL_SERVER_ERROR));
        }
    }
}
