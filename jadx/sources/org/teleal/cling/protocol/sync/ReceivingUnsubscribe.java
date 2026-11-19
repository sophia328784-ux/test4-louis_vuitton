package org.teleal.cling.protocol.sync;

import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.gena.LocalGENASubscription;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.gena.IncomingUnsubscribeRequestMessage;
import org.teleal.cling.model.message.header.CallbackHeader;
import org.teleal.cling.model.message.header.NTEventHeader;
import org.teleal.cling.model.message.header.SubscriptionIdHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.LocalService;
import org.teleal.cling.model.resource.ServiceEventSubscriptionResource;
import org.teleal.cling.protocol.ReceivingSync;
import org.teleal.cling.registry.RegistryImpl;

/* JADX INFO: loaded from: classes5.dex */
public class ReceivingUnsubscribe extends ReceivingSync<StreamRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingUnsubscribe.class.getName());

    public ReceivingUnsubscribe(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.teleal.cling.protocol.ReceivingSync
    public StreamResponseMessage executeSync() {
        ServiceEventSubscriptionResource serviceEventSubscriptionResource = (ServiceEventSubscriptionResource) getUpnpService().b().q(ServiceEventSubscriptionResource.class, ((StreamRequestMessage) getInputMessage()).g());
        if (serviceEventSubscriptionResource == null) {
            log.fine("No local resource found: " + getInputMessage());
            return null;
        }
        Logger logger = log;
        logger.fine("Found local event subscription matching relative request URI: " + ((StreamRequestMessage) getInputMessage()).g());
        IncomingUnsubscribeRequestMessage incomingUnsubscribeRequestMessage = new IncomingUnsubscribeRequestMessage((StreamRequestMessage) getInputMessage(), (LocalService) serviceEventSubscriptionResource.f78498b);
        UpnpHeaders upnpHeaders = incomingUnsubscribeRequestMessage.f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.SID;
        SubscriptionIdHeader subscriptionIdHeader = (SubscriptionIdHeader) upnpHeaders.k(type, SubscriptionIdHeader.class);
        if ((subscriptionIdHeader != null ? (String) subscriptionIdHeader.f78433a : null) != null && (incomingUnsubscribeRequestMessage.f78412c.k(UpnpHeader.Type.NT, NTEventHeader.class) != null || incomingUnsubscribeRequestMessage.f78412c.k(UpnpHeader.Type.CALLBACK, CallbackHeader.class) != null)) {
            logger.fine("Subscription ID and NT or Callback in unsubcribe request: " + getInputMessage());
            return new StreamResponseMessage(UpnpResponse.Status.BAD_REQUEST);
        }
        RegistryImpl registryImplB = getUpnpService().b();
        SubscriptionIdHeader subscriptionIdHeader2 = (SubscriptionIdHeader) incomingUnsubscribeRequestMessage.f78412c.k(type, SubscriptionIdHeader.class);
        LocalGENASubscription localGENASubscriptionM = registryImplB.m(subscriptionIdHeader2 != null ? (String) subscriptionIdHeader2.f78433a : null);
        if (localGENASubscriptionM == null) {
            logger.fine("Invalid subscription ID for unsubscribe request: " + getInputMessage());
            return new StreamResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
        }
        logger.fine("Unregistering subscription: " + localGENASubscriptionM);
        if (getUpnpService().b().f(localGENASubscriptionM)) {
            localGENASubscriptionM.f(null);
        } else {
            logger.fine("Subscription was already removed from registry");
        }
        return new StreamResponseMessage(UpnpResponse.Status.OK);
    }
}
