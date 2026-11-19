package org.teleal.cling.support.model.item;

import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.Res;

/* JADX INFO: loaded from: classes5.dex */
public class AudioBroadcast extends AudioItem {
    public static final DIDLObject.Class l = new DIDLObject.Class("object.item.audioItem.audioBroadcast");

    public AudioBroadcast() {
        this.g = l;
    }

    public AudioBroadcast(Item item) {
        super(item);
    }

    public AudioBroadcast(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        this.g = l;
    }
}
