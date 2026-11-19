package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class AppendTracksInQueueEx extends ActionCallback {
    public AppendTracksInQueueEx(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, String str, int i2, int i3) {
        super(new ActionInvocation(service.a("AppendTracksInQueueEx")));
        getActionInvocation().b(str, "QueueContext");
        getActionInvocation().b(new UnsignedIntegerFourBytes(i3), "Direction");
        getActionInvocation().b(new UnsignedIntegerFourBytes(i2), "StartIndex");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
    }

    public AppendTracksInQueueEx(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public AppendTracksInQueueEx(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }

    public AppendTracksInQueueEx(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        this(unsignedIntegerFourBytes, service, null, 0, 0);
    }

    public AppendTracksInQueueEx(Service service, String str, int i2, int i3) {
        this(new UnsignedIntegerFourBytes(0L), service, str, i2, i3);
    }

    public AppendTracksInQueueEx(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
