package org.teleal.cling.support.avtransport.callback;

import com.android.wiimu.model.pda.a;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SetPDADeviceInfo extends ActionCallback {
    public SetPDADeviceInfo(Service service, UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str, String str2, String str3, String str4, String str5, String str6) {
        super(new ActionInvocation(service.a("SetPDAClientCfg")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
        getActionInvocation().b(str, "clientId");
        getActionInvocation().b(str2, "hostId");
        getActionInvocation().b(str3, "certificateCrt");
        getActionInvocation().b(str4, "privateKey");
        getActionInvocation().b(str5, "linkplay_account_info");
        getActionInvocation().b(str6, "linkplayHostInfo");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
    }

    public SetPDADeviceInfo(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public SetPDADeviceInfo(Service service, a aVar) {
        this(service, new UnsignedIntegerFourBytes(0L), aVar.b(), aVar.c(), aVar.a(), aVar.f(), aVar.e(), aVar.d());
    }

    public SetPDADeviceInfo(Service service, String str, String str2, String str3, String str4, String str5) {
        this(service, new UnsignedIntegerFourBytes(0L), str, str2, str3, str4, str5, "");
    }

    public SetPDADeviceInfo(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }
}
