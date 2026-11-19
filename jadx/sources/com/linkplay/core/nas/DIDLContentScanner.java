package com.linkplay.core.nas;

import android.text.TextUtils;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import k.a;
import org.teleal.cling.support.model.DIDLContent;
import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DescMeta;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.container.Container;
import org.teleal.cling.support.model.item.Item;

/* JADX INFO: loaded from: classes5.dex */
public class DIDLContentScanner implements Serializable {
    private static final String tag = "didl";

    public static void doScan(DIDLContent dIDLContent) {
        ArrayList arrayList = dIDLContent.f78566a;
        arrayList.size();
        HashMap map = a.f71507a;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            HashMap map2 = a.f71507a;
            doScanContainerInfo((Container) arrayList.get(i2));
        }
    }

    public static void doScanContainerInfo(Container container) {
        if (container == null) {
            HashMap map = a.f71507a;
            return;
        }
        int iIntValue = container.f78601k.intValue();
        String str = container.d;
        String str2 = container.f78569a;
        String str3 = container.f78571c;
        String str4 = container.f78570b;
        List list = container.o;
        List list2 = container.f78575i;
        ArrayList arrayList = container.n;
        List list3 = container.m;
        int size = list.size();
        int size2 = list2.size();
        int size3 = arrayList.size();
        list3.size();
        String str5 = ((d21.k(d21.k(d21.k("id=" + str2 + ", ", "pid=", str4, ", "), "creator=", str, ", "), "title=", str3, ", ") + "childCount=" + iIntValue + ", ") + "itemSize=" + size + ", ") + "propSize=" + size2 + ", ";
        StringBuilder sb = new StringBuilder();
        sb.append(str5);
        sb.append("subSize=");
        sb.append(size3);
        sb.append(", ");
        HashMap map2 = a.f71507a;
        Iterator it = list3.iterator();
        while (it.hasNext()) {
            String str6 = ((DIDLObject.Class) it.next()).f78578b;
            HashMap map3 = a.f71507a;
        }
        HashMap map4 = a.f71507a;
    }

    public static void doScanItemInfo(Item item) {
        if (item == null) {
            return;
        }
        String str = item.d;
        String str2 = item.f78569a;
        String str3 = item.f78570b;
        String str4 = item.f78571c;
        List<DescMeta> list = item.f78576j;
        List<DIDLObject.Property> list2 = item.f78575i;
        List<Res> list3 = item.f78574h;
        StringBuilder sbU = n00.u(d21.k(d21.k(d21.k(fc.h("id=", str2, " ,"), "pid=", str3, " ,"), "title=", str4, " ,"), "creator=", str, " ,"), "metaDataSize=");
        sbU.append(list.size());
        sbU.append(" ,");
        StringBuilder sbU2 = n00.u(sbU.toString(), "propertiesSize=");
        sbU2.append(list2.size());
        sbU2.append(" ,");
        StringBuilder sbU3 = n00.u(sbU2.toString(), "ResSize=");
        sbU3.append(list3.size());
        sbU3.append(" ,");
        String strConcat = sbU3.toString().concat("===res====>");
        for (Res res : list3) {
            StringBuilder sbT = n00.t(strConcat);
            sbT.append(res.f78598b);
            strConcat = sbT.toString();
        }
        String strConcat2 = strConcat.concat("===property====>");
        for (DIDLObject.Property property : list2) {
            StringBuilder sbT2 = n00.t(strConcat2);
            sbT2.append(property.f78580b);
            sbT2.append(":");
            strConcat2 = defpackage.a.n(sbT2, property.f78579a, ",");
        }
        String strConcat3 = strConcat2.concat("===descMeta====>");
        for (DescMeta descMeta : list) {
            StringBuilder sbT3 = n00.t(strConcat3);
            sbT3.append(descMeta.f78582a.toString());
            strConcat3 = sbT3.toString();
        }
        HashMap map = a.f71507a;
    }

    public static String getAlbumArtURI(Item item) {
        if (item == null) {
            return "";
        }
        for (DIDLObject.Property property : item.f78575i) {
            if (property.f78580b.equalsIgnoreCase(ENUMNASMEDIAINFOTYPE.ALBUMARTURI.getValue())) {
                return property.f78579a.toString();
            }
        }
        return "";
    }

    public static String getDuration(Item item) {
        if (item == null) {
            return "";
        }
        for (Res res : item.f78574h) {
            String str = res.f78598b;
            if (str != null && str.trim().length() != 0) {
                return res.f78597a;
            }
        }
        return "";
    }

    public static String getNASMediaInfo(Item item, ENUMNASMEDIAINFOTYPE enumnasmediainfotype) {
        if (item == null) {
            return "";
        }
        for (DIDLObject.Property property : item.f78575i) {
            if (property != null) {
                String str = property.f78580b;
                if (TextUtils.isEmpty(str)) {
                    continue;
                } else {
                    String[] strArrSplit = str.split("\\$");
                    if (strArrSplit == null || strArrSplit.length == 0) {
                        break;
                    }
                    if (strArrSplit[strArrSplit.length - 1].equalsIgnoreCase(enumnasmediainfotype.getValue())) {
                        return property.f78579a.toString();
                    }
                }
            }
        }
        return "";
    }

    public static String getPlayUri(Item item) {
        if (item == null) {
            return "";
        }
        Iterator it = item.f78574h.iterator();
        while (it.hasNext()) {
            String str = ((Res) it.next()).f78598b;
            if (str != null && str.trim().length() != 0) {
                return str;
            }
        }
        return "";
    }

    public static boolean isAudio(Container container) {
        List list;
        if (container == null || (list = container.m) == null) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = ((DIDLObject.Class) it.next()).f78577a;
            if (str != null) {
                String lowerCase = str.toLowerCase();
                if (lowerCase.contains("object.item.audioItem".toLowerCase()) || lowerCase.equalsIgnoreCase("object.container.genre.musicGenre".toLowerCase()) || lowerCase.equalsIgnoreCase("object.container.album.musicAlbum")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isImage(Container container) {
        List list;
        if (container == null || (list = container.m) == null) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = ((DIDLObject.Class) it.next()).f78577a;
            if (str != null) {
                String lowerCase = str.toLowerCase();
                if (lowerCase.contains("object.item.imageItem.photo".toLowerCase()) || lowerCase.contains("object.container.album.photoAlbum".toLowerCase()) || lowerCase.contains("object.item.imageItem".toLowerCase())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isVedio(Container container) {
        List list;
        if (container == null || (list = container.m) == null) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = ((DIDLObject.Class) it.next()).f78577a;
            if (str != null) {
                String lowerCase = str.toLowerCase();
                if (lowerCase.contains("object.container.person.movieActor".toLowerCase()) || lowerCase.contains("object.item.videoItem".toLowerCase()) || lowerCase.contains("object.container.album.videoAlbum".toLowerCase()) || lowerCase.contains("object.container.genre.movieGenre".toLowerCase())) {
                    return true;
                }
            }
        }
        return false;
    }
}
