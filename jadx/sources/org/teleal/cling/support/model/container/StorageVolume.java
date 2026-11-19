package org.teleal.cling.support.model.container;

import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$STORAGE_FREE;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$STORAGE_MEDIUM;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$STORAGE_TOTAL;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$STORAGE_USED;
import org.teleal.cling.support.model.StorageMedium;

/* JADX INFO: loaded from: classes5.dex */
public class StorageVolume extends Container {
    public static final DIDLObject.Class p = new DIDLObject.Class("object.container.storageVolume");

    public StorageVolume(String str, String str2, String str3, String str4, Integer num, Long l, Long l2, Long l3, StorageMedium storageMedium) {
        super(str, str2, str3, str4, p, num);
        if (l != null) {
            b(new DIDLObject$Property$UPNP$STORAGE_TOTAL(l));
        }
        if (l2 != null) {
            b(new DIDLObject$Property$UPNP$STORAGE_USED(l2));
        }
        if (l3 != null) {
            b(new DIDLObject$Property$UPNP$STORAGE_FREE(l3));
        }
        if (storageMedium != null) {
            b(new DIDLObject$Property$UPNP$STORAGE_MEDIUM(storageMedium));
        }
    }

    public StorageVolume(String str, Container container, String str2, String str3, Integer num, Long l, Long l2, Long l3, StorageMedium storageMedium) {
        this(str, container.f78569a, str2, str3, num, l, l2, l3, storageMedium);
    }

    public StorageVolume(Container container) {
        super(container);
    }

    public StorageVolume() {
        this.g = p;
    }
}
