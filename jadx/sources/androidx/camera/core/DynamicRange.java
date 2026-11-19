package androidx.camera.core;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class DynamicRange {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DynamicRange f1913c = new DynamicRange(0, 0);
    public static final DynamicRange d = new DynamicRange(1, 8);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DynamicRange f1914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final DynamicRange f1915f;
    public static final DynamicRange g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final DynamicRange f1916h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final DynamicRange f1917i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1919b;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BitDepth {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DynamicRangeEncoding {
    }

    static {
        new DynamicRange(2, 10);
        f1914e = new DynamicRange(3, 10);
        f1915f = new DynamicRange(4, 10);
        g = new DynamicRange(5, 10);
        f1916h = new DynamicRange(6, 10);
        f1917i = new DynamicRange(6, 8);
    }

    public DynamicRange(int i2, int i3) {
        this.f1918a = i2;
        this.f1919b = i3;
    }

    public final boolean a() {
        return b() && this.f1918a != 1 && this.f1919b == 10;
    }

    public final boolean b() {
        int i2 = this.f1918a;
        return (i2 == 0 || i2 == 2 || this.f1919b == 0) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DynamicRange) {
            DynamicRange dynamicRange = (DynamicRange) obj;
            if (this.f1918a == dynamicRange.f1918a && this.f1919b == dynamicRange.f1919b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f1919b ^ ((this.f1918a ^ 1000003) * 1000003);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("DynamicRange@");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("{encoding=");
        switch (this.f1918a) {
            case 0:
                str = "UNSPECIFIED";
                break;
            case 1:
                str = "SDR";
                break;
            case 2:
                str = "HDR_UNSPECIFIED";
                break;
            case 3:
                str = "HLG";
                break;
            case 4:
                str = "HDR10";
                break;
            case 5:
                str = "HDR10_PLUS";
                break;
            case 6:
                str = "DOLBY_VISION";
                break;
            default:
                str = "<Unknown>";
                break;
        }
        sb.append(str);
        sb.append(", bitDepth=");
        return defpackage.a.i(this.f1919b, "}", sb);
    }
}
