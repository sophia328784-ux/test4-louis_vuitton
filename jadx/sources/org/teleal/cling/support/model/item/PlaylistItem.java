package org.teleal.cling.support.model.item;

import java.util.Arrays;
import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.container.Container;

/* JADX INFO: loaded from: classes5.dex */
public class PlaylistItem extends Item {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final DIDLObject.Class f78604k = new DIDLObject.Class("object.item.playlistItem");

    public PlaylistItem(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, f78604k);
        if (resArr != null) {
            this.f78574h.addAll(Arrays.asList(resArr));
        }
    }

    public PlaylistItem(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.f78569a, str2, str3, resArr);
    }

    public PlaylistItem(Item item) {
        super(item);
    }

    public PlaylistItem() {
        this.g = f78604k;
    }
}
