package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class PlayQueueWithIndex extends ActionCallback {
    public PlayQueueWithIndex(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, String str, UnsignedIntegerFourBytes unsignedIntegerFourBytes2) {
        super(new ActionInvocation(service.a("PlayQueueWithIndex")));
        getActionInvocation().b(str, "QueueName");
        getActionInvocation().b(unsignedIntegerFourBytes2, "Index");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
    }

    public PlayQueueWithIndex(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public PlayQueueWithIndex(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service, null, null);
    }

    public PlayQueueWithIndex(Service service, String str, UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        this(new UnsignedIntegerFourBytes(0L), service, str, unsignedIntegerFourBytes);
    }

    public PlayQueueWithIndex(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
