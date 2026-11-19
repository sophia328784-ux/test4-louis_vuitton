package org.teleal.cling.registry;

import java.util.Collection;
import org.teleal.cling.model.gena.LocalGENASubscription;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public interface Registry {
    LocalDevice a(UDN udn);

    boolean b(LocalDevice localDevice);

    Collection c();

    void d(LocalGENASubscription localGENASubscription);

    void e();

    boolean f(LocalGENASubscription localGENASubscription);

    boolean g(RemoteDevice remoteDevice);

    void h();
}
