package androidx.media3.common;

import android.text.TextUtils;
import androidx.media3.common.util.Util;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.math.DoubleMath;
import defpackage.a;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import defpackage.uh;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class Format {
    public static final String A0;
    public static final String B0;
    public static final String C0;
    public static final Format R = new Format(new Builder());
    public static final String S = Integer.toString(0, 36);
    public static final String T = Integer.toString(1, 36);
    public static final String U = Integer.toString(2, 36);
    public static final String V = Integer.toString(3, 36);
    public static final String W = Integer.toString(4, 36);
    public static final String X = Integer.toString(5, 36);
    public static final String Y = Integer.toString(6, 36);
    public static final String Z = Integer.toString(7, 36);
    public static final String a0;
    public static final String b0;
    public static final String c0;
    public static final String d0;
    public static final String e0;
    public static final String f0;
    public static final String g0;
    public static final String h0;
    public static final String i0;
    public static final String j0;
    public static final String k0;
    public static final String l0;
    public static final String m0;
    public static final String n0;
    public static final String o0;
    public static final String p0;
    public static final String q0;
    public static final String r0;
    public static final String s0;
    public static final String t0;
    public static final String u0;
    public static final String v0;
    public static final String w0;
    public static final String x0;
    public static final String y0;
    public static final String z0;
    public final int A;
    public final float B;
    public final byte[] C;
    public final int D;
    public final ColorInfo E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public final int N;
    public final int O;
    public final int P;
    public int Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f13755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f13756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmutableList f13757c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f13759f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f13760h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f13761i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f13762j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f13763k;
    public final Metadata l;
    public final String m;
    public final String n;
    public final String o;
    public final int p;
    public final int q;
    public final List r;
    public final DrmInitData s;
    public final long t;
    public final boolean u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final float z;

    public static final class Builder {
        public byte[] B;
        public ColorInfo D;
        public int I;
        public int J;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f13764a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f13765b;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f13767e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f13768f;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f13771j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Metadata f13772k;
        public String l;
        public String m;
        public String n;
        public List q;
        public DrmInitData r;
        public boolean t;
        public int z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImmutableList f13766c = ImmutableList.x();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f13769h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f13770i = -1;
        public int o = -1;
        public int p = -1;
        public long s = Long.MAX_VALUE;
        public int u = -1;
        public int v = -1;
        public int w = -1;
        public int x = -1;
        public float y = -1.0f;
        public float A = 1.0f;
        public int C = -1;
        public int E = -1;
        public int F = -1;
        public int G = -1;
        public int H = -1;
        public int K = -1;
        public int L = 1;
        public int M = -1;
        public int N = -1;
        public int O = 0;
        public int g = 0;
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface CueReplacementBehavior {
    }

    static {
        Integer.toString(8, 36);
        a0 = Integer.toString(9, 36);
        b0 = Integer.toString(10, 36);
        c0 = Integer.toString(11, 36);
        d0 = Integer.toString(12, 36);
        e0 = Integer.toString(13, 36);
        f0 = Integer.toString(14, 36);
        g0 = Integer.toString(15, 36);
        h0 = Integer.toString(16, 36);
        i0 = Integer.toString(17, 36);
        j0 = Integer.toString(18, 36);
        k0 = Integer.toString(19, 36);
        l0 = Integer.toString(20, 36);
        m0 = Integer.toString(21, 36);
        n0 = Integer.toString(22, 36);
        o0 = Integer.toString(23, 36);
        p0 = Integer.toString(24, 36);
        q0 = Integer.toString(25, 36);
        r0 = Integer.toString(26, 36);
        s0 = Integer.toString(27, 36);
        t0 = Integer.toString(28, 36);
        u0 = Integer.toString(29, 36);
        v0 = Integer.toString(30, 36);
        w0 = Integer.toString(31, 36);
        x0 = Integer.toString(32, 36);
        y0 = Integer.toString(33, 36);
        z0 = Integer.toString(34, 36);
        A0 = Integer.toString(35, 36);
        B0 = Integer.toString(36, 36);
        C0 = Integer.toString(37, 36);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Format(Builder builder) {
        boolean z;
        String str;
        this.f13755a = builder.f13764a;
        String strS = Util.S(builder.d);
        this.d = strS;
        if (builder.f13766c.isEmpty() && builder.f13765b != null) {
            this.f13757c = ImmutableList.A(new Label(strS, builder.f13765b));
            this.f13756b = builder.f13765b;
        } else if (builder.f13766c.isEmpty() || builder.f13765b != null) {
            if (!builder.f13766c.isEmpty() || builder.f13765b != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= builder.f13766c.size()) {
                        z = false;
                        break;
                    } else {
                        if (((Label) builder.f13766c.get(i2)).f13782b.equals(builder.f13765b)) {
                            z = true;
                            break;
                        }
                        i2++;
                    }
                }
            } else {
                z = true;
                break;
            }
            Preconditions.q(z);
            this.f13757c = builder.f13766c;
            this.f13756b = builder.f13765b;
        } else {
            ImmutableList immutableList = builder.f13766c;
            this.f13757c = immutableList;
            Iterator<E> it = immutableList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = ((Label) immutableList.get(0)).f13782b;
                    break;
                }
                Label label = (Label) it.next();
                if (TextUtils.equals(label.f13781a, strS)) {
                    str = label.f13782b;
                    break;
                }
            }
            this.f13756b = str;
        }
        this.f13758e = builder.f13767e;
        Preconditions.p("Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set", builder.g == 0 || (builder.f13768f & 32768) != 0);
        this.f13759f = builder.f13768f;
        this.g = builder.g;
        int i3 = builder.f13769h;
        this.f13760h = i3;
        int i4 = builder.f13770i;
        this.f13761i = i4;
        this.f13762j = i4 != -1 ? i4 : i3;
        this.f13763k = builder.f13771j;
        this.l = builder.f13772k;
        this.m = builder.l;
        this.n = builder.m;
        this.o = builder.n;
        this.p = builder.o;
        this.q = builder.p;
        List list = builder.q;
        this.r = list == null ? Collections.EMPTY_LIST : list;
        DrmInitData drmInitData = builder.r;
        this.s = drmInitData;
        this.t = builder.s;
        this.u = builder.t;
        this.v = builder.u;
        this.w = builder.v;
        this.x = builder.w;
        this.y = builder.x;
        this.z = builder.y;
        int i5 = builder.z;
        this.A = i5 == -1 ? 0 : i5;
        float f2 = builder.A;
        this.B = f2 == -1.0f ? 1.0f : f2;
        this.C = builder.B;
        this.D = builder.C;
        this.E = builder.D;
        this.F = builder.E;
        this.G = builder.F;
        this.H = builder.G;
        this.I = builder.H;
        int i6 = builder.I;
        this.J = i6 == -1 ? 0 : i6;
        int i7 = builder.J;
        this.K = i7 != -1 ? i7 : 0;
        this.L = builder.K;
        this.M = builder.L;
        this.N = builder.M;
        this.O = builder.N;
        int i8 = builder.O;
        if (i8 != 0 || drmInitData == null) {
            this.P = i8;
        } else {
            this.P = 1;
        }
    }

    public static String c(Format format) {
        int i2;
        String str;
        String str2;
        if (format == null) {
            return "null";
        }
        int i3 = format.f13758e;
        ImmutableList immutableList = format.f13757c;
        String str3 = format.d;
        int i4 = format.H;
        int i5 = format.G;
        int i6 = format.F;
        float f2 = format.z;
        ColorInfo colorInfo = format.E;
        float f3 = format.B;
        int i7 = format.y;
        int i8 = format.x;
        int i9 = format.w;
        int i10 = format.v;
        DrmInitData drmInitData = format.s;
        String str4 = format.f13763k;
        int i11 = format.f13762j;
        String str5 = format.m;
        String str6 = format.n;
        int i12 = format.f13759f;
        Joiner joiner = new Joiner(String.valueOf(','));
        StringBuilder sbT = n00.t("id=");
        sbT.append(format.f13755a);
        sbT.append(", mimeType=");
        sbT.append(format.o);
        if (str6 != null) {
            sbT.append(", container=");
            sbT.append(str6);
        }
        if (str5 != null) {
            sbT.append(", primaryGroupId=");
            sbT.append(str5);
        }
        if (i11 != -1) {
            sbT.append(", bitrate=");
            sbT.append(i11);
        }
        if (str4 != null) {
            sbT.append(", codecs=");
            sbT.append(str4);
        }
        if (drmInitData != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (int i13 = 0; i13 < drmInitData.f13747e; i13++) {
                UUID uuid = drmInitData.f13745b[i13].f13749c;
                if (uuid.equals(C.f13718c)) {
                    linkedHashSet.add("cenc");
                } else if (uuid.equals(C.d)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(C.f13720f)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(C.f13719e)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(C.f13717b)) {
                    linkedHashSet.add("universal");
                } else {
                    linkedHashSet.add("unknown (" + uuid + ")");
                }
            }
            sbT.append(", drm=[");
            joiner.a(sbT, linkedHashSet.iterator());
            sbT.append(']');
        }
        if (i10 != -1 && i9 != -1) {
            tr.w(i10, i9, ", res=", "x", sbT);
        }
        if (i8 != -1 && i7 != -1) {
            tr.w(i8, i7, ", decRes=", "x", sbT);
        }
        double d = f3;
        int i14 = DoubleMath.f33757a;
        if (Math.copySign(d - 1.0d, 1.0d) > 0.001d && d != 1.0d && (!Double.isNaN(d) || !Double.isNaN(1.0d))) {
            sbT.append(", par=");
            Object[] objArr = {Float.valueOf(f3)};
            String str7 = Util.f14242a;
            sbT.append(String.format(Locale.US, "%.3f", objArr));
        }
        if (colorInfo != null) {
            int i15 = colorInfo.f13729f;
            int i16 = colorInfo.f13728e;
            if ((i16 != -1 && i15 != -1) || colorInfo.d()) {
                sbT.append(", color=");
                if (colorInfo.d()) {
                    String strB = ColorInfo.b(colorInfo.f13725a);
                    String strA = ColorInfo.a(colorInfo.f13726b);
                    String strC = ColorInfo.c(colorInfo.f13727c);
                    String str8 = Util.f14242a;
                    Locale locale = Locale.US;
                    str2 = strB + "/" + strA + "/" + strC;
                } else {
                    str2 = "NA/NA/NA";
                }
                sbT.append(str2 + "/" + ((i16 == -1 || i15 == -1) ? "NA/NA" : i16 + "/" + i15));
            }
        }
        if (f2 != -1.0f) {
            sbT.append(", fps=");
            sbT.append(f2);
        }
        if (i6 != -1) {
            sbT.append(", maxSubLayers=");
            sbT.append(i6);
        }
        if (i5 != -1) {
            sbT.append(", channels=");
            sbT.append(i5);
        }
        if (i4 != -1) {
            sbT.append(", sample_rate=");
            sbT.append(i4);
        }
        if (str3 != null) {
            sbT.append(", language=");
            sbT.append(str3);
        }
        boolean zIsEmpty = immutableList.isEmpty();
        int i17 = 3;
        if (!zIsEmpty) {
            sbT.append(", labels=[");
            joiner.a(sbT, Lists.d(new uh(i17), immutableList).iterator());
            sbT.append("]");
        }
        if (i3 != 0) {
            sbT.append(", selectionFlags=[");
            String str9 = Util.f14242a;
            ArrayList arrayList = new ArrayList();
            if ((i3 & 4) != 0) {
                arrayList.add("auto");
            }
            if ((i3 & 1) != 0) {
                arrayList.add("default");
            }
            if ((i3 & 2) != 0) {
                arrayList.add("forced");
            }
            joiner.a(sbT, arrayList.iterator());
            sbT.append("]");
        }
        if (i12 != 0) {
            sbT.append(", roleFlags=[");
            String str10 = Util.f14242a;
            ArrayList arrayList2 = new ArrayList();
            if ((i12 & 1) != 0) {
                arrayList2.add("main");
            }
            if ((i12 & 2) != 0) {
                arrayList2.add("alt");
            }
            if ((i12 & 4) != 0) {
                arrayList2.add("supplementary");
            }
            if ((i12 & 8) != 0) {
                arrayList2.add("commentary");
            }
            if ((i12 & 16) != 0) {
                arrayList2.add("dub");
            }
            if ((i12 & 32) != 0) {
                arrayList2.add("emergency");
            }
            if ((i12 & 64) != 0) {
                arrayList2.add("caption");
            }
            i2 = i12;
            if ((i2 & 128) != 0) {
                arrayList2.add("subtitle");
            }
            if ((i2 & 256) != 0) {
                arrayList2.add("sign");
            }
            if ((i2 & 512) != 0) {
                arrayList2.add("describes-video");
            }
            if ((i2 & 1024) != 0) {
                arrayList2.add("describes-music");
            }
            if ((i2 & 2048) != 0) {
                arrayList2.add("enhanced-intelligibility");
            }
            if ((i2 & 4096) != 0) {
                arrayList2.add("transcribes-dialog");
            }
            if ((i2 & 8192) != 0) {
                arrayList2.add("easy-read");
            }
            if ((i2 & 16384) != 0) {
                arrayList2.add("trick-play");
            }
            if ((i2 & 32768) != 0) {
                arrayList2.add("auxiliary");
            }
            joiner.a(sbT, arrayList2.iterator());
            sbT.append("]");
        } else {
            i2 = i12;
        }
        if ((i2 & 32768) != 0) {
            sbT.append(", auxiliaryTrackType=");
            int i18 = format.g;
            String str11 = Util.f14242a;
            if (i18 == 0) {
                str = "undefined";
            } else if (i18 == 1) {
                str = "original";
            } else if (i18 == 2) {
                str = "depth-linear";
            } else if (i18 == 3) {
                str = "depth-inverse";
            } else {
                if (i18 != 4) {
                    md.k("Unsupported auxiliary track type");
                    return null;
                }
                str = "depth metadata";
            }
            sbT.append(str);
        }
        return sbT.toString();
    }

    public final Builder a() {
        Builder builder = new Builder();
        builder.f13764a = this.f13755a;
        builder.f13765b = this.f13756b;
        builder.f13766c = this.f13757c;
        builder.d = this.d;
        builder.f13767e = this.f13758e;
        builder.f13768f = this.f13759f;
        builder.f13769h = this.f13760h;
        builder.f13770i = this.f13761i;
        builder.f13771j = this.f13763k;
        builder.f13772k = this.l;
        builder.l = this.m;
        builder.m = this.n;
        builder.n = this.o;
        builder.o = this.p;
        builder.p = this.q;
        builder.q = this.r;
        builder.r = this.s;
        builder.s = this.t;
        builder.t = this.u;
        builder.u = this.v;
        builder.v = this.w;
        builder.w = this.x;
        builder.x = this.y;
        builder.y = this.z;
        builder.z = this.A;
        builder.A = this.B;
        builder.B = this.C;
        builder.C = this.D;
        builder.D = this.E;
        builder.E = this.F;
        builder.F = this.G;
        builder.G = this.H;
        builder.H = this.I;
        builder.I = this.J;
        builder.J = this.K;
        builder.K = this.L;
        builder.L = this.M;
        builder.M = this.N;
        builder.N = this.O;
        builder.O = this.P;
        return builder;
    }

    public final boolean b(Format format) {
        List list = this.r;
        if (list.size() != format.r.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!Arrays.equals((byte[]) list.get(i2), (byte[]) format.r.get(i2))) {
                return false;
            }
        }
        return true;
    }

    public final Format d(Format format) {
        String str;
        String str2;
        int i2;
        int i3;
        if (this == format) {
            return this;
        }
        int i4 = MimeTypes.i(this.o);
        String str3 = format.f13755a;
        ImmutableList immutableList = format.f13757c;
        int i5 = format.N;
        int i6 = format.O;
        String str4 = format.f13756b;
        if (str4 == null) {
            str4 = this.f13756b;
        }
        if (immutableList.isEmpty()) {
            immutableList = this.f13757c;
        }
        if ((i4 != 3 && i4 != 1) || (str = format.d) == null) {
            str = this.d;
        }
        int i7 = this.f13760h;
        if (i7 == -1) {
            i7 = format.f13760h;
        }
        int i8 = this.f13761i;
        if (i8 == -1) {
            i8 = format.f13761i;
        }
        String str5 = this.f13763k;
        if (str5 == null) {
            String strW = Util.w(i4, format.f13763k);
            if (Util.c0(strW).length == 1) {
                str5 = strW;
            }
        }
        String str6 = this.m;
        if (str6 == null) {
            str6 = format.m;
        }
        Metadata metadataB = format.l;
        Metadata metadata = this.l;
        if (metadata != null) {
            metadataB = metadata.b(metadataB);
        }
        float f2 = this.z;
        if (f2 == -1.0f && i4 == 2) {
            f2 = format.z;
        }
        int i9 = this.f13758e | format.f13758e;
        ImmutableList immutableList2 = immutableList;
        int i10 = format.f13759f | this.f13759f;
        DrmInitData drmInitData = format.s;
        ArrayList arrayList = new ArrayList();
        if (drmInitData != null) {
            String str7 = drmInitData.d;
            DrmInitData.SchemeData[] schemeDataArr = drmInitData.f13745b;
            int length = schemeDataArr.length;
            int i11 = 0;
            while (i11 < length) {
                int i12 = i11;
                DrmInitData.SchemeData schemeData = schemeDataArr[i12];
                int i13 = length;
                if (schemeData.f13751f != null) {
                    arrayList.add(schemeData);
                }
                i11 = i12 + 1;
                length = i13;
            }
            str2 = str7;
        } else {
            str2 = null;
        }
        DrmInitData drmInitData2 = this.s;
        if (drmInitData2 != null) {
            if (str2 == null) {
                str2 = drmInitData2.d;
            }
            int size = arrayList.size();
            DrmInitData.SchemeData[] schemeDataArr2 = drmInitData2.f13745b;
            String str8 = str2;
            int length2 = schemeDataArr2.length;
            int i14 = 0;
            while (i14 < length2) {
                int i15 = i14;
                DrmInitData.SchemeData schemeData2 = schemeDataArr2[i15];
                int i16 = length2;
                if (schemeData2.f13751f != null) {
                    UUID uuid = schemeData2.f13749c;
                    i3 = i5;
                    int i17 = 0;
                    while (true) {
                        if (i17 >= size) {
                            i2 = size;
                            arrayList.add(schemeData2);
                            break;
                        }
                        i2 = size;
                        if (((DrmInitData.SchemeData) arrayList.get(i17)).f13749c.equals(uuid)) {
                            break;
                        }
                        i17++;
                        size = i2;
                    }
                } else {
                    i2 = size;
                    i3 = i5;
                }
                i14 = i15 + 1;
                length2 = i16;
                i5 = i3;
                size = i2;
            }
            str2 = str8;
        }
        int i18 = i5;
        DrmInitData drmInitData3 = arrayList.isEmpty() ? null : new DrmInitData(str2, arrayList);
        Builder builderA = a();
        builderA.f13764a = str3;
        builderA.f13765b = str4;
        builderA.f13766c = ImmutableList.t(immutableList2);
        builderA.d = str;
        builderA.f13767e = i9;
        builderA.f13768f = i10;
        builderA.f13769h = i7;
        builderA.f13770i = i8;
        builderA.f13771j = str5;
        builderA.f13772k = metadataB;
        builderA.l = str6;
        builderA.r = drmInitData3;
        builderA.y = f2;
        builderA.M = i18;
        builderA.N = i6;
        return new Format(builderA);
    }

    public final boolean equals(Object obj) {
        int i2;
        if (this == obj) {
            return true;
        }
        if (obj == null || Format.class != obj.getClass()) {
            return false;
        }
        Format format = (Format) obj;
        int i3 = this.Q;
        return (i3 == 0 || (i2 = format.Q) == 0 || i3 == i2) && this.f13758e == format.f13758e && this.f13759f == format.f13759f && this.g == format.g && this.f13760h == format.f13760h && this.f13761i == format.f13761i && this.p == format.p && this.t == format.t && this.v == format.v && this.w == format.w && this.x == format.x && this.y == format.y && this.A == format.A && this.D == format.D && this.F == format.F && this.G == format.G && this.H == format.H && this.I == format.I && this.J == format.J && this.K == format.K && this.L == format.L && this.N == format.N && this.O == format.O && this.P == format.P && Float.compare(this.z, format.z) == 0 && Float.compare(this.B, format.B) == 0 && Objects.equals(this.f13755a, format.f13755a) && Objects.equals(this.f13756b, format.f13756b) && this.f13757c.equals(format.f13757c) && Objects.equals(this.f13763k, format.f13763k) && Objects.equals(this.m, format.m) && Objects.equals(this.n, format.n) && Objects.equals(this.o, format.o) && Objects.equals(this.d, format.d) && Arrays.equals(this.C, format.C) && Objects.equals(this.l, format.l) && Objects.equals(this.E, format.E) && Objects.equals(this.s, format.s) && b(format);
    }

    public final int hashCode() {
        if (this.Q == 0) {
            String str = this.f13755a;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f13756b;
            int iHashCode2 = (this.f13757c.hashCode() + ((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            String str3 = this.d;
            int iHashCode3 = (((((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f13758e) * 31) + this.f13759f) * 31) + this.g) * 31) + this.f13760h) * 31) + this.f13761i) * 31;
            String str4 = this.f13763k;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Metadata metadata = this.l;
            int iHashCode5 = (iHashCode4 + (metadata == null ? 0 : metadata.hashCode())) * 961;
            String str5 = this.m;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.n;
            int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.o;
            this.Q = ((((((((((((((((((((((Float.floatToIntBits(this.B) + ((((Float.floatToIntBits(this.z) + ((((((((((((((iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31) + this.p) * 31) + ((int) this.t)) * 31) + this.v) * 31) + this.w) * 31) + this.x) * 31) + this.y) * 31)) * 31) + this.A) * 31)) * 31) + this.D) * 31) + this.F) * 31) + this.G) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) + this.K) * 31) + this.L) * 31) + this.N) * 31) + this.O) * 31) + this.P;
        }
        return this.Q;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Format(");
        sb.append(this.f13755a);
        sb.append(", ");
        sb.append(this.f13756b);
        sb.append(", ");
        sb.append(this.n);
        sb.append(", ");
        sb.append(this.o);
        sb.append(", ");
        sb.append(this.f13763k);
        sb.append(", ");
        sb.append(this.f13762j);
        sb.append(", ");
        sb.append(this.d);
        sb.append(", [");
        sb.append(this.v);
        sb.append(", ");
        sb.append(this.w);
        sb.append(", ");
        sb.append(this.z);
        sb.append(", ");
        sb.append(this.E);
        sb.append("], [");
        sb.append(this.G);
        sb.append(", ");
        return a.i(this.H, "])", sb);
    }
}
