package org.teleal.cling.support.avtransport.callback;

import java.util.Collections;
import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.support.model.PositionInfo;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetPositionInfo extends ActionCallback {
    private static Logger log = Logger.getLogger(GetPositionInfo.class.getName());

    public GetPositionInfo(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("GetPositionInfo")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
    }

    public abstract void received(ActionInvocation actionInvocation, PositionInfo positionInfo);

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        received(actionInvocation, new PositionInfo(Collections.unmodifiableMap(actionInvocation.f78399c)));
    }

    public GetPositionInfo(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }
}
