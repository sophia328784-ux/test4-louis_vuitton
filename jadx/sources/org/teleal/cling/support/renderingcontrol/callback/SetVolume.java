package org.teleal.cling.support.renderingcontrol.callback;

import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallbackNotResponse;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.model.types.UnsignedIntegerTwoBytes;
import org.teleal.cling.support.model.Channel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SetVolume extends ActionCallbackNotResponse {
    private static Logger log = Logger.getLogger(SetVolume.class.getName());

    public SetVolume(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, long j2) {
        super(new ActionInvocation(service.a("SetVolume")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
        getActionInvocation().b(Channel.Single.toString(), "Channel");
        getActionInvocation().b(new UnsignedIntegerTwoBytes(j2), "DesiredVolume");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallbackNotResponse
    public void success(ActionInvocation actionInvocation) {
        log.fine("Executed successfully");
    }

    public SetVolume(Service service, long j2) {
        this(new UnsignedIntegerFourBytes(0L), service, j2);
    }
}
