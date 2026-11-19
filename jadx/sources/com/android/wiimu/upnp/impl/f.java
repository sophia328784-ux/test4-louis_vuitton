package com.android.wiimu.upnp.impl;

import java.util.HashSet;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.cling.model.types.UDAServiceType;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f22580a = "AVTransport";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f22581b = "RenderingControl";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22582c = "PlayQueue";
    public static final String d = "ContentDirectory";

    public static Service a(Device device) throws Exception {
        return device.e(new UDAServiceType(f22580a));
    }

    public static Service b(Device device) throws Exception {
        return device.e(new UDAServiceType(d));
    }

    public static Service c(Device device) throws Exception {
        ServiceId serviceIdA = ServiceId.a("urn:wiimu-com:serviceId:PlayQueue");
        device.getClass();
        HashSet hashSetF = Device.f(null, serviceIdA, device);
        if (hashSetF.size() == 1) {
            return (Service) hashSetF.iterator().next();
        }
        return null;
    }

    public static Service d(Device device) throws Exception {
        return device.e(new UDAServiceType(f22581b));
    }
}
