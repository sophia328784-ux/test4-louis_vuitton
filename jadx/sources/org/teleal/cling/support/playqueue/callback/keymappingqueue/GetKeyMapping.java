package org.teleal.cling.support.playqueue.callback.keymappingqueue;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetKeyMapping extends ActionCallback {
    public GetKeyMapping(Service service) {
        this(new ActionInvocation(service.a("GetKeyMapping")));
    }

    public GetKeyMapping(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetKeyMapping(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
