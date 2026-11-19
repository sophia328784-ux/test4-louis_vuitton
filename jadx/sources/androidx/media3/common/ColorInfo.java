package androidx.media3.common;

import androidx.media3.common.util.Util;
import defpackage.cj;
import defpackage.n00;
import defpackage.pq0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ColorInfo {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ColorInfo f13721h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f13722i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f13723j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f13724k;
    public static final String l;
    public static final String m;
    public static final String n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13727c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f13729f;
    public int g;

    public static final class Builder {
        public byte[] d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f13730a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13731b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13732c = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f13733e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f13734f = -1;

        public final ColorInfo a() {
            return new ColorInfo(this.d, this.f13730a, this.f13731b, this.f13732c, this.f13733e, this.f13734f);
        }
    }

    static {
        Builder builder = new Builder();
        builder.f13730a = 1;
        builder.f13731b = 2;
        builder.f13732c = 3;
        f13721h = builder.a();
        Builder builder2 = new Builder();
        builder2.f13730a = 1;
        builder2.f13731b = 1;
        builder2.f13732c = 2;
        builder2.a();
        String str = Util.f14242a;
        f13722i = Integer.toString(0, 36);
        f13723j = Integer.toString(1, 36);
        f13724k = Integer.toString(2, 36);
        l = Integer.toString(3, 36);
        m = Integer.toString(4, 36);
        n = Integer.toString(5, 36);
    }

    public ColorInfo(byte[] bArr, int i2, int i3, int i4, int i5, int i6) {
        this.f13725a = i2;
        this.f13726b = i3;
        this.f13727c = i4;
        this.d = bArr;
        this.f13728e = i5;
        this.f13729f = i6;
    }

    public static String a(int i2) {
        if (i2 == -1) {
            return "Unset color range";
        }
        if (i2 != 1) {
            return i2 != 2 ? pq0.k(i2, "Undefined color range ") : "Limited range";
        }
        return "Full range";
    }

    public static String b(int i2) {
        if (i2 == -1) {
            return "Unset color space";
        }
        if (i2 == 6) {
            return "BT2020";
        }
        if (i2 != 1) {
            return i2 != 2 ? pq0.k(i2, "Undefined color space ") : "BT601";
        }
        return "BT709";
    }

    public static String c(int i2) {
        if (i2 == -1) {
            return "Unset color transfer";
        }
        if (i2 == 10) {
            return "Gamma 2.2";
        }
        if (i2 == 1) {
            return "Linear";
        }
        if (i2 == 2) {
            return "sRGB";
        }
        if (i2 == 3) {
            return "SDR SMPTE 170M";
        }
        if (i2 != 6) {
            return i2 != 7 ? pq0.k(i2, "Undefined color transfer ") : "HLG";
        }
        return "ST2084 PQ";
    }

    public static boolean e(ColorInfo colorInfo) {
        if (colorInfo == null) {
            return true;
        }
        int i2 = colorInfo.f13725a;
        if (i2 != -1 && i2 != 1 && i2 != 2) {
            return false;
        }
        int i3 = colorInfo.f13726b;
        if (i3 != -1 && i3 != 2) {
            return false;
        }
        int i4 = colorInfo.f13727c;
        if ((i4 != -1 && i4 != 3) || colorInfo.d != null) {
            return false;
        }
        int i5 = colorInfo.f13729f;
        if (i5 != -1 && i5 != 8) {
            return false;
        }
        int i6 = colorInfo.f13728e;
        return i6 == -1 || i6 == 8;
    }

    public static int f(int i2) {
        if (i2 == 1) {
            return 1;
        }
        if (i2 != 9) {
            return (i2 == 4 || i2 == 5 || i2 == 6 || i2 == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int g(int i2) {
        if (i2 == 1) {
            return 3;
        }
        if (i2 == 4) {
            return 10;
        }
        if (i2 == 13) {
            return 2;
        }
        if (i2 == 16) {
            return 6;
        }
        if (i2 != 18) {
            return (i2 == 6 || i2 == 7) ? 3 : -1;
        }
        return 7;
    }

    public final boolean d() {
        return (this.f13725a == -1 || this.f13726b == -1 || this.f13727c == -1) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ColorInfo.class == obj.getClass()) {
            ColorInfo colorInfo = (ColorInfo) obj;
            if (this.f13725a == colorInfo.f13725a && this.f13726b == colorInfo.f13726b && this.f13727c == colorInfo.f13727c && Arrays.equals(this.d, colorInfo.d) && this.f13728e == colorInfo.f13728e && this.f13729f == colorInfo.f13729f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.g == 0) {
            this.g = ((((Arrays.hashCode(this.d) + ((((((527 + this.f13725a) * 31) + this.f13726b) * 31) + this.f13727c) * 31)) * 31) + this.f13728e) * 31) + this.f13729f;
        }
        return this.g;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ColorInfo(");
        sb.append(b(this.f13725a));
        sb.append(", ");
        sb.append(a(this.f13726b));
        sb.append(", ");
        sb.append(c(this.f13727c));
        sb.append(", ");
        sb.append(this.d != null);
        sb.append(", ");
        int i2 = this.f13728e;
        sb.append(i2 != -1 ? cj.d(i2, "bit Luma") : "NA");
        sb.append(", ");
        int i3 = this.f13729f;
        return n00.r(i3 != -1 ? cj.d(i3, "bit Chroma") : "NA", ")", sb);
    }
}
