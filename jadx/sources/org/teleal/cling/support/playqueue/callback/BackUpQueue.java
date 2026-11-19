package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BackUpQueue extends ActionCallback {
    public BackUpQueue(Service service, String str) {
        this(new ActionInvocation(service.a("BackUpQueue")));
        getActionInvocation().b(str, "QueueContext");
    }

    public BackUpQueue(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public BackUpQueue(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
