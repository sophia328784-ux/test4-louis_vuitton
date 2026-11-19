package org.teleal.cling.protocol.sync;

import java.util.concurrent.Executor;
import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.gena.CancelReason;
import org.teleal.cling.model.gena.LocalGENASubscription;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.gena.IncomingSubscribeRequestMessage;
import org.teleal.cling.model.message.gena.OutgoingSubscribeResponseMessage;
import org.teleal.cling.model.message.header.NTEventHeader;
import org.teleal.cling.model.message.header.TimeoutHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.LocalService;
import org.teleal.cling.model.resource.ServiceEventSubscriptionResource;
import org.teleal.cling.protocol.ProtocolFactoryImpl;
import org.teleal.cling.protocol.ReceivingSync;
import org.teleal.common.util.Exceptions;

/* JADX INFO: loaded from: classes5.dex */
public class ReceivingSubscribe extends ReceivingSync<StreamRequestMessage, OutgoingSubscribeResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingSubscribe.class.getName());
    protected LocalGENASubscription subscription;

    public ReceivingSubscribe(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.teleal.cling.protocol.ReceivingSync
    public OutgoingSubscribeResponseMessage executeSync() {
        ServiceEventSubscriptionResource serviceEventSubscriptionResource = (ServiceEventSubscriptionResource) getUpnpService().b().q(ServiceEventSubscriptionResource.class, ((StreamRequestMessage) getInputMessage()).g());
        if (serviceEventSubscriptionResource == null) {
            log.fine("No local resource found: " + getInputMessage());
            return null;
        }
        Object obj = serviceEventSubscriptionResource.f78498b;
        Logger logger = log;
        logger.fine("Found local event subscription matching relative request URI: " + ((StreamRequestMessage) getInputMessage()).g());
        LocalService localService = (LocalService) obj;
        IncomingSubscribeRequestMessage incomingSubscribeRequestMessage = new IncomingSubscribeRequestMessage((StreamRequestMessage) getInputMessage(), localService);
        if (incomingSubscribeRequestMessage.i() != null && (incomingSubscribeRequestMessage.f78412c.k(UpnpHeader.Type.NT, NTEventHeader.class) != null || incomingSubscribeRequestMessage.h() != null)) {
            logger.fine("Subscription ID and NT or Callback in subscribe request: " + getInputMessage());
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.BAD_REQUEST);
        }
        if (incomingSubscribeRequestMessage.i() != null) {
            return processRenewal(localService, incomingSubscribeRequestMessage);
        }
        if (incomingSubscribeRequestMessage.f78412c.k(UpnpHeader.Type.NT, NTEventHeader.class) != null && incomingSubscribeRequestMessage.h() != null) {
            return processNewSubscription(localService, incomingSubscribeRequestMessage);
        }
        logger.fine("No subscription ID, no NT or Callback, neither subscription or renewal: " + getInputMessage());
        return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
    }

    public OutgoingSubscribeResponseMessage processNewSubscription(LocalService localService, IncomingSubscribeRequestMessage incomingSubscribeRequestMessage) {
        if (incomingSubscribeRequestMessage.h() == null) {
            log.fine("Missing or invalid Callback URLs in subscribe request: " + getInputMessage());
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
        }
        if (incomingSubscribeRequestMessage.f78412c.k(UpnpHeader.Type.NT, NTEventHeader.class) == null) {
            log.fine("Missing or invalid NT header in subscribe request: " + getInputMessage());
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
        }
        TimeoutHeader timeoutHeader = (TimeoutHeader) incomingSubscribeRequestMessage.f78412c.k(UpnpHeader.Type.TIMEOUT, TimeoutHeader.class);
        try {
            this.subscription = new LocalGENASubscription(localService, timeoutHeader != null ? (Integer) timeoutHeader.f78433a : null, incomingSubscribeRequestMessage.h()) { // from class: org.teleal.cling.protocol.sync.ReceivingSubscribe.1
                @Override // org.teleal.cling.model.gena.GENASubscription
                public final void a() {
                }

                @Override // org.teleal.cling.model.gena.GENASubscription
                public final void b() {
                    ReceivingSubscribe receivingSubscribe = ReceivingSubscribe.this;
                    Executor executorO = receivingSubscribe.getUpnpService().getConfiguration().o();
                    ProtocolFactoryImpl protocolFactoryImplA = receivingSubscribe.getUpnpService().a();
                    protocolFactoryImplA.getClass();
                    executorO.execute(new SendingEvent(protocolFactoryImplA.f78536a, this));
                }

                @Override // org.teleal.cling.model.gena.LocalGENASubscription
                public final void g(CancelReason cancelReason) {
                }
            };
            Logger logger = log;
            logger.fine("Adding subscription to registry: " + this.subscription);
            getUpnpService().b().d(this.subscription);
            logger.fine("Returning subscription response, waiting to send initial event");
            return new OutgoingSubscribeResponseMessage(this.subscription);
        } catch (Exception e2) {
            log.warning("Couldn't create local subscription to service: " + Exceptions.a(e2));
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007f  */
    /* JADX WARN: Code duplicated, block: B:23:0x0087  */
    /* JADX WARN: Instruction removed from duplicated block: B:23:0x0087, please report this as an issue */
    public OutgoingSubscribeResponseMessage processRenewal(LocalService localService, IncomingSubscribeRequestMessage incomingSubscribeRequestMessage) {
        LocalGENASubscription localGENASubscriptionM = getUpnpService().b().m(incomingSubscribeRequestMessage.i());
        this.subscription = localGENASubscriptionM;
        if (localGENASubscriptionM == null) {
            log.fine("Invalid subscription ID for renewal request: " + getInputMessage());
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
        }
        Logger logger = log;
        logger.fine("Renewing subscription: " + this.subscription);
        LocalGENASubscription localGENASubscription = this.subscription;
        TimeoutHeader timeoutHeader = (TimeoutHeader) incomingSubscribeRequestMessage.f78412c.k(UpnpHeader.Type.TIMEOUT, TimeoutHeader.class);
        Integer num = timeoutHeader != null ? (Integer) timeoutHeader.f78433a : null;
        synchronized (localGENASubscription) {
            int iIntValue = num == null ? 1800 : num.intValue();
            localGENASubscription.f78402c = iIntValue;
            synchronized (localGENASubscription) {
                localGENASubscription.d = iIntValue;
            }
            if (getUpnpService().b().C(this.subscription)) {
                return new OutgoingSubscribeResponseMessage(this.subscription);
            }
            logger.fine("Subscription went away before it could be renewed: " + getInputMessage());
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
        }
        if (getUpnpService().b().C(this.subscription)) {
            return new OutgoingSubscribeResponseMessage(this.subscription);
        }
        logger.fine("Subscription went away before it could be renewed: " + getInputMessage());
        return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
    }

    @Override // org.teleal.cling.protocol.ReceivingSync
    public void responseException(Throwable th) {
        if (this.subscription == null) {
            return;
        }
        log.fine("Response could not be send to subscriber, removing local GENA subscription: " + this.subscription);
        getUpnpService().b().f(this.subscription);
    }

    @Override // org.teleal.cling.protocol.ReceivingSync
    public void responseSent(StreamResponseMessage streamResponseMessage) {
        if (this.subscription == null) {
            return;
        }
        if (streamResponseMessage != null && !((UpnpResponse) streamResponseMessage.f78411b).b() && this.subscription.c().f78534a == 0) {
            log.fine("Establishing subscription");
            LocalGENASubscription localGENASubscription = this.subscription;
            synchronized (localGENASubscription) {
                try {
                    ((LocalService) localGENASubscription.d()).d();
                    throw null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (this.subscription.c().f78534a == 0) {
            Logger logger = log;
            logger.fine("Subscription request's response aborted, not sending initial event");
            if (streamResponseMessage == null) {
                logger.fine("Reason: No response at all from subscriber");
            } else {
                logger.fine("Reason: " + streamResponseMessage.f78411b);
            }
            logger.fine("Removing subscription from registry: " + this.subscription);
            getUpnpService().b().f(this.subscription);
        }
    }
}
