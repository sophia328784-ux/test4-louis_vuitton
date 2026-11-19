package org.teleal.cling.support.model.container;

import org.teleal.cling.support.model.DIDLObject;

/* JADX INFO: loaded from: classes5.dex */
public class MusicGenre extends GenreContainer {
    public static final DIDLObject.Class q = new DIDLObject.Class("object.container.genre.musicGenre");

    public MusicGenre() {
        this.g = q;
    }

    public MusicGenre(String str, Container container, String str2, String str3, Integer num) {
        this(str, container.f78569a, str2, str3, num);
    }

    public MusicGenre(Container container) {
        super(container);
    }

    public MusicGenre(String str, String str2, String str3, String str4, Integer num) {
        super(str, str2, str3, str4, num);
        this.g = q;
    }
}
