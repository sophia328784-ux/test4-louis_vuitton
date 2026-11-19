package org.teleal.cling.support.renderingcontrol.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class StreamServicesCapability extends ActionCallback {
    public StreamServicesCapability(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("StreamServicesCapability")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
        getActionInvocation().b("1.0", "AppVersion");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
    }

    public StreamServicesCapability(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }
}
