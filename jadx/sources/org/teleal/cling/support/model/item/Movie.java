package org.teleal.cling.support.model.item;

import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.container.Container;

/* JADX INFO: loaded from: classes5.dex */
public class Movie extends VideoItem {
    public static final DIDLObject.Class l = new DIDLObject.Class("object.item.videoItem.movie");

    public Movie() {
        this.g = l;
    }

    public Movie(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.f78569a, str2, str3, resArr);
    }

    public Movie(Item item) {
        super(item);
    }

    public Movie(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        this.g = l;
    }
}
