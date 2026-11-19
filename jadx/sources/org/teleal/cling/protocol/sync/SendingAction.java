package org.teleal.cling.protocol.sync;

import java.net.URL;
import java.util.HashMap;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import k.a;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpOperation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.control.IncomingActionResponseMessage;
import org.teleal.cling.model.message.control.OutgoingActionRequestMessage;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.types.ErrorCode;
import org.teleal.cling.protocol.SendingSync;
import org.teleal.cling.transport.spi.UnsupportedDataException;
import org.teleal.common.util.Exceptions;

/* JADX INFO: loaded from: classes5.dex */
public class SendingAction extends SendingSync<OutgoingActionRequestMessage, IncomingActionResponseMessage> {
    private static final Logger log = Logger.getLogger(SendingAction.class.getName());
    protected final ActionInvocation actionInvocation;

    public SendingAction(UpnpService upnpService, ActionInvocation actionInvocation, URL url) {
        super(upnpService, new OutgoingActionRequestMessage(actionInvocation, url));
        this.actionInvocation = actionInvocation;
    }

    @Override // org.teleal.cling.protocol.SendingSync
    public IncomingActionResponseMessage executeSync() {
        return invokeRemote(getInputMessage());
    }

    public void handleResponse(IncomingActionResponseMessage incomingActionResponseMessage) throws ActionException {
        try {
            log.fine("Received response for outgoing call, reading SOAP response body: " + incomingActionResponseMessage);
            getUpnpService().getConfiguration().q().d(incomingActionResponseMessage, this.actionInvocation);
        } catch (UnsupportedDataException e2) {
            log.fine("Error reading SOAP body: " + e2);
            e2.printStackTrace();
            e2.toString();
            HashMap map = a.f71507a;
            throw new ActionException(ErrorCode.ACTION_FAILED, "Error reading response message. " + e2.getMessage());
        }
    }

    public void handleResponseFailure(IncomingActionResponseMessage incomingActionResponseMessage) throws ActionException {
        try {
            log.fine("Received response with Internal Server Error, reading SOAP failure message");
            getUpnpService().getConfiguration().q().d(incomingActionResponseMessage, this.actionInvocation);
        } catch (UnsupportedDataException e2) {
            Logger logger = log;
            logger.fine("Error reading SOAP body: " + e2);
            logger.log(Level.FINE, "Exception root cause: ", Exceptions.a(e2));
            throw new ActionException(ErrorCode.ACTION_FAILED, "Error reading response failure message. " + e2.getMessage());
        }
    }

    public IncomingActionResponseMessage invokeRemote(OutgoingActionRequestMessage outgoingActionRequestMessage) {
        Device device = this.actionInvocation.f78397a.f78437e.f78482e;
        Logger logger = log;
        logger.fine("Sending outgoing action call '" + this.actionInvocation.f78397a.a() + "' to remote service of: " + device);
        IncomingActionResponseMessage incomingActionResponseMessage = null;
        try {
            StreamResponseMessage streamResponseMessageSendRemoteRequest = sendRemoteRequest(outgoingActionRequestMessage);
            if (streamResponseMessageSendRemoteRequest == null) {
                logger.fine("No connection or no no response received, returning null");
                HashMap map = a.f71507a;
                this.actionInvocation.d = new ActionException(ErrorCode.ACTION_FAILED, "Connection error or no response received");
                return null;
            }
            IncomingActionResponseMessage incomingActionResponseMessage2 = new IncomingActionResponseMessage(streamResponseMessageSendRemoteRequest);
            UpnpOperation upnpOperation = incomingActionResponseMessage2.f78411b;
            try {
                int i2 = ((UpnpResponse) upnpOperation).f78417b;
                if (((UpnpResponse) upnpOperation).b() && i2 != UpnpResponse.Status.METHOD_NOT_SUPPORTED.a() && (i2 != UpnpResponse.Status.INTERNAL_SERVER_ERROR.a() || !incomingActionResponseMessage2.f())) {
                    HashMap map2 = a.f71507a;
                    logger.fine("Response was a non-recoverable failure: " + incomingActionResponseMessage2);
                    throw new ActionException(ErrorCode.ACTION_FAILED, "Non-recoverable remote execution failure: ".concat(((UpnpResponse) upnpOperation).a()));
                }
                if (incomingActionResponseMessage2.f() && ((UpnpResponse) upnpOperation).f78417b == UpnpResponse.Status.INTERNAL_SERVER_ERROR.a()) {
                    handleResponseFailure(incomingActionResponseMessage2);
                    return incomingActionResponseMessage2;
                }
                handleResponse(incomingActionResponseMessage2);
                return incomingActionResponseMessage2;
            } catch (ActionException e2) {
                e = e2;
                incomingActionResponseMessage = incomingActionResponseMessage2;
                log.fine("Remote action invocation failed, returning Internal Server Error message: " + e.getMessage());
                this.actionInvocation.d = e;
                if (incomingActionResponseMessage != null && ((UpnpResponse) incomingActionResponseMessage.f78411b).b()) {
                    HashMap map3 = a.f71507a;
                    return incomingActionResponseMessage;
                }
                Objects.toString(incomingActionResponseMessage);
                HashMap map4 = a.f71507a;
                return new IncomingActionResponseMessage(new UpnpResponse(UpnpResponse.Status.INTERNAL_SERVER_ERROR));
            }
        } catch (ActionException e3) {
            e = e3;
        }
    }

    public StreamResponseMessage sendRemoteRequest(OutgoingActionRequestMessage outgoingActionRequestMessage) throws ActionException {
        try {
            Logger logger = log;
            logger.fine("Writing SOAP request body of: " + outgoingActionRequestMessage);
            getUpnpService().getConfiguration().q().j(outgoingActionRequestMessage, this.actionInvocation);
            logger.fine("Sending SOAP body of message as stream to remote device");
            return getUpnpService().c().c(outgoingActionRequestMessage);
        } catch (UnsupportedDataException e2) {
            Logger logger2 = log;
            logger2.fine("Error writing SOAP body: " + e2);
            logger2.log(Level.FINE, "Exception root cause: ", Exceptions.a(e2));
            throw new ActionException(ErrorCode.ACTION_FAILED, "Error writing request message. " + e2.getMessage());
        }
    }
}
