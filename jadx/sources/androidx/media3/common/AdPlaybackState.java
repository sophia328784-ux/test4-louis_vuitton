package androidx.media3.common;

import android.net.Uri;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.sightcall.advancedannotations.domain.parser.PositionParser;
import com.sightcall.advancedannotations.domain.parser.ScaleParser;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class AdPlaybackState {
    public static final AdPlaybackState g = new AdPlaybackState(null, new AdGroup[0], 0, -9223372036854775807L, 0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final AdGroup f13666h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f13667i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f13668j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f13669k;
    public static final String l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f13670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f13672c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AdGroup[] f13674f;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface AdState {
    }

    public static final class SkipInfo {
        public static final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f13684e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f13685f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f13686a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f13687b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f13688c;

        static {
            String str = Util.f14242a;
            d = Integer.toString(0, 36);
            f13684e = Integer.toString(1, 36);
            f13685f = Integer.toString(2, 36);
        }

        public SkipInfo(long j2, long j3, String str) {
            Preconditions.g((j2 == -9223372036854775807L && j3 == -9223372036854775807L && str == null) ? false : true);
            this.f13686a = j2 == -9223372036854775807L ? 0L : j2;
            this.f13687b = j3;
            this.f13688c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SkipInfo.class == obj.getClass()) {
                SkipInfo skipInfo = (SkipInfo) obj;
                if (this.f13686a == skipInfo.f13686a && this.f13687b == skipInfo.f13687b && Objects.equals(this.f13688c, skipInfo.f13688c)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Long.valueOf(this.f13686a), Long.valueOf(this.f13687b), this.f13688c);
        }
    }

    static {
        AdGroup adGroup = new AdGroup(0L);
        int[] iArr = adGroup.f13679f;
        int length = iArr.length;
        int iMax = Math.max(0, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        long[] jArr = adGroup.g;
        int length2 = jArr.length;
        int iMax2 = Math.max(0, length2);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax2);
        Arrays.fill(jArrCopyOf, length2, iMax2, -9223372036854775807L);
        MediaItem[] mediaItemArr = (MediaItem[]) Arrays.copyOf(adGroup.f13678e, 0);
        String[] strArr = (String[]) Arrays.copyOf(adGroup.f13680h, 0);
        SkipInfo[] skipInfoArr = adGroup.f13681i;
        f13666h = new AdGroup(adGroup.f13675a, 0, adGroup.f13677c, iArrCopyOf, mediaItemArr, jArrCopyOf, adGroup.f13682j, adGroup.f13683k, strArr, (SkipInfo[]) Arrays.copyOf(skipInfoArr, Math.max(0, skipInfoArr.length)), adGroup.l);
        String str = Util.f14242a;
        f13667i = Integer.toString(1, 36);
        f13668j = Integer.toString(2, 36);
        f13669k = Integer.toString(3, 36);
        l = Integer.toString(4, 36);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AdPlaybackState(Object obj, long... jArr) {
        int length = jArr.length;
        AdGroup[] adGroupArr = new AdGroup[length];
        for (int i2 = 0; i2 < length; i2++) {
            adGroupArr[i2] = new AdGroup(jArr[i2]);
        }
        this(obj, adGroupArr, 0L, -9223372036854775807L, 0);
    }

    public final AdGroup a(int i2) {
        int i3 = this.f13673e;
        return i2 < i3 ? f13666h : this.f13674f[i2 - i3];
    }

    public final boolean b(int i2) {
        if (i2 != this.f13671b - 1) {
            return false;
        }
        AdGroup adGroupA = a(i2);
        return adGroupA.l && adGroupA.f13675a == Long.MIN_VALUE && adGroupA.f13676b == -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AdPlaybackState.class == obj.getClass()) {
            AdPlaybackState adPlaybackState = (AdPlaybackState) obj;
            if (Objects.equals(this.f13670a, adPlaybackState.f13670a) && this.f13671b == adPlaybackState.f13671b && this.f13672c == adPlaybackState.f13672c && this.d == adPlaybackState.d && this.f13673e == adPlaybackState.f13673e && Arrays.equals(this.f13674f, adPlaybackState.f13674f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f13671b * 31;
        Object obj = this.f13670a;
        return Arrays.hashCode(this.f13674f) + ((((((((i2 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f13672c)) * 31) + ((int) this.d)) * 31) + this.f13673e) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AdPlaybackState(adsId=");
        sb.append(this.f13670a);
        sb.append(", adResumePositionUs=");
        sb.append(this.f13672c);
        sb.append(", adGroups=[");
        int i2 = 0;
        while (true) {
            AdGroup[] adGroupArr = this.f13674f;
            if (i2 >= adGroupArr.length) {
                sb.append("])");
                return sb.toString();
            }
            sb.append("adGroup(timeUs=");
            sb.append(adGroupArr[i2].f13675a);
            sb.append(", ads=[");
            for (int i3 = 0; i3 < adGroupArr[i2].f13679f.length; i3++) {
                sb.append("ad(state=");
                int i4 = adGroupArr[i2].f13679f[i3];
                if (i4 == 0) {
                    sb.append('_');
                } else if (i4 == 1) {
                    sb.append('R');
                } else if (i4 == 2) {
                    sb.append(ScaleParser.ScaleInstruction);
                } else if (i4 == 3) {
                    sb.append(PositionParser.PositionInstruction);
                } else if (i4 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(adGroupArr[i2].g[i3]);
                sb.append(')');
                if (i3 < adGroupArr[i2].f13679f.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i2 < adGroupArr.length - 1) {
                sb.append(", ");
            }
            i2++;
        }
    }

    public AdPlaybackState(Object obj, AdGroup[] adGroupArr, long j2, long j3, int i2) {
        this.f13670a = obj;
        this.f13672c = j2;
        this.d = j3;
        this.f13671b = adGroupArr.length + i2;
        this.f13674f = adGroupArr;
        this.f13673e = i2;
    }

    public static final class AdGroup {
        public static final String m;
        public static final String n;
        public static final String o;
        public static final String p;
        public static final String q;
        public static final String r;
        public static final String s;
        public static final String t;
        public static final String u;
        public static final String v;
        public static final String w;
        public static final String x;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f13675a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f13677c;
        public final Uri[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MediaItem[] f13678e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int[] f13679f;
        public final long[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String[] f13680h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final SkipInfo[] f13681i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f13682j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f13683k;
        public final boolean l;

        static {
            String str = Util.f14242a;
            m = Integer.toString(0, 36);
            n = Integer.toString(1, 36);
            o = Integer.toString(2, 36);
            p = Integer.toString(3, 36);
            q = Integer.toString(4, 36);
            r = Integer.toString(5, 36);
            s = Integer.toString(6, 36);
            t = Integer.toString(7, 36);
            u = Integer.toString(8, 36);
            v = Integer.toString(9, 36);
            w = Integer.toString(10, 36);
            x = Integer.toString(11, 36);
        }

        public AdGroup(long j2, int i2, int i3, int[] iArr, MediaItem[] mediaItemArr, long[] jArr, long j3, boolean z, String[] strArr, SkipInfo[] skipInfoArr, boolean z2) {
            Uri uri;
            int i4 = 0;
            Preconditions.g(iArr.length == mediaItemArr.length);
            Preconditions.g(iArr.length == skipInfoArr.length);
            this.f13675a = j2;
            this.f13676b = i2;
            this.f13677c = i3;
            this.f13679f = iArr;
            this.f13678e = mediaItemArr;
            this.g = jArr;
            this.f13682j = j3;
            this.f13683k = z;
            this.d = new Uri[mediaItemArr.length];
            while (true) {
                Uri[] uriArr = this.d;
                if (i4 >= uriArr.length) {
                    this.f13680h = strArr;
                    this.f13681i = skipInfoArr;
                    this.l = z2;
                    return;
                }
                MediaItem mediaItem = mediaItemArr[i4];
                if (mediaItem == null) {
                    uri = null;
                } else {
                    MediaItem.LocalConfiguration localConfiguration = mediaItem.f13788b;
                    localConfiguration.getClass();
                    uri = localConfiguration.f13848a;
                }
                uriArr[i4] = uri;
                i4++;
            }
        }

        public final int a(int i2) {
            int i3;
            int i4 = i2 + 1;
            while (true) {
                int[] iArr = this.f13679f;
                if (i4 >= iArr.length || this.f13683k || (i3 = iArr[i4]) == 0 || i3 == 1) {
                    break;
                }
                i4++;
            }
            return i4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && AdGroup.class == obj.getClass()) {
                AdGroup adGroup = (AdGroup) obj;
                if (this.f13675a == adGroup.f13675a && this.f13676b == adGroup.f13676b && this.f13677c == adGroup.f13677c && Arrays.equals(this.f13678e, adGroup.f13678e) && Arrays.equals(this.f13679f, adGroup.f13679f) && Arrays.equals(this.g, adGroup.g) && this.f13682j == adGroup.f13682j && this.f13683k == adGroup.f13683k && Arrays.equals(this.f13680h, adGroup.f13680h) && Arrays.equals(this.f13681i, adGroup.f13681i) && this.l == adGroup.l) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i2 = ((this.f13676b * 31) + this.f13677c) * 31;
            long j2 = this.f13675a;
            int iHashCode = (Arrays.hashCode(this.g) + ((Arrays.hashCode(this.f13679f) + ((Arrays.hashCode(this.f13678e) + ((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31)) * 31)) * 31;
            long j3 = this.f13682j;
            return ((Arrays.hashCode(this.f13681i) + ((((((iHashCode + ((int) ((j3 >>> 32) ^ j3))) * 31) + (this.f13683k ? 1 : 0)) * 31) + Arrays.hashCode(this.f13680h)) * 31)) * 31) + (this.l ? 1 : 0);
        }

        public AdGroup(long j2) {
            this(j2, -1, -1, new int[0], new MediaItem[0], new long[0], 0L, false, new String[0], new SkipInfo[0], false);
        }
    }
}
