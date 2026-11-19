package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class HlsRedundantGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GroupKey f15305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f15306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f15307c;
    public String d;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Type {
    }

    public HlsRedundantGroup(GroupKey groupKey, String str, Uri uri, int i2) {
        this.f15305a = groupKey;
        HashMap map = new HashMap();
        this.f15306b = map;
        map.put(str, uri);
        this.d = str;
        ArrayList arrayList = new ArrayList();
        this.f15307c = arrayList;
        if (i2 != -1) {
            arrayList.add(Integer.valueOf(i2));
        }
    }

    public static ImmutableList a(List list) {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        for (int i2 = 0; i2 < list.size(); i2++) {
            HlsMultivariantPlaylist.Rendition rendition = (HlsMultivariantPlaylist.Rendition) list.get(i2);
            if (rendition.f15281a != null) {
                try {
                    d(rendition.f15281a, null, i2, arrayList, new GroupKey(rendition.f15282b, rendition.d, rendition.f15283c), map, map2);
                } catch (ParserException unused) {
                }
            }
        }
        return ImmutableList.t(arrayList);
    }

    public static ImmutableList b(List list) throws ParserException {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        for (int i2 = 0; i2 < list.size(); i2++) {
            HlsMultivariantPlaylist.Variant variant = (HlsMultivariantPlaylist.Variant) list.get(i2);
            d(variant.f15284a, variant.g, i2, arrayList, new GroupKey(variant.f15285b, variant.f15289h), map, map2);
        }
        return ImmutableList.t(arrayList);
    }

    public static void d(Uri uri, String str, int i2, ArrayList arrayList, GroupKey groupKey, HashMap map, HashMap map2) throws ParserException {
        int i3;
        String str2;
        Integer num = (Integer) map.get(groupKey);
        int i4 = 1;
        if (num == null) {
            map2.put(groupKey, 0);
            if (str == null) {
                map2.put(groupKey, 1);
                str = FileUtils.HIDDEN_PREFIX;
            }
            HlsRedundantGroup hlsRedundantGroup = new HlsRedundantGroup(groupKey, str, uri, i2);
            map.put(groupKey, Integer.valueOf(arrayList.size()));
            arrayList.add(hlsRedundantGroup);
            return;
        }
        if (str == null) {
            Integer num2 = (Integer) map2.get(groupKey);
            num2.getClass();
            int iIntValue = num2.intValue() + 1;
            if (iIntValue <= 1) {
                Preconditions.b(iIntValue, "invalid count: %s", iIntValue >= 0);
                str2 = iIntValue == 0 ? "" : FileUtils.HIDDEN_PREFIX;
            } else {
                long j2 = iIntValue;
                int i5 = (int) j2;
                if (i5 != j2) {
                    throw new ArrayIndexOutOfBoundsException(d21.g(j2, "Required array size too large: "));
                }
                char[] cArr = new char[i5];
                FileUtils.HIDDEN_PREFIX.getChars(0, 1, cArr, 0);
                while (true) {
                    i3 = i5 - i4;
                    if (i4 >= i3) {
                        break;
                    }
                    System.arraycopy(cArr, 0, cArr, i4, i4);
                    i4 <<= 1;
                }
                System.arraycopy(cArr, 0, cArr, i4, i3);
                str2 = new String(cArr);
            }
            map2.put(groupKey, Integer.valueOf(iIntValue));
            str = str2;
        }
        HlsRedundantGroup hlsRedundantGroup2 = (HlsRedundantGroup) arrayList.get(num.intValue());
        Uri uri2 = (Uri) hlsRedundantGroup2.f15306b.get(str);
        if (uri2 != null && !uri.equals(uri2)) {
            throw ParserException.b("Different playlist URLs are found for pathway ID " + str + " within the HlsRedundantGroup");
        }
        hlsRedundantGroup2.f15306b.put(str, uri);
        if (i2 != -1) {
            hlsRedundantGroup2.f15307c.add(Integer.valueOf(i2));
        }
    }

    public final Uri c() {
        Uri uri = (Uri) this.f15306b.get(this.d);
        uri.getClass();
        return uri;
    }

    public static class GroupKey {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Format f15308a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15309b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f15310c;

        public GroupKey(Format format, String str, String str2) {
            Format.Builder builderA = format.a();
            builderA.f13764a = null;
            builderA.f13772k = null;
            this.f15308a = new Format(builderA);
            this.f15309b = str;
            this.f15310c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GroupKey)) {
                return false;
            }
            GroupKey groupKey = (GroupKey) obj;
            return Objects.equals(this.f15308a, groupKey.f15308a) && Objects.equals(this.f15309b, groupKey.f15309b) && Objects.equals(this.f15310c, groupKey.f15310c);
        }

        public final int hashCode() {
            return Objects.hash(this.f15308a, this.f15309b, this.f15310c);
        }

        public GroupKey(Format format, String str) {
            this(format, str, null);
        }
    }

    public HlsRedundantGroup(GroupKey groupKey, String str, Uri uri) {
        this(groupKey, str, uri, -1);
    }
}
