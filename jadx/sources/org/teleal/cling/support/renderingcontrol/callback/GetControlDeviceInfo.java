package org.teleal.cling.support.renderingcontrol.callback;

import com.linkplay.log.LinkplayLog;
import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.protocol.UpnpUDNManager;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GetControlDeviceInfo extends ActionCallback {
    private static Logger log = Logger.getLogger(GetControlDeviceInfo.class.getName());
    private String udn;

    public GetControlDeviceInfo(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.a("GetControlDeviceInfo")));
        this.udn = "";
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse) {
        String str;
        super.failure(actionInvocation, upnpResponse);
        StringBuilder sb = new StringBuilder("GetControlDeviceInfo failed: ");
        sb.append(this.udn.toString());
        if (upnpResponse == null) {
            str = "";
        } else {
            str = ", " + upnpResponse.a() + ", " + upnpResponse.f78418c;
        }
        sb.append(str);
        LinkplayLog.i("UPNP-SEARCH", sb.toString());
        UpnpUDNManager.f78538c.e(this.udn.toString());
    }

    public GetControlDeviceInfo(Service service, String str) {
        this(new UnsignedIntegerFourBytes(0L), service);
        this.udn = str;
    }

    private GetControlDeviceInfo(Service service) {
        this(new UnsignedIntegerFourBytes(0L), service);
    }
}
