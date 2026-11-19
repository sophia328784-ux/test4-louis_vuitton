package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetUserInfoTask extends ActionCallback {
    public GetUserInfoTask(Service service, String str, boolean z) {
        this(new ActionInvocation(service.a("GetUserInfo")));
        getActionInvocation().b(str, "AccountSource");
        if (z) {
            getActionInvocation().b("1", "RefreshToken");
        }
    }

    public GetUserInfoTask(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetUserInfoTask(Service service, String str) {
        this(new ActionInvocation(service.a("GetUserInfo")));
        getActionInvocation().b(str, "AccountSource");
    }

    public GetUserInfoTask(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }

    public GetUserInfoTask(Service service, String str, String str2) {
        this(new ActionInvocation(service.a("GetUserInfo")));
        getActionInvocation().b(str, "AccountSource");
        getActionInvocation().b(str2, "Version");
    }
}
