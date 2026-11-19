package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetQueueLoopMode extends ActionCallback {
    public GetQueueLoopMode(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("GetQueueLoopMode")));
    }

    public GetQueueLoopMode(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetQueueLoopMode(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }
}
