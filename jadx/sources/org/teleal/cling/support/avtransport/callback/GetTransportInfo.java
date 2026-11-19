package org.teleal.cling.support.avtransport.callback;

import java.util.Collections;
import java.util.Map;
import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionArgumentValue;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.support.model.TransportInfo;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetTransportInfo extends ActionCallback {
    private static Logger log = Logger.getLogger(GetTransportInfo.class.getName());

    public GetTransportInfo(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("GetTransportInfo")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
    }

    public abstract void received(ActionInvocation actionInvocation, TransportInfo transportInfo);

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        if (actionInvocation == null) {
            return;
        }
        received(actionInvocation, new TransportInfo((Map<String, ActionArgumentValue>) Collections.unmodifiableMap(actionInvocation.f78399c)));
    }

    public GetTransportInfo(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }
}
