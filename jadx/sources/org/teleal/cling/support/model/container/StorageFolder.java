package org.teleal.cling.support.model.container;

import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$STORAGE_USED;

/* JADX INFO: loaded from: classes5.dex */
public class StorageFolder extends Container {
    public static final DIDLObject.Class p = new DIDLObject.Class("object.container.storageFolder");

    public StorageFolder(String str, String str2, String str3, String str4, Integer num, Long l) {
        super(str, str2, str3, str4, p, num);
        if (l != null) {
            b(new DIDLObject$Property$UPNP$STORAGE_USED(l));
        }
    }

    public StorageFolder(String str, Container container, String str2, String str3, Integer num, Long l) {
        this(str, container.f78569a, str2, str3, num, l);
    }

    public StorageFolder(Container container) {
        super(container);
    }

    public StorageFolder() {
        this.g = p;
    }
}
