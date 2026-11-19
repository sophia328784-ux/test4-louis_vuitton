package org.teleal.cling.support.renderingcontrol.callback;

import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallbackNotResponse;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.model.types.UnsignedIntegerTwoBytes;
import org.teleal.cling.support.model.Channel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SetChannel extends ActionCallbackNotResponse {
    private static Logger log = Logger.getLogger(SetChannel.class.getName());

    public SetChannel(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, int i2) {
        super(new ActionInvocation(service.a("SetChannel")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
        getActionInvocation().b(Channel.Master.toString(), "Channel");
        getActionInvocation().b(new UnsignedIntegerTwoBytes(i2), "DesiredChannel");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallbackNotResponse
    public void success(ActionInvocation actionInvocation) {
        log.fine("Executed successfully");
    }

    public SetChannel(Service service, int i2) {
        this(new UnsignedIntegerFourBytes(0L), service, i2);
    }
}
