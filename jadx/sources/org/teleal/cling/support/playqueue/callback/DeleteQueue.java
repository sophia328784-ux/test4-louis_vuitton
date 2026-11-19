package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DeleteQueue extends ActionCallback {
    public DeleteQueue(Service service, String str) {
        this(new ActionInvocation(service.a("DeleteQueue")));
        getActionInvocation().b(str, "QueueName");
    }

    public DeleteQueue(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public DeleteQueue(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
