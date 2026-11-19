package org.teleal.cling.support.playqueue.callback;

import com.batch.android.v0.a;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SetSongsRecord extends ActionCallback {
    public SetSongsRecord(Service service, String str, String str2, String str3) {
        this(new ActionInvocation(service.a("SetSongsRecord")));
        getActionInvocation().b(str, "QueueName");
        getActionInvocation().b(str2, "SongID");
        getActionInvocation().b(str3, a.d);
    }

    public SetSongsRecord(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public SetSongsRecord(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
