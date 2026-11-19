package org.teleal.cling.protocol.sync;

import java.net.URI;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.binding.xml.DescriptorBindingException;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.header.ContentTypeHeader;
import org.teleal.cling.model.message.header.ServerHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.Icon;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.LocalService;
import org.teleal.cling.model.profile.ControlPointInfo;
import org.teleal.cling.model.resource.DeviceDescriptorResource;
import org.teleal.cling.model.resource.IconResource;
import org.teleal.cling.model.resource.Resource;
import org.teleal.cling.model.resource.ServiceDescriptorResource;
import org.teleal.cling.protocol.ReceivingSync;
import org.teleal.common.util.Exceptions;

/* JADX INFO: loaded from: classes5.dex */
public class ReceivingRetrieval extends ReceivingSync<StreamRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingRetrieval.class.getName());

    public ReceivingRetrieval(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ControlPointInfo createControlPointInfo() {
        return new ControlPointInfo(((StreamRequestMessage) getInputMessage()).f78412c);
    }

    public StreamResponseMessage createResponse(URI uri, Resource resource) {
        StreamResponseMessage streamResponseMessage;
        try {
            Class<?> cls = resource.getClass();
            Object obj = resource.f78498b;
            if (DeviceDescriptorResource.class.isAssignableFrom(cls)) {
                log.fine("Found local device matching relative request URI: " + uri);
                streamResponseMessage = new StreamResponseMessage(getUpnpService().getConfiguration().t().a((LocalDevice) obj, createControlPointInfo(), getUpnpService().getConfiguration().getNamespace()), new ContentTypeHeader(ContentTypeHeader.f78424c));
            } else if (ServiceDescriptorResource.class.isAssignableFrom(resource.getClass())) {
                log.fine("Found local service matching relative request URI: " + uri);
                streamResponseMessage = new StreamResponseMessage(getUpnpService().getConfiguration().g().b((LocalService) obj), new ContentTypeHeader(ContentTypeHeader.f78424c));
            } else {
                if (!IconResource.class.isAssignableFrom(resource.getClass())) {
                    log.fine("Ignoring GET for found local resource: " + resource);
                    return null;
                }
                log.fine("Found local icon matching relative request URI: " + uri);
                Icon icon = (Icon) obj;
                streamResponseMessage = new StreamResponseMessage(icon.f78465f, icon.f78461a);
            }
        } catch (DescriptorBindingException e2) {
            Logger logger = log;
            logger.warning("Error generating requested device/service descriptor: " + e2.toString());
            logger.log(Level.WARNING, "Exception root cause: ", Exceptions.a(e2));
            streamResponseMessage = new StreamResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR);
        }
        streamResponseMessage.f78412c.h(UpnpHeader.Type.SERVER, new ServerHeader());
        return streamResponseMessage;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.teleal.cling.protocol.ReceivingSync
    public StreamResponseMessage executeSync() {
        UpnpHeaders upnpHeaders = ((StreamRequestMessage) getInputMessage()).f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.HOST;
        if ((upnpHeaders.j(type).length > 0 ? upnpHeaders.j(type)[0] : null) == null) {
            log.fine("Ignoring message, missing HOST header: " + getInputMessage());
            return new StreamResponseMessage(new UpnpResponse(UpnpResponse.Status.PRECONDITION_FAILED));
        }
        URI uri = ((UpnpRequest) ((StreamRequestMessage) getInputMessage()).f78411b).f78416c;
        Resource resourceR = getUpnpService().b().r(uri);
        if (resourceR != null) {
            return createResponse(uri, resourceR);
        }
        log.fine("No local resource found: " + getInputMessage());
        return null;
    }
}
