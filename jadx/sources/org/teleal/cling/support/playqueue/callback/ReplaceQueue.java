package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ReplaceQueue extends ActionCallback {
    public ReplaceQueue(Service service, String str) {
        this(new ActionInvocation(service.a("ReplaceQueue")));
        getActionInvocation().b(str, "QueueContext");
    }

    public ReplaceQueue(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public ReplaceQueue(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
