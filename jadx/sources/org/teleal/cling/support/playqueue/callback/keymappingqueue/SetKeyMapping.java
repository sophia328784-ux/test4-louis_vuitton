package org.teleal.cling.support.playqueue.callback.keymappingqueue;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SetKeyMapping extends ActionCallback {
    String QueueContext;

    public SetKeyMapping(Service service, String str) {
        this(new ActionInvocation(service.a("SetKeyMapping")));
        getActionInvocation().b(str, "QueueContext");
        this.QueueContext = str;
    }

    public SetKeyMapping(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public SetKeyMapping(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
