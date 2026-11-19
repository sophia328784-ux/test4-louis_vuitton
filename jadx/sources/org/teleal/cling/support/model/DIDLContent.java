package org.teleal.cling.support.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.teleal.cling.support.model.item.AudioBook;
import org.teleal.cling.support.model.item.AudioBroadcast;
import org.teleal.cling.support.model.item.AudioItem;
import org.teleal.cling.support.model.item.ImageItem;
import org.teleal.cling.support.model.item.Item;
import org.teleal.cling.support.model.item.Movie;
import org.teleal.cling.support.model.item.MusicTrack;
import org.teleal.cling.support.model.item.MusicVideoClip;
import org.teleal.cling.support.model.item.Photo;
import org.teleal.cling.support.model.item.PlaylistItem;
import org.teleal.cling.support.model.item.TextItem;
import org.teleal.cling.support.model.item.VideoBroadcast;
import org.teleal.cling.support.model.item.VideoItem;

/* JADX INFO: loaded from: classes5.dex */
public class DIDLContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f78566a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f78567b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f78568c = new ArrayList();

    public static ArrayList a(List list) {
        String str;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Item item = (Item) it.next();
            DIDLObject.Class r2 = item.g;
            if (r2 != null && (str = r2.f78577a) != null && str.contains("object.item.audioItem")) {
                if (AudioItem.f78602k.f78577a.equals(str)) {
                    arrayList.add(new AudioItem(item));
                } else if (MusicTrack.l.f78577a.equals(str)) {
                    arrayList.add(new MusicTrack(item));
                } else if (AudioBook.l.f78577a.equals(str)) {
                    arrayList.add(new AudioBook(item));
                } else if (AudioBroadcast.l.f78577a.equals(str)) {
                    arrayList.add(new AudioBroadcast(item));
                } else if (VideoItem.f78606k.f78577a.equals(str)) {
                    arrayList.add(new VideoItem(item));
                } else if (Movie.l.f78577a.equals(str)) {
                    arrayList.add(new Movie(item));
                } else if (VideoBroadcast.l.f78577a.equals(str)) {
                    arrayList.add(new VideoBroadcast(item));
                } else if (MusicVideoClip.l.f78577a.equals(str)) {
                    arrayList.add(new MusicVideoClip(item));
                } else if (ImageItem.f78603k.f78577a.equals(str)) {
                    arrayList.add(new ImageItem(item));
                } else if (Photo.l.f78577a.equals(str)) {
                    arrayList.add(new Photo(item));
                } else if (PlaylistItem.f78604k.f78577a.equals(str)) {
                    arrayList.add(new PlaylistItem(item));
                } else if (TextItem.f78605k.f78577a.equals(str)) {
                    arrayList.add(new TextItem(item));
                } else {
                    arrayList.add(item);
                }
            }
        }
        return arrayList;
    }
}
