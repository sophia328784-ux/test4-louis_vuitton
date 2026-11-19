package org.teleal.cling.support.avtransport.callback;

import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetPDADeviceInfo extends ActionCallback {
    private static Logger log = Logger.getLogger(GetPDADeviceInfo.class.getName());

    public GetPDADeviceInfo(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("GetPDADeviceInfo")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
    }

    public GetPDADeviceInfo(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetPDADeviceInfo(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }

    public GetPDADeviceInfo(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
