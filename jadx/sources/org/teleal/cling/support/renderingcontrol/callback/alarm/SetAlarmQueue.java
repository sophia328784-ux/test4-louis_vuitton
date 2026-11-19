package org.teleal.cling.support.renderingcontrol.callback.alarm;

import com.android.wiimu.model.cling_callback.renderingcontrol.alarm.b;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SetAlarmQueue extends ActionCallback {
    public SetAlarmQueue(Service<Device, Service> service, b bVar) {
        this(new ActionInvocation(service.a("SetAlarmQueue")));
        getActionInvocation().b(bVar.toString(), "AlarmContext");
    }

    public SetAlarmQueue(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public SetAlarmQueue(Service<Device, Service> service, String str) {
        this(new ActionInvocation(service.a("SetAlarmQueue")));
        getActionInvocation().b(str, "AlarmContext");
    }

    public SetAlarmQueue(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
