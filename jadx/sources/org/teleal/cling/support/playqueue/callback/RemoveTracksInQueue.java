package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class RemoveTracksInQueue extends ActionCallback {
    public RemoveTracksInQueue(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, String str, int i2, int i3) {
        super(new ActionInvocation(service.a("RemoveTracksInQueue")));
        getActionInvocation().b(str, "QueueName");
        getActionInvocation().b(new UnsignedIntegerFourBytes(i2), "RangStart");
        getActionInvocation().b(new UnsignedIntegerFourBytes(i3), "RangEnd");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
    }

    public RemoveTracksInQueue(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public RemoveTracksInQueue(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }

    public RemoveTracksInQueue(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        this(unsignedIntegerFourBytes, service, null, 0, 0);
    }

    public RemoveTracksInQueue(Service service, String str, int i2, int i3) {
        this(new UnsignedIntegerFourBytes(0L), service, str, i2, i3);
    }

    public RemoveTracksInQueue(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
