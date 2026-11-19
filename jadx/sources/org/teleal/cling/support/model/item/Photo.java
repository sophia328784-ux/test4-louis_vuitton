package org.teleal.cling.support.model.item;

import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ALBUM;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.container.Container;

/* JADX INFO: loaded from: classes5.dex */
public class Photo extends ImageItem {
    public static final DIDLObject.Class l = new DIDLObject.Class("object.item.imageItem.photo");

    public Photo(String str, String str2, String str3, String str4, String str5, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        this.g = l;
        if (str5 != null) {
            b(new DIDLObject$Property$UPNP$ALBUM(str5));
        }
    }

    public Photo(String str, Container container, String str2, String str3, String str4, Res... resArr) {
        this(str, container.f78569a, str2, str3, str4, resArr);
    }

    public Photo(Item item) {
        super(item);
    }

    public Photo() {
        this.g = l;
    }
}
