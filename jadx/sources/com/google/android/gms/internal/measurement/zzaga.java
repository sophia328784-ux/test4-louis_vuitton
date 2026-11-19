package com.google.android.gms.internal.measurement;

import defpackage.bm;
import defpackage.x1;
import defpackage.z81;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaga {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzaga f30470f = new zzaga(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f30471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f30472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f30473c;
    public int d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f30474e;

    public zzaga(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.f30471a = i2;
        this.f30472b = iArr;
        this.f30473c = objArr;
        this.f30474e = z;
    }

    public static zzaga a() {
        return new zzaga(0, new int[8], new Object[8], true);
    }

    public final void b(zzadb zzadbVar) {
        zzada zzadaVar = zzadbVar.f30394a;
        if (this.f30471a != 0) {
            for (int i2 = 0; i2 < this.f30471a; i2++) {
                int i3 = this.f30472b[i2];
                Object obj = this.f30473c[i2];
                int i4 = i3 & 7;
                int i5 = i3 >>> 3;
                if (i4 == 0) {
                    zzadbVar.d(i5, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    zzadbVar.k(i5, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    zzadbVar.n(i5, (zzacr) obj);
                } else if (i4 == 3) {
                    zzadaVar.f(i5, 3);
                    ((zzaga) obj).b(zzadbVar);
                    zzadaVar.f(i5, 4);
                } else {
                    if (i4 != 5) {
                        x1.m(new zzaeg("Protocol message tag had invalid wire type."));
                        return;
                    }
                    zzadbVar.l(i5, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final int c() {
        int iB;
        int iC;
        int iB2;
        int i2 = this.d;
        if (i2 != -1) {
            return i2;
        }
        int iB3 = 0;
        for (int i3 = 0; i3 < this.f30471a; i3++) {
            int i4 = this.f30472b[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 != 1) {
                    if (i6 == 2) {
                        int i7 = i5 << 3;
                        zzacr zzacrVar = (zzacr) this.f30473c[i3];
                        int iB4 = zzada.b(i7);
                        int iF = zzacrVar.f();
                        iB3 = z81.b(iF, iF, iB4, iB3);
                    } else if (i6 == 3) {
                        int iB5 = zzada.b(i5 << 3);
                        iB = iB5 + iB5;
                        iC = ((zzaga) this.f30473c[i3]).c();
                    } else {
                        if (i6 != 5) {
                            bm.i(new zzaeg("Protocol message tag had invalid wire type."));
                            return 0;
                        }
                        ((Integer) this.f30473c[i3]).getClass();
                        iB2 = zzada.b(i5 << 3) + 4;
                    }
                } else {
                    ((Long) this.f30473c[i3]).getClass();
                    iB2 = zzada.b(i5 << 3) + 8;
                }
                iB3 = iB2 + iB3;
            } else {
                int i8 = i5 << 3;
                long jLongValue = ((Long) this.f30473c[i3]).longValue();
                iB = zzada.b(i8);
                iC = zzada.c(jLongValue);
            }
            iB3 = iC + iB + iB3;
        }
        this.d = iB3;
        return iB3;
    }

    public final void d(int i2, Object obj) {
        if (!this.f30474e) {
            x1.i();
            return;
        }
        e(this.f30471a + 1);
        int[] iArr = this.f30472b;
        int i3 = this.f30471a;
        iArr[i3] = i2;
        this.f30473c[i3] = obj;
        this.f30471a = i3 + 1;
    }

    public final void e(int i2) {
        int[] iArr = this.f30472b;
        if (i2 > iArr.length) {
            int i3 = this.f30471a;
            int i4 = (i3 / 2) + i3;
            if (i4 >= i2) {
                i2 = i4;
            }
            if (i2 < 8) {
                i2 = 8;
            }
            this.f30472b = Arrays.copyOf(iArr, i2);
            this.f30473c = Arrays.copyOf(this.f30473c, i2);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof zzaga)) {
            zzaga zzagaVar = (zzaga) obj;
            int i2 = this.f30471a;
            if (i2 == zzagaVar.f30471a) {
                int[] iArr = this.f30472b;
                int[] iArr2 = zzagaVar.f30472b;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (iArr[i3] == iArr2[i3]) {
                    }
                }
                Object[] objArr = this.f30473c;
                Object[] objArr2 = zzagaVar.f30473c;
                int i4 = this.f30471a;
                for (int i5 = 0; i5 < i4; i5++) {
                    if (objArr[i5].equals(objArr2[i5])) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f30471a;
        int i3 = i2 + 527;
        int[] iArr = this.f30472b;
        int iHashCode = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = ((i3 * 31) + i4) * 31;
        Object[] objArr = this.f30473c;
        int i7 = this.f30471a;
        for (int i8 = 0; i8 < i7; i8++) {
            iHashCode = (iHashCode * 31) + objArr[i8].hashCode();
        }
        return i6 + iHashCode;
    }
}
