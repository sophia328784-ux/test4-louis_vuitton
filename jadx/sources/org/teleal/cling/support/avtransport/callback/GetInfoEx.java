package org.teleal.cling.support.avtransport.callback;

import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetInfoEx extends ActionCallback {
    private static Logger log = Logger.getLogger(GetInfoEx.class.getName());

    public GetInfoEx(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("GetInfoEx")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
    }

    public GetInfoEx(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetInfoEx(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }

    public GetInfoEx(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
