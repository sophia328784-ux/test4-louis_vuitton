package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.sightcall.advancedannotations.domain.parser.PositionParser;
import com.sightcall.advancedannotations.domain.parser.ScaleParser;
import defpackage.tr;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class AdPlaybackState implements Bundleable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AdPlaybackState f28310f = new AdPlaybackState((Object) null, new AdGroup[0]);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f28311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28312c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AdGroup[] f28313e;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface AdState {
    }

    static {
        AdGroup adGroup = new AdGroup(0L);
        int[] iArr = adGroup.f28317f;
        int length = iArr.length;
        int iMax = Math.max(0, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        long[] jArr = adGroup.g;
        int length2 = jArr.length;
        int iMax2 = Math.max(0, length2);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax2);
        Arrays.fill(jArrCopyOf, length2, iMax2, -9223372036854775807L);
        new AdGroup(adGroup.f28314b, 0, adGroup.d, iArrCopyOf, (Uri[]) Arrays.copyOf(adGroup.f28316e, 0), jArrCopyOf);
        Util.e(1);
        Util.e(2);
        Util.e(3);
        Util.e(4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AdPlaybackState(Object obj, long... jArr) {
        int length = jArr.length;
        AdGroup[] adGroupArr = new AdGroup[length];
        for (int i2 = 0; i2 < length; i2++) {
            adGroupArr[i2] = new AdGroup(jArr[i2]);
        }
        this(obj, adGroupArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AdPlaybackState.class != obj.getClass()) {
            return false;
        }
        AdPlaybackState adPlaybackState = (AdPlaybackState) obj;
        return Util.a(this.f28311b, adPlaybackState.f28311b) && this.f28312c == adPlaybackState.f28312c && this.d == adPlaybackState.d && Arrays.equals(this.f28313e, adPlaybackState.f28313e);
    }

    public final int hashCode() {
        int i2 = this.f28312c * 31;
        Object obj = this.f28311b;
        return ((((i2 + (obj == null ? 0 : obj.hashCode())) * 961) + ((int) this.d)) * 961) + Arrays.hashCode(this.f28313e);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AdPlaybackState(adsId=");
        sb.append(this.f28311b);
        sb.append(", adResumePositionUs=0, adGroups=[");
        int i2 = 0;
        while (true) {
            AdGroup[] adGroupArr = this.f28313e;
            if (i2 >= adGroupArr.length) {
                sb.append("])");
                return sb.toString();
            }
            sb.append("adGroup(timeUs=");
            sb.append(adGroupArr[i2].f28314b);
            sb.append(", ads=[");
            for (int i3 = 0; i3 < adGroupArr[i2].f28317f.length; i3++) {
                sb.append("ad(state=");
                int i4 = adGroupArr[i2].f28317f[i3];
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
                if (i3 < adGroupArr[i2].f28317f.length - 1) {
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

    public AdPlaybackState(Object obj, AdGroup[] adGroupArr) {
        this.f28311b = obj;
        this.d = -9223372036854775807L;
        this.f28312c = adGroupArr.length;
        this.f28313e = adGroupArr;
    }

    public static final class AdGroup implements Bundleable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f28315c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Uri[] f28316e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int[] f28317f;
        public final long[] g;

        static {
            tr.v(0, 1, 2, 3, 4);
            Util.e(5);
            Util.e(6);
            Util.e(7);
        }

        public AdGroup(long j2, int i2, int i3, int[] iArr, Uri[] uriArr, long[] jArr) {
            Assertions.a(iArr.length == uriArr.length);
            this.f28314b = j2;
            this.f28315c = i2;
            this.d = i3;
            this.f28317f = iArr;
            this.f28316e = uriArr;
            this.g = jArr;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || AdGroup.class != obj.getClass()) {
                return false;
            }
            AdGroup adGroup = (AdGroup) obj;
            return this.f28314b == adGroup.f28314b && this.f28315c == adGroup.f28315c && this.d == adGroup.d && Arrays.equals(this.f28316e, adGroup.f28316e) && Arrays.equals(this.f28317f, adGroup.f28317f) && Arrays.equals(this.g, adGroup.g);
        }

        public final int hashCode() {
            int i2 = ((this.f28315c * 31) + this.d) * 31;
            long j2 = this.f28314b;
            return (Arrays.hashCode(this.g) + ((Arrays.hashCode(this.f28317f) + ((((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Arrays.hashCode(this.f28316e)) * 31)) * 31)) * 961;
        }

        public AdGroup(long j2) {
            this(j2, -1, -1, new int[0], new Uri[0], new long[0]);
        }
    }
}
