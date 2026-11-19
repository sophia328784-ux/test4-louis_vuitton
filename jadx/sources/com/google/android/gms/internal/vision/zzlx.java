package com.google.android.gms.internal.vision;

import defpackage.bm;
import defpackage.x1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzlx {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzlx f31280f = new zzlx(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f31281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f31282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f31283c;
    public int d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f31284e;

    public zzlx(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.f31281a = i2;
        this.f31282b = iArr;
        this.f31283c = objArr;
        this.f31284e = z;
    }

    public static zzlx b() {
        return new zzlx(0, new int[8], new Object[8], true);
    }

    public final void a(int i2, Object obj) {
        if (!this.f31284e) {
            x1.i();
            return;
        }
        int i3 = this.f31281a;
        int[] iArr = this.f31282b;
        if (i3 == iArr.length) {
            int i4 = i3 + (i3 < 4 ? 8 : i3 >> 1);
            this.f31282b = Arrays.copyOf(iArr, i4);
            this.f31283c = Arrays.copyOf(this.f31283c, i4);
        }
        int[] iArr2 = this.f31282b;
        int i5 = this.f31281a;
        iArr2[i5] = i2;
        this.f31283c[i5] = obj;
        this.f31281a = i5 + 1;
    }

    public final void c(zzmr zzmrVar) {
        if (this.f31281a == 0) {
            return;
        }
        zzmrVar.getClass();
        for (int i2 = 0; i2 < this.f31281a; i2++) {
            int i3 = this.f31282b[i2];
            Object obj = this.f31283c[i2];
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            if (i5 == 0) {
                zzmrVar.n(i4, ((Long) obj).longValue());
            } else if (i5 == 1) {
                zzmrVar.v(i4, ((Long) obj).longValue());
            } else if (i5 == 2) {
                zzmrVar.A(i4, (zzht) obj);
            } else if (i5 == 3) {
                zzmrVar.getClass();
                zzmrVar.e(i4);
                ((zzlx) obj).c(zzmrVar);
                zzmrVar.g(i4);
            } else if (i5 == 5) {
                zzmrVar.t(i4, ((Integer) obj).intValue());
            } else {
                x1.m(zzjk.c());
            }
        }
    }

    public final int d() {
        int iL;
        int i2 = this.d;
        if (i2 != -1) {
            return i2;
        }
        int iD = 0;
        for (int i3 = 0; i3 < this.f31281a; i3++) {
            int i4 = this.f31282b[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 == 0) {
                iL = zzii.l(i5, ((Long) this.f31283c[i3]).longValue());
            } else if (i6 == 1) {
                ((Long) this.f31283c[i3]).getClass();
                iL = zzii.p(i5);
            } else if (i6 != 2) {
                if (i6 == 3) {
                    iD = ((zzlx) this.f31283c[i3]).d() + (zzii.k(i5) << 1) + iD;
                } else {
                    if (i6 != 5) {
                        bm.i(zzjk.c());
                        return 0;
                    }
                    ((Integer) this.f31283c[i3]).getClass();
                    iL = zzii.t(i5);
                }
            } else {
                iL = zzii.g(i5, (zzht) this.f31283c[i3]);
            }
            iD = iL + iD;
        }
        this.d = iD;
        return iD;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzlx)) {
            return false;
        }
        zzlx zzlxVar = (zzlx) obj;
        int i2 = this.f31281a;
        if (i2 == zzlxVar.f31281a) {
            int[] iArr = this.f31282b;
            int[] iArr2 = zzlxVar.f31282b;
            for (int i3 = 0; i3 < i2; i3++) {
                if (iArr[i3] == iArr2[i3]) {
                }
            }
            Object[] objArr = this.f31283c;
            Object[] objArr2 = zzlxVar.f31283c;
            int i4 = this.f31281a;
            for (int i5 = 0; i5 < i4; i5++) {
                if (objArr[i5].equals(objArr2[i5])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f31281a;
        int i3 = (i2 + 527) * 31;
        int[] iArr = this.f31282b;
        int iHashCode = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i3 + i4) * 31;
        Object[] objArr = this.f31283c;
        int i7 = this.f31281a;
        for (int i8 = 0; i8 < i7; i8++) {
            iHashCode = (iHashCode * 31) + objArr[i8].hashCode();
        }
        return i6 + iHashCode;
    }
}
