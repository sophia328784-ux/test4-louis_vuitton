package org.teleal.cling.support.playqueue.callback.browsequeue;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BrowseQueue extends ActionCallback {
    protected String QueueName;

    public interface BrowseQueueType {
    }

    public BrowseQueue(Service service, String str) {
        this(new ActionInvocation(service.a("BrowseQueue")));
        getActionInvocation().b(str, "QueueName");
        this.QueueName = str;
    }

    public abstract void received(String str, Object obj);

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        try {
            received(this.QueueName, actionInvocation.a("QueueContext").f78394b);
        } catch (Exception e2) {
            failure(actionInvocation, null, e2.toString());
        }
    }

    public BrowseQueue(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public BrowseQueue(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
