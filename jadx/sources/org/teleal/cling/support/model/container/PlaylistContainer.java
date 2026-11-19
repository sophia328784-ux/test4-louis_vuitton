package org.teleal.cling.support.model.container;

import org.teleal.cling.support.model.DIDLObject;

/* JADX INFO: loaded from: classes5.dex */
public class PlaylistContainer extends Container {
    public static final DIDLObject.Class p = new DIDLObject.Class("object.container.playlist");

    public PlaylistContainer(String str, String str2, String str3, String str4, Integer num) {
        super(str, str2, str3, str4, p, num);
    }

    public PlaylistContainer(String str, Container container, String str2, String str3, Integer num) {
        this(str, container.f78569a, str2, str3, num);
    }

    public PlaylistContainer(Container container) {
        super(container);
    }

    public PlaylistContainer() {
        this.g = p;
    }
}
