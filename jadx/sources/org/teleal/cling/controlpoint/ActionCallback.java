package org.teleal.cling.controlpoint;

import com.linkplay.log.LinkplayLog;
import defpackage.md;
import defpackage.n00;
import java.net.URL;
import org.teleal.cling.UpnpDescriptionTools;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.action.ActionExecutor;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.control.IncomingActionResponseMessage;
import org.teleal.cling.model.meta.Action;
import org.teleal.cling.model.meta.LocalService;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.meta.RemoteDeviceIdentity;
import org.teleal.cling.model.meta.RemoteService;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.protocol.sync.SendingAction;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ActionCallback implements Runnable {
    protected final ActionInvocation actionInvocation;
    protected ControlPoint controlPoint;

    public ActionCallback(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        this.actionInvocation = actionInvocation;
        this.controlPoint = controlPoint;
    }

    public String createDefaultFailureMessage(ActionInvocation actionInvocation, UpnpResponse upnpResponse) {
        ActionException actionException = actionInvocation.d;
        String str = "Error: ";
        if (actionException != null) {
            str = "Error: " + actionException.getMessage();
        }
        if (upnpResponse == null) {
            return str;
        }
        StringBuilder sbU = n00.u(str, " (HTTP response was: ");
        sbU.append(upnpResponse.a());
        sbU.append(")");
        return sbU.toString();
    }

    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse) {
        failure(actionInvocation, upnpResponse, createDefaultFailureMessage(actionInvocation, upnpResponse));
    }

    public abstract void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str);

    public ActionInvocation getActionInvocation() {
        return this.actionInvocation;
    }

    public synchronized ControlPoint getControlPoint() {
        return this.controlPoint;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        Action action = this.actionInvocation.f78397a;
        Service service = action.f78437e;
        if (service instanceof LocalService) {
            ((ActionExecutor) ((LocalService) service).f78467f.get(action)).execute();
            ActionInvocation actionInvocation = this.actionInvocation;
            if (actionInvocation.d != null) {
                failure(actionInvocation, null);
                return;
            } else {
                success(actionInvocation);
                return;
            }
        }
        if (service instanceof RemoteService) {
            if (getControlPoint() == null) {
                md.k("Callback must be executed through ControlPoint");
                return;
            }
            RemoteService remoteService = (RemoteService) service;
            URL urlT = ((RemoteDevice) remoteService.f78482e).t(remoteService.g);
            SendingAction sendingActionA = getControlPoint().a().a(this.actionInvocation, urlT);
            sendingActionA.run();
            IncomingActionResponseMessage outputMessage = sendingActionA.getOutputMessage();
            if (outputMessage == null) {
                failure(this.actionInvocation, null);
                UpnpHeaders upnpHeaders = ((RemoteDeviceIdentity) ((RemoteDevice) remoteService.f78482e).f78444a).f78476f;
                if (this.actionInvocation.f78397a.a().toLowerCase().equals("GetControlDeviceInfo".toLowerCase())) {
                    LinkplayLog.i("UPNP-SEARCH", "GetControlDeviceInfo response failed");
                    UpnpDescriptionTools.a(upnpHeaders, urlT.getHost());
                    return;
                }
                return;
            }
            UpnpResponse upnpResponse = (UpnpResponse) outputMessage.f78411b;
            boolean zB = upnpResponse.b();
            ActionInvocation actionInvocation2 = this.actionInvocation;
            if (!zB) {
                success(actionInvocation2);
                return;
            }
            failure(actionInvocation2, upnpResponse);
            UpnpHeaders upnpHeaders2 = ((RemoteDeviceIdentity) ((RemoteDevice) remoteService.f78482e).f78444a).f78476f;
            if (this.actionInvocation.f78397a.a().toLowerCase().equals("GetControlDeviceInfo".toLowerCase())) {
                LinkplayLog.i("UPNP-SEARCH", "GetControlDeviceInfo failed Status: " + upnpResponse.f78418c);
                UpnpDescriptionTools.a(upnpHeaders2, urlT.getHost());
            }
        }
    }

    public synchronized ActionCallback setControlPoint(ControlPoint controlPoint) {
        this.controlPoint = controlPoint;
        return this;
    }

    public abstract void success(ActionInvocation actionInvocation);

    public String toString() {
        return "(ActionCallback) " + this.actionInvocation;
    }

    public ActionCallback(ActionInvocation actionInvocation) {
        this.actionInvocation = actionInvocation;
    }
}
