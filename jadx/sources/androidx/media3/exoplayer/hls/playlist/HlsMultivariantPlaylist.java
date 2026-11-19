package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class HlsMultivariantPlaylist extends HlsPlaylist {
    public static final HlsMultivariantPlaylist n;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f15275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f15276f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f15277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f15278i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Format f15279j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f15280k;
    public final Map l;
    public final List m;

    public static final class Rendition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f15281a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Format f15282b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f15283c;
        public final String d;

        public Rendition(Uri uri, Format format, String str, String str2, String str3) {
            this.f15281a = uri;
            this.f15282b = format;
            this.f15283c = str2;
            this.d = str3;
        }
    }

    public static final class Variant {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f15284a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Format f15285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f15286c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f15287e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f15288f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f15289h;

        public Variant(Uri uri, Format format, String str, String str2, String str3, String str4, String str5, String str6) {
            this.f15284a = uri;
            this.f15285b = format;
            this.f15286c = str;
            this.d = str2;
            this.f15287e = str3;
            this.f15288f = str4;
            this.g = str5;
            this.f15289h = str6;
        }
    }

    static {
        List list = Collections.EMPTY_LIST;
        n = new HlsMultivariantPlaylist("", list, list, list, list, list, list, null, list, false, Collections.EMPTY_MAP, list);
    }

    public HlsMultivariantPlaylist(String str, List<String> list, List<Variant> list2, List<Rendition> list3, List<Rendition> list4, List<Rendition> list5, List<Rendition> list6, Format format, List<Format> list7, boolean z, Map<String, String> map, List<DrmInitData> list8) {
        super(str, list, z);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list2.size(); i2++) {
            Uri uri = list2.get(i2).f15284a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        b(list3, arrayList);
        b(list4, arrayList);
        b(list5, arrayList);
        b(list6, arrayList);
        this.d = Collections.unmodifiableList(arrayList);
        this.f15275e = Collections.unmodifiableList(list2);
        this.f15276f = Collections.unmodifiableList(list3);
        this.g = Collections.unmodifiableList(list4);
        this.f15277h = Collections.unmodifiableList(list5);
        this.f15278i = Collections.unmodifiableList(list6);
        this.f15279j = format;
        this.f15280k = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.l = Collections.unmodifiableMap(map);
        this.m = Collections.unmodifiableList(list8);
    }

    public static void b(List list, ArrayList arrayList) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            Uri uri = ((Rendition) list.get(i2)).f15281a;
            if (uri != null && !arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
    }

    public static ArrayList c(int i2, List list, List list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object obj = list.get(i3);
            for (int i4 = 0; i4 < list2.size(); i4++) {
                StreamKey streamKey = (StreamKey) list2.get(i4);
                if (streamKey.f13944c == i2 && streamKey.d == i3) {
                    arrayList.add(obj);
                    break;
                }
            }
        }
        return arrayList;
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public final Object a(List list) {
        ArrayList arrayListC = c(0, this.f15275e, list);
        List list2 = Collections.EMPTY_LIST;
        return new HlsMultivariantPlaylist(this.f15290a, this.f15291b, arrayListC, list2, c(1, this.g, list), c(2, this.f15277h, list), list2, this.f15279j, this.f15280k, this.f15292c, this.l, this.m);
    }
}
