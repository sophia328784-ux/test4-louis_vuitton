package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class GetQueueIndex extends ActionCallback {
    public GetQueueIndex(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, String str) {
        super(new ActionInvocation(service.a("GetQueueIndex")));
        getActionInvocation().b(str, "QueueName");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
    }

    public GetQueueIndex(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetQueueIndex(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }

    public GetQueueIndex(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        this(unsignedIntegerFourBytes, service, null);
    }

    public GetQueueIndex(Service service, String str) {
        this(new UnsignedIntegerFourBytes(0L), service, str);
    }

    public GetQueueIndex(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
