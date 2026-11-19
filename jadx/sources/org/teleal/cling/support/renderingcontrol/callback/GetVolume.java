package org.teleal.cling.support.renderingcontrol.callback;

import defpackage.cj;
import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.ErrorCode;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.support.model.Channel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetVolume extends ActionCallback {
    private static Logger log = Logger.getLogger(GetVolume.class.getName());

    public GetVolume(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("GetVolume")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
        getActionInvocation().b(Channel.Single.toString(), "Channel");
    }

    public abstract void received(ActionInvocation actionInvocation, int i2);

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        int iIntValue;
        boolean z;
        try {
            iIntValue = Integer.valueOf(actionInvocation.a("CurrentVolume").f78394b.toString()).intValue();
            z = true;
        } catch (Exception e2) {
            actionInvocation.d = new ActionException(ErrorCode.ACTION_FAILED, cj.j("Can't parse ProtocolInfo response: ", e2), e2);
            failure(actionInvocation, null);
            iIntValue = 0;
            z = false;
        }
        if (z) {
            received(actionInvocation, iIntValue);
        }
    }

    public GetVolume(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }
}
