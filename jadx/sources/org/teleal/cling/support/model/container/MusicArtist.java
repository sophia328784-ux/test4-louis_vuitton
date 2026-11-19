package org.teleal.cling.support.model.container;

import org.teleal.cling.support.model.DIDLObject;

/* JADX INFO: loaded from: classes5.dex */
public class MusicArtist extends PersonContainer {
    public static final DIDLObject.Class q = new DIDLObject.Class("object.container.person.musicArtist");

    public MusicArtist() {
        this.g = q;
    }

    public MusicArtist(String str, Container container, String str2, String str3, Integer num) {
        this(str, container.f78569a, str2, str3, num);
    }

    public MusicArtist(Container container) {
        super(container);
    }

    public MusicArtist(String str, String str2, String str3, String str4, Integer num) {
        super(str, str2, str3, str4, num);
        this.g = q;
    }
}
