package org.teleal.cling.support.avtransport.callback;

import org.teleal.cling.controlpoint.ActionCallbackNotResponse;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class SeekBackward extends ActionCallbackNotResponse {
    public SeekBackward(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("SeekBackward")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallbackNotResponse
    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
    }

    @Override // org.teleal.cling.controlpoint.ActionCallbackNotResponse
    public void success(ActionInvocation actionInvocation) {
    }

    public SeekBackward(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public SeekBackward(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }

    public SeekBackward(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
