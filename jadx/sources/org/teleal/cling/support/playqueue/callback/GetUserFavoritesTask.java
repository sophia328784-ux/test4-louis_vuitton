package org.teleal.cling.support.playqueue.callback;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetUserFavoritesTask extends ActionCallback {
    public GetUserFavoritesTask(Service service, String str, String str2, String str3) {
        this(new ActionInvocation(service.a("GetUserFavorites")));
        getActionInvocation().b(str, "AccountSource");
        getActionInvocation().b(str2, "MediaType");
        getActionInvocation().b(str3, "Filter");
    }

    public GetUserFavoritesTask(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public GetUserFavoritesTask(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
