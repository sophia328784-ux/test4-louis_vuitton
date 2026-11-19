package org.teleal.cling.support.renderingcontrol.callback;

import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.support.model.Channel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SetMute extends ActionCallback {
    private static Logger log = Logger.getLogger(SetMute.class.getName());

    public SetMute(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, boolean z) {
        super(new ActionInvocation(service.a("SetMute")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
        getActionInvocation().b(Channel.Master.toString(), "Channel");
        getActionInvocation().b(Boolean.valueOf(z), "DesiredMute");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        log.fine("Executed successfully");
    }

    public SetMute(Service service, boolean z) {
        this(new UnsignedIntegerFourBytes(0L), service, z);
    }
}
