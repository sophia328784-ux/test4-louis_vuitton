package org.teleal.cling.support.model.container;

import java.util.List;
import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ALBUM;
import org.teleal.cling.support.model.item.Photo;

/* JADX INFO: loaded from: classes5.dex */
public class PhotoAlbum extends Album {
    public static final DIDLObject.Class q = new DIDLObject.Class("object.container.album.photoAlbum");

    public PhotoAlbum(String str, String str2, String str3, String str4, Integer num, List<Photo> list) {
        super(str, str2, str3, str4, num);
        this.g = q;
        Photo[] photoArr = (Photo[]) list.toArray(new Photo[list.size()]);
        if (photoArr != null) {
            for (Photo photo : photoArr) {
                String str5 = this.f78571c;
                photo.getClass();
                photo.b(new DIDLObject$Property$UPNP$ALBUM(str5));
                this.o.add(photo);
            }
        }
    }

    public PhotoAlbum(String str, Container container, String str2, String str3, Integer num) {
        this(str, container.f78569a, str2, str3, num, (List<Photo>) null);
    }

    public PhotoAlbum(String str, Container container, String str2, String str3, Integer num, List<Photo> list) {
        this(str, container.f78569a, str2, str3, num, list);
    }

    public PhotoAlbum(Container container) {
        super(container);
    }

    public PhotoAlbum(String str, String str2, String str3, String str4, Integer num) {
        this(str, str2, str3, str4, num, (List<Photo>) null);
    }

    public PhotoAlbum() {
        this.g = q;
    }
}
