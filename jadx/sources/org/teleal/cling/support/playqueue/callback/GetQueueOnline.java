package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetQueueOnline extends ActionCallback {
    public GetQueueOnline(Service service, String str, String str2, String str3, int i2, String str4) {
        this(new ActionInvocation(service.a("GetQueueOnline")));
        getActionInvocation().b(str, "QueueName");
        getActionInvocation().b(str2, "QueueID");
        getActionInvocation().b(str3, "QueueType");
        getActionInvocation().b(new UnsignedIntegerFourBytes(i2), "Queuelimit");
        getActionInvocation().b(str4, "QueueAutoInsert");
    }

    public GetQueueOnline(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetQueueOnline(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
