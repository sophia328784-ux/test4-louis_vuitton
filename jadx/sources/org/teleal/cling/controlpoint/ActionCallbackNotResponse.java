package org.teleal.cling.controlpoint;

import defpackage.md;
import defpackage.n00;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.action.ActionExecutor;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Action;
import org.teleal.cling.model.meta.LocalService;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.meta.RemoteService;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ActionCallbackNotResponse implements Runnable {
    protected final ActionInvocation actionInvocation;
    protected ControlPoint controlPoint;

    public ActionCallbackNotResponse(ActionInvocation actionInvocation, ControlPoint controlPoint) {
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
    public void run() {
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
            getControlPoint().a().a(this.actionInvocation, ((RemoteDevice) remoteService.f78482e).t(remoteService.g)).run();
            success(this.actionInvocation);
        }
    }

    public synchronized ActionCallbackNotResponse setControlPoint(ControlPoint controlPoint) {
        this.controlPoint = controlPoint;
        return this;
    }

    public abstract void success(ActionInvocation actionInvocation);

    public String toString() {
        return "(ActionCallbackNotResponse) " + this.actionInvocation;
    }

    public ActionCallbackNotResponse(ActionInvocation actionInvocation) {
        this.actionInvocation = actionInvocation;
    }
}
