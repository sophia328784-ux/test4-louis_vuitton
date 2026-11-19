package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SetQueueLoopMode extends ActionCallback {
    public SetQueueLoopMode(Service service, UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        super(new ActionInvocation(service.a("SetQueueLoopMode")));
        getActionInvocation().b(unsignedIntegerFourBytes, "LoopMode");
    }

    public SetQueueLoopMode(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public SetQueueLoopMode(Service service, int i2) {
        this(service, new UnsignedIntegerFourBytes(i2));
    }
}
