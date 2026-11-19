package org.teleal.cling.support.model.item;

import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ALBUM;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ARTIST;
import org.teleal.cling.support.model.PersonWithRole;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.container.Container;

/* JADX INFO: loaded from: classes5.dex */
public class MusicTrack extends AudioItem {
    public static final DIDLObject.Class l = new DIDLObject.Class("object.item.audioItem.musicTrack");

    public MusicTrack(String str, String str2, String str3, String str4, String str5, PersonWithRole personWithRole, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        this.g = l;
        if (str5 != null) {
            b(new DIDLObject$Property$UPNP$ALBUM(str5));
        }
        if (personWithRole != null) {
            a(new DIDLObject$Property$UPNP$ARTIST(personWithRole));
        }
    }

    public MusicTrack(String str, Container container, String str2, String str3, String str4, String str5, Res... resArr) {
        this(str, container.f78569a, str2, str3, str4, str5, resArr);
    }

    public MusicTrack(String str, Container container, String str2, String str3, String str4, PersonWithRole personWithRole, Res... resArr) {
        this(str, container.f78569a, str2, str3, str4, personWithRole, resArr);
    }

    public MusicTrack(Item item) {
        super(item);
    }

    public MusicTrack(String str, String str2, String str3, String str4, String str5, String str6, Res... resArr) {
        this(str, str2, str3, str4, str5, new PersonWithRole(str6), resArr);
    }

    public MusicTrack() {
        this.g = l;
    }
}
