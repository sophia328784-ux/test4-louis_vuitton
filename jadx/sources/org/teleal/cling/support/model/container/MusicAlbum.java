package org.teleal.cling.support.model.container;

import java.util.List;
import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ALBUM;
import org.teleal.cling.support.model.item.MusicTrack;

/* JADX INFO: loaded from: classes5.dex */
public class MusicAlbum extends Album {
    public static final DIDLObject.Class q = new DIDLObject.Class("object.container.album.musicAlbum");

    public MusicAlbum(String str, String str2, String str3, String str4, Integer num, List<MusicTrack> list) {
        super(str, str2, str3, str4, num);
        this.g = q;
        MusicTrack[] musicTrackArr = (MusicTrack[]) list.toArray(new MusicTrack[list.size()]);
        if (musicTrackArr != null) {
            for (MusicTrack musicTrack : musicTrackArr) {
                String str5 = this.f78571c;
                musicTrack.getClass();
                musicTrack.b(new DIDLObject$Property$UPNP$ALBUM(str5));
                this.o.add(musicTrack);
            }
        }
    }

    public MusicAlbum(String str, Container container, String str2, String str3, Integer num) {
        this(str, container.f78569a, str2, str3, num, (List<MusicTrack>) null);
    }

    public MusicAlbum(String str, Container container, String str2, String str3, Integer num, List<MusicTrack> list) {
        this(str, container.f78569a, str2, str3, num, list);
    }

    public MusicAlbum(Container container) {
        super(container);
    }

    public MusicAlbum(String str, String str2, String str3, String str4, Integer num) {
        this(str, str2, str3, str4, num, (List<MusicTrack>) null);
    }

    public MusicAlbum() {
        this.g = q;
    }
}
