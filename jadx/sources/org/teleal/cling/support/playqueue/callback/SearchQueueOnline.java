package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.support.playqueue.callback.browsequeue.BrowseQueue;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SearchQueueOnline extends BrowseQueue {
    public SearchQueueOnline(Service service, String str, String str2, int i2) {
        this(new ActionInvocation(service.a("SearchQueueOnline")));
        getActionInvocation().b(str, "QueueName");
        getActionInvocation().b(str2, "SearchKey");
        getActionInvocation().b(new UnsignedIntegerFourBytes(i2), "Queuelimit");
    }

    public SearchQueueOnline(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public SearchQueueOnline(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
