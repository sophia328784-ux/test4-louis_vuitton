package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.common.DrmInitData;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import defpackage.x5;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class HlsMediaPlaylist extends HlsPlaylist {
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f15233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f15234f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f15235h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f15236i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f15237j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f15238k;
    public final int l;
    public final long m;
    public final long n;
    public final boolean o;
    public final boolean p;
    public final DrmInitData q;
    public final ImmutableList r;
    public final ImmutableList s;
    public final ImmutableMap t;
    public final long u;
    public final ServerControl v;
    public final ImmutableList w;
    public final Segment x;

    public static final class Interstitial {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f15242a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f15243b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Uri f15244c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f15245e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f15246f;
        public final long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List f15247h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f15248i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f15249j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final long f15250k;
        public final ImmutableList l;
        public final ImmutableList m;
        public final ImmutableList n;
        public final boolean o;
        public final String p;
        public final String q;
        public final long r;
        public final long s;
        public final String t;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f15251a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public Uri f15253c;
            public Uri d;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f15258j;
            public Boolean o;
            public String p;
            public String q;
            public String t;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final HashMap f15252b = new HashMap();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public long f15254e = -9223372036854775807L;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public long f15255f = -9223372036854775807L;
            public long g = -9223372036854775807L;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public long f15256h = -9223372036854775807L;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public ArrayList f15257i = new ArrayList();

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public long f15259k = -9223372036854775807L;
            public long l = -9223372036854775807L;
            public ArrayList m = new ArrayList();
            public ArrayList n = new ArrayList();
            public long r = -9223372036854775807L;
            public long s = -9223372036854775807L;

            public Builder(String str) {
                this.f15251a = str;
            }
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface CueTriggerType {
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface NavigationRestriction {
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface SnapType {
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface TimelineOccupiesType {
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface TimelineStyleType {
        }

        public Interstitial(String str, Uri uri, Uri uri2, long j2, long j3, long j4, long j5, List<String> list, boolean z, long j6, long j7, List<String> list2, List<String> list3, List<ClientDefinedAttribute> list4, boolean z2, String str2, String str3, long j8, long j9, String str4) {
            Preconditions.g((uri == null || uri2 == null) && !(uri == null && uri2 == null));
            this.f15242a = str;
            this.f15243b = uri;
            this.f15244c = uri2;
            this.d = j2;
            this.f15245e = j3;
            this.f15246f = j4;
            this.g = j5;
            this.f15247h = list;
            this.f15248i = z;
            this.f15249j = j6;
            this.f15250k = j7;
            this.l = ImmutableList.t(list2);
            this.m = ImmutableList.t(list3);
            this.n = ImmutableList.G(new x5(9), list4);
            this.o = z2;
            this.p = str2;
            this.q = str3;
            this.r = j8;
            this.s = j9;
            this.t = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interstitial)) {
                return false;
            }
            Interstitial interstitial = (Interstitial) obj;
            return this.d == interstitial.d && this.f15245e == interstitial.f15245e && this.f15246f == interstitial.f15246f && this.g == interstitial.g && this.f15248i == interstitial.f15248i && this.f15249j == interstitial.f15249j && this.f15250k == interstitial.f15250k && this.o == interstitial.o && this.r == interstitial.r && this.s == interstitial.s && Objects.equals(this.f15242a, interstitial.f15242a) && Objects.equals(this.f15243b, interstitial.f15243b) && Objects.equals(this.f15244c, interstitial.f15244c) && Objects.equals(this.f15247h, interstitial.f15247h) && Objects.equals(this.l, interstitial.l) && Objects.equals(this.m, interstitial.m) && Objects.equals(this.n, interstitial.n) && Objects.equals(this.p, interstitial.p) && Objects.equals(this.q, interstitial.q) && Objects.equals(this.t, interstitial.t);
        }

        public final int hashCode() {
            return Objects.hash(this.f15242a, this.f15243b, this.f15244c, Long.valueOf(this.d), Long.valueOf(this.f15245e), Long.valueOf(this.f15246f), Long.valueOf(this.g), this.f15247h, Boolean.valueOf(this.f15248i), Long.valueOf(this.f15249j), Long.valueOf(this.f15250k), this.l, this.m, this.n, Boolean.valueOf(this.o), this.p, this.q, Long.valueOf(this.r), Long.valueOf(this.s), this.t);
        }
    }

    public static final class Part extends SegmentBase {
        public final boolean m;
        public final boolean n;

        public Part(String str, Segment segment, long j2, int i2, long j3, DrmInitData drmInitData, String str2, String str3, long j4, long j5, boolean z, boolean z2, boolean z3) {
            super(str, segment, j2, i2, j3, drmInitData, str2, str3, j4, j5, z);
            this.m = z2;
            this.n = z3;
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaylistType {
    }

    public static final class RenditionReport {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f15260a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15261b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15262c;

        public RenditionReport(Uri uri, long j2, int i2) {
            this.f15260a = uri;
            this.f15261b = j2;
            this.f15262c = i2;
        }
    }

    public static class SegmentBase implements Comparable<Long> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15263b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Segment f15264c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f15265e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f15266f;
        public final DrmInitData g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f15267h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f15268i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f15269j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final long f15270k;
        public final boolean l;

        public SegmentBase(String str, Segment segment, long j2, int i2, long j3, DrmInitData drmInitData, String str2, String str3, long j4, long j5, boolean z) {
            this.f15263b = str;
            this.f15264c = segment;
            this.d = j2;
            this.f15265e = i2;
            this.f15266f = j3;
            this.g = drmInitData;
            this.f15267h = str2;
            this.f15268i = str3;
            this.f15269j = j4;
            this.f15270k = j5;
            this.l = z;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Long l) {
            Long l2 = l;
            long jLongValue = l2.longValue();
            long j2 = this.f15266f;
            if (j2 > jLongValue) {
                return 1;
            }
            return j2 < l2.longValue() ? -1 : 0;
        }
    }

    public static final class ServerControl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15271a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f15272b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15273c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f15274e;

        public ServerControl(long j2, boolean z, long j3, long j4, boolean z2) {
            this.f15271a = j2;
            this.f15272b = z;
            this.f15273c = j3;
            this.d = j4;
            this.f15274e = z2;
        }
    }

    public HlsMediaPlaylist(int i2, String str, List<String> list, long j2, boolean z, long j3, boolean z2, int i3, long j4, int i4, long j5, long j6, boolean z3, boolean z4, boolean z5, DrmInitData drmInitData, List<Segment> list2, List<Part> list3, ServerControl serverControl, Map<Uri, RenditionReport> map, List<Interstitial> list4, Segment segment) {
        super(str, list, z3);
        this.d = i2;
        this.f15235h = j3;
        this.g = z;
        this.f15236i = z2;
        this.f15237j = i3;
        this.f15238k = j4;
        this.l = i4;
        this.m = j5;
        this.n = j6;
        this.o = z4;
        this.p = z5;
        this.q = drmInitData;
        this.r = ImmutableList.t(list2);
        this.s = ImmutableList.t(list3);
        this.t = ImmutableMap.c(map);
        this.w = ImmutableList.t(list4);
        this.x = segment;
        if (!list3.isEmpty()) {
            Part part = (Part) Iterables.b(list3);
            this.u = part.f15266f + part.d;
        } else if (list2.isEmpty()) {
            this.u = 0L;
        } else {
            Segment segment2 = (Segment) Iterables.b(list2);
            this.u = segment2.f15266f + segment2.d;
        }
        long jMin = -9223372036854775807L;
        if (j2 != -9223372036854775807L) {
            long j7 = this.u;
            jMin = j2 >= 0 ? Math.min(j7, j2) : Math.max(0L, j7 + j2);
        }
        this.f15233e = jMin;
        this.f15234f = j2 >= 0;
        this.v = serverControl;
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public final Object a(List list) {
        return this;
    }

    public static class ClientDefinedAttribute {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f15239a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15240b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final double f15241c;
        public final String d;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Type {
        }

        public ClientDefinedAttribute(String str, String str2, int i2) {
            boolean z = true;
            if (i2 == 1 && !str2.startsWith("0x") && !str2.startsWith("0X")) {
                z = false;
            }
            Preconditions.q(z);
            this.f15239a = str;
            this.f15240b = i2;
            this.d = str2;
            this.f15241c = 0.0d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClientDefinedAttribute)) {
                return false;
            }
            ClientDefinedAttribute clientDefinedAttribute = (ClientDefinedAttribute) obj;
            return this.f15240b == clientDefinedAttribute.f15240b && Double.compare(this.f15241c, clientDefinedAttribute.f15241c) == 0 && Objects.equals(this.f15239a, clientDefinedAttribute.f15239a) && Objects.equals(this.d, clientDefinedAttribute.d);
        }

        public final int hashCode() {
            return Objects.hash(this.f15239a, Integer.valueOf(this.f15240b), Double.valueOf(this.f15241c), this.d);
        }

        public ClientDefinedAttribute(String str, double d) {
            this.f15239a = str;
            this.f15240b = 2;
            this.f15241c = d;
            this.d = null;
        }
    }

    public static final class Segment extends SegmentBase {
        public final String m;
        public final ImmutableList n;

        public Segment(String str, Segment segment, String str2, long j2, int i2, long j3, DrmInitData drmInitData, String str3, String str4, long j4, long j5, boolean z, List<Part> list) {
            super(str, segment, j2, i2, j3, drmInitData, str3, str4, j4, j5, z);
            this.m = str2;
            this.n = ImmutableList.t(list);
        }

        public Segment(String str, long j2, long j3, String str2, String str3) {
            this(str, null, "", 0L, -1, -9223372036854775807L, null, str2, str3, j2, j3, false, ImmutableList.x());
        }
    }
}
