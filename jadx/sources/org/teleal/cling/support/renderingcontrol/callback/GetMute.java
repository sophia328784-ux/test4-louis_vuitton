package org.teleal.cling.support.renderingcontrol.callback;

import com.linkplay.medialib.ContentTree;
import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.support.model.Channel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetMute extends ActionCallback {
    private static Logger log = Logger.getLogger(GetMute.class.getName());

    public GetMute(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("GetMute")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
        getActionInvocation().b(Channel.Master.toString(), "Channel");
    }

    public abstract void received(ActionInvocation actionInvocation, String str);

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        received(actionInvocation, ((Boolean) actionInvocation.a("CurrentMute").f78394b).booleanValue() ? "1" : ContentTree.ROOT_ID);
    }

    public GetMute(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }
}
