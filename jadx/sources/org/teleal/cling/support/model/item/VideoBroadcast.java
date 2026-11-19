package org.teleal.cling.support.model.item;

import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.container.Container;

/* JADX INFO: loaded from: classes5.dex */
public class VideoBroadcast extends VideoItem {
    public static final DIDLObject.Class l = new DIDLObject.Class("object.item.videoItem.videoBroadcast");

    public VideoBroadcast() {
        this.g = l;
    }

    public VideoBroadcast(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.f78569a, str2, str3, resArr);
    }

    public VideoBroadcast(Item item) {
        super(item);
    }

    public VideoBroadcast(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        this.g = l;
    }
}
