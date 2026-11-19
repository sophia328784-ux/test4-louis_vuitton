package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UserRegister extends ActionCallback {
    public UserRegister(Service service, String str, String str2, String str3) {
        this(new ActionInvocation(service.a("UserRegister")));
        getActionInvocation().b(str, "QueueName");
        getActionInvocation().b(str2, "UserName");
        getActionInvocation().b(str3, "PassWord");
    }

    public UserRegister(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public UserRegister(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
