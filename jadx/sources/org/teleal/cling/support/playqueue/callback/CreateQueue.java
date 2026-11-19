package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CreateQueue extends ActionCallback {
    public CreateQueue(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, String str) {
        super(new ActionInvocation(service.a("CreateQueue")));
        getActionInvocation().b(str, "QueueContext");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
    }

    public CreateQueue(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public CreateQueue(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }

    public CreateQueue(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        this(unsignedIntegerFourBytes, service, null);
    }

    public CreateQueue(Service service, String str) {
        this(new UnsignedIntegerFourBytes(0L), service, str);
    }

    public CreateQueue(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
