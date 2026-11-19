package org.teleal.cling.support.avtransport.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class GetTransportSettings extends ActionCallback {
    public GetTransportSettings(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("GetTransportSettings")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
    }

    public GetTransportSettings(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetTransportSettings(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }

    public GetTransportSettings(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
