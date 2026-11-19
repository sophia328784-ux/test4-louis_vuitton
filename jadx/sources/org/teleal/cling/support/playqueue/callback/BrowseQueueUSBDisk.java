package org.teleal.cling.support.playqueue.callback;

import com.android.wiimu.model.IWiimuPlayQueueType;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BrowseQueueUSBDisk extends ActionCallback {
    String QueueName;

    public BrowseQueueUSBDisk(Service service, String str) {
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

    public BrowseQueueUSBDisk(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public BrowseQueueUSBDisk(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }

    public BrowseQueueUSBDisk(Service service) {
        this(service, IWiimuPlayQueueType.ExtUSBDiskQueue);
    }
}
