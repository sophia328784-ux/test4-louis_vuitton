package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetUserLoginTask extends ActionCallback {
    public GetUserLoginTask(Service service, String str, String str2, String str3, String str4, String str5) {
        this(new ActionInvocation(service.a("UserLogin")));
        getActionInvocation().b(str, "AccountSource");
        getActionInvocation().b(str2, "UserName");
        getActionInvocation().b(str3, "PassWord");
        getActionInvocation().b(new UnsignedIntegerFourBytes(0L), "SavePass");
        getActionInvocation().b(str4, "Code");
        getActionInvocation().b(str5, "Proxy");
    }

    public GetUserLoginTask(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetUserLoginTask(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
