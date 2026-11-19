package org.teleal.cling.support.renderingcontrol.callback.alarm;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetAlarmQueue extends ActionCallback {
    public GetAlarmQueue(Service<Device, Service> service, String str) {
        this(new ActionInvocation(service.a("GetAlarmQueue")));
        getActionInvocation().b(str, "AlarmName");
    }

    public GetAlarmQueue(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetAlarmQueue(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
