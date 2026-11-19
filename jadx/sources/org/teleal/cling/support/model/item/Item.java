package org.teleal.cling.support.model.item;

import java.util.ArrayList;
import java.util.List;
import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DescMeta;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.WriteStatus;
import org.teleal.cling.support.model.container.Container;

/* JADX INFO: loaded from: classes5.dex */
public class Item extends DIDLObject {
    public Item(String str, Container container, String str2, String str3, DIDLObject.Class r17, String str4) {
        this(str, container.f78569a, str2, str3, false, null, r17, new ArrayList(), new ArrayList(), new ArrayList(), str4);
    }

    public Item(String str, Container container, String str2, String str3, DIDLObject.Class r16) {
        this(str, container.f78569a, str2, str3, false, null, r16, new ArrayList(), new ArrayList(), new ArrayList());
    }

    public Item() {
    }

    public Item(Item item) {
        super(item);
    }

    public Item(String str, String str2, String str3, String str4, boolean z, WriteStatus writeStatus, DIDLObject.Class r7, List<Res> list, List<DIDLObject.Property> list2, List<DescMeta> list3) {
        super(str, str2, str3, str4, z, writeStatus, r7, list, list2, list3);
    }

    public Item(String str, String str2, String str3, String str4, boolean z, WriteStatus writeStatus, DIDLObject.Class r7, List<Res> list, List<DIDLObject.Property> list2, List<DescMeta> list3, String str5) {
        super(str, str2, str3, str4, z, writeStatus, r7, list, list2, list3);
    }

    public Item(String str, String str2, String str3, String str4, DIDLObject.Class r16) {
        this(str, str2, str3, str4, false, null, r16, new ArrayList(), new ArrayList(), new ArrayList());
    }

    public Item(String str, String str2, String str3, String str4, DIDLObject.Class r17, String str5) {
        this(str, str2, str3, str4, false, null, r17, new ArrayList(), new ArrayList(), new ArrayList(), str5);
    }
}
