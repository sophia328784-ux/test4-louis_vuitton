package com.google.android.gms.internal.measurement;

import defpackage.md;
import defpackage.o60;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
final class zzacx extends zzada {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f30385c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f30386e;

    public zzacx(byte[] bArr, int i2) {
        int length = bArr.length;
        if (((length - i2) | i2) < 0) {
            Locale locale = Locale.US;
            md.n(o60.h(length, i2, "Array range is invalid. Buffer.length=", ", offset=0, length="));
            throw null;
        }
        this.f30385c = bArr;
        this.f30386e = 0;
        this.d = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final int A() {
        return this.d - this.f30386e;
    }

    public final void B(int i2, int i3, byte[] bArr) throws zzacy {
        try {
            System.arraycopy(bArr, i2, this.f30385c, this.f30386e, i3);
            this.f30386e += i3;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzacy(this.f30386e, this.d, i3, e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzacj
    public final void a(int i2, int i3, byte[] bArr) throws zzacy {
        B(i2, i3, bArr);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void f(int i2, int i3) throws zzacy {
        v((i2 << 3) | i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void g(int i2, int i3) throws zzacy {
        v(i2 << 3);
        u(i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void h(int i2, int i3) throws zzacy {
        v(i2 << 3);
        v(i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void i(int i2, int i3) throws zzacy {
        v((i2 << 3) | 5);
        w(i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void j(int i2, long j2) throws zzacy {
        v(i2 << 3);
        x(j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void k(int i2, long j2) throws zzacy {
        v((i2 << 3) | 1);
        y(j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void l(int i2, boolean z) throws zzacy {
        v(i2 << 3);
        t(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void m(int i2, String str) throws zzacy {
        v((i2 << 3) | 2);
        z(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void n(int i2, zzacr zzacrVar) throws zzacy {
        v((i2 << 3) | 2);
        o(zzacrVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void o(zzacr zzacrVar) throws zzacy {
        v(zzacrVar.f());
        zzacrVar.l(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void p(int i2, byte[] bArr) throws zzacy {
        v(i2);
        B(0, i2, bArr);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void q(int i2, zzafc zzafcVar) throws zzacy {
        v(11);
        h(2, i2);
        v(26);
        s(zzafcVar);
        v(12);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void r(int i2, zzacr zzacrVar) throws zzacy {
        v(11);
        h(2, i2);
        n(3, zzacrVar);
        v(12);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void s(zzafc zzafcVar) throws zzacy {
        v(zzafcVar.e());
        zzafcVar.f(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void t(byte b2) throws zzacy {
        int i2 = this.f30386e;
        try {
            int i3 = i2 + 1;
            try {
                this.f30385c[i2] = b2;
                this.f30386e = i3;
            } catch (IndexOutOfBoundsException e2) {
                e = e2;
                i2 = i3;
                throw new zzacy(i2, this.d, 1, e);
            }
        } catch (IndexOutOfBoundsException e3) {
            e = e3;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void u(int i2) throws zzacy {
        if (i2 >= 0) {
            v(i2);
        } else {
            x(i2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void v(int i2) throws zzacy {
        int i3;
        int i4 = this.f30386e;
        while (true) {
            int i5 = i2 & (-128);
            byte[] bArr = this.f30385c;
            if (i5 == 0) {
                i3 = i4 + 1;
                bArr[i4] = (byte) i2;
                this.f30386e = i3;
                return;
            } else {
                i3 = i4 + 1;
                try {
                    bArr[i4] = (byte) (i2 | 128);
                    i2 >>>= 7;
                    i4 = i3;
                } catch (IndexOutOfBoundsException e2) {
                    throw new zzacy(i3, this.d, 1, e2);
                }
            }
            throw new zzacy(i3, this.d, 1, e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void w(int i2) throws zzacy {
        int i3 = this.f30386e;
        try {
            byte[] bArr = this.f30385c;
            bArr[i3] = (byte) i2;
            bArr[i3 + 1] = (byte) (i2 >> 8);
            bArr[i3 + 2] = (byte) (i2 >> 16);
            bArr[i3 + 3] = (byte) (i2 >> 24);
            this.f30386e = i3 + 4;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzacy(i3, this.d, 4, e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void x(long j2) throws zzacy {
        int i2;
        int i3 = this.f30386e;
        byte[] bArr = this.f30385c;
        int i4 = this.d;
        if (!zzada.f30392b || i4 - i3 < 10) {
            while ((j2 & (-128)) != 0) {
                int i5 = i3 + 1;
                try {
                    bArr[i3] = (byte) (((int) j2) | 128);
                    j2 >>>= 7;
                    i3 = i5;
                } catch (IndexOutOfBoundsException e2) {
                    e = e2;
                    i2 = i5;
                    throw new zzacy(i2, i4, 1, e);
                }
            }
            i2 = i3 + 1;
            try {
                bArr[i3] = (byte) j2;
            } catch (IndexOutOfBoundsException e3) {
                e = e3;
                throw new zzacy(i2, i4, 1, e);
            }
        } else {
            while ((j2 & (-128)) != 0) {
                zzagg.k(bArr, (byte) (((int) j2) | 128), i3);
                j2 >>>= 7;
                i3++;
            }
            i2 = i3 + 1;
            zzagg.k(bArr, (byte) j2, i3);
        }
        this.f30386e = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void y(long j2) throws zzacy {
        int i2 = this.f30386e;
        try {
            byte[] bArr = this.f30385c;
            bArr[i2] = (byte) j2;
            bArr[i2 + 1] = (byte) (j2 >> 8);
            bArr[i2 + 2] = (byte) (j2 >> 16);
            bArr[i2 + 3] = (byte) (j2 >> 24);
            bArr[i2 + 4] = (byte) (j2 >> 32);
            bArr[i2 + 5] = (byte) (j2 >> 40);
            bArr[i2 + 6] = (byte) (j2 >> 48);
            bArr[i2 + 7] = (byte) (j2 >> 56);
            this.f30386e = i2 + 8;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzacy(i2, this.d, 8, e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void z(String str) throws zzacy {
        int i2 = this.f30386e;
        try {
            int iB = zzada.b(str.length() * 3);
            int iB2 = zzada.b(str.length());
            byte[] bArr = this.f30385c;
            if (iB2 != iB) {
                v(zzagl.b(str));
                int i3 = this.f30386e;
                this.f30386e = zzagl.c(str, bArr, i3, bArr.length - i3);
            } else {
                int i4 = i2 + iB2;
                this.f30386e = i4;
                int iC = zzagl.c(str, bArr, i4, bArr.length - i4);
                this.f30386e = i2;
                v((iC - i2) - iB2);
                this.f30386e = iC;
            }
        } catch (IndexOutOfBoundsException e2) {
            throw new zzacy(e2);
        }
    }
}
