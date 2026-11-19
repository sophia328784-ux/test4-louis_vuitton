package org.teleal.cling.support.renderingcontrol.callback;

import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.support.model.Channel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetChannel extends ActionCallback {
    private static Logger log = Logger.getLogger(GetChannel.class.getName());

    public GetChannel(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("GetChannel")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
        getActionInvocation().b(Channel.Master.toString(), "Channel");
    }

    public abstract void received(ActionInvocation actionInvocation, int i2);

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        received(actionInvocation, Integer.parseInt(actionInvocation.a("CurrentChannel").f78394b.toString()));
    }

    public GetChannel(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }
}
