package com.google.android.gms.internal.measurement;

import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
final class zzacz extends zzada {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f30387c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f30388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final OutputStream f30389f;

    public zzacz(OutputStream outputStream, int i2) {
        if (outputStream == null) {
            r81.d("out");
            throw null;
        }
        this.f30389f = outputStream;
        if (i2 < 0) {
            md.n("bufferSize must be >= 0");
            throw null;
        }
        byte[] bArr = new byte[Math.max(i2, 20)];
        this.f30387c = bArr;
        this.d = bArr.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final int A() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }

    public final void B(long j2) {
        boolean z = zzada.f30392b;
        byte[] bArr = this.f30387c;
        if (z) {
            while (true) {
                long j3 = j2 & (-128);
                int i2 = (int) j2;
                int i3 = this.f30388e;
                if (j3 == 0) {
                    this.f30388e = i3 + 1;
                    zzagg.k(bArr, (byte) i2, i3);
                    return;
                } else {
                    this.f30388e = i3 + 1;
                    zzagg.k(bArr, (byte) (i2 | 128), i3);
                    j2 >>>= 7;
                }
            }
        } else {
            while (true) {
                long j4 = j2 & (-128);
                int i4 = (int) j2;
                int i5 = this.f30388e;
                if (j4 == 0) {
                    this.f30388e = i5 + 1;
                    bArr[i5] = (byte) i4;
                    return;
                } else {
                    this.f30388e = i5 + 1;
                    bArr[i5] = (byte) (i4 | 128);
                    j2 >>>= 7;
                }
            }
        }
    }

    public final void C(int i2) {
        int i3 = this.f30388e;
        byte[] bArr = this.f30387c;
        bArr[i3] = (byte) i2;
        bArr[i3 + 1] = (byte) (i2 >> 8);
        bArr[i3 + 2] = (byte) (i2 >> 16);
        bArr[i3 + 3] = (byte) (i2 >> 24);
        this.f30388e = i3 + 4;
    }

    public final void D(long j2) {
        int i2 = this.f30388e;
        byte[] bArr = this.f30387c;
        bArr[i2] = (byte) j2;
        bArr[i2 + 1] = (byte) (j2 >> 8);
        bArr[i2 + 2] = (byte) (j2 >> 16);
        bArr[i2 + 3] = (byte) (j2 >> 24);
        bArr[i2 + 4] = (byte) (j2 >> 32);
        bArr[i2 + 5] = (byte) (j2 >> 40);
        bArr[i2 + 6] = (byte) (j2 >> 48);
        bArr[i2 + 7] = (byte) (j2 >> 56);
        this.f30388e = i2 + 8;
    }

    public final void E(int i2, int i3, byte[] bArr) throws IOException {
        int i4 = this.f30388e;
        int i5 = this.d;
        int i6 = i5 - i4;
        byte[] bArr2 = this.f30387c;
        if (i6 >= i3) {
            System.arraycopy(bArr, i2, bArr2, i4, i3);
            this.f30388e += i3;
            return;
        }
        System.arraycopy(bArr, i2, bArr2, i4, i6);
        int i7 = i2 + i6;
        this.f30388e = i5;
        G();
        int i8 = i3 - i6;
        if (i8 > i5) {
            this.f30389f.write(bArr, i7, i8);
        } else {
            System.arraycopy(bArr, i7, bArr2, 0, i8);
            this.f30388e = i8;
        }
    }

    public final void F(int i2) {
        if (this.d - this.f30388e < i2) {
            G();
        }
    }

    public final void G() {
        this.f30389f.write(this.f30387c, 0, this.f30388e);
        this.f30388e = 0;
    }

    public final void H(int i2) {
        boolean z = zzada.f30392b;
        byte[] bArr = this.f30387c;
        if (z) {
            while (true) {
                int i3 = i2 & (-128);
                int i4 = this.f30388e;
                if (i3 == 0) {
                    this.f30388e = i4 + 1;
                    zzagg.k(bArr, (byte) i2, i4);
                    return;
                } else {
                    this.f30388e = i4 + 1;
                    zzagg.k(bArr, (byte) (i2 | 128), i4);
                    i2 >>>= 7;
                }
            }
        } else {
            while (true) {
                int i5 = i2 & (-128);
                int i6 = this.f30388e;
                if (i5 == 0) {
                    this.f30388e = i6 + 1;
                    bArr[i6] = (byte) i2;
                    return;
                } else {
                    this.f30388e = i6 + 1;
                    bArr[i6] = (byte) (i2 | 128);
                    i2 >>>= 7;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzacj
    public final void a(int i2, int i3, byte[] bArr) throws IOException {
        E(i2, i3, bArr);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void f(int i2, int i3) {
        v((i2 << 3) | i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void g(int i2, int i3) {
        F(20);
        H(i2 << 3);
        if (i3 >= 0) {
            H(i3);
        } else {
            B(i3);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void h(int i2, int i3) {
        F(20);
        H(i2 << 3);
        H(i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void i(int i2, int i3) {
        F(14);
        H((i2 << 3) | 5);
        C(i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void j(int i2, long j2) {
        F(20);
        H(i2 << 3);
        B(j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void k(int i2, long j2) {
        F(18);
        H((i2 << 3) | 1);
        D(j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void l(int i2, boolean z) {
        F(11);
        H(i2 << 3);
        int i3 = this.f30388e;
        this.f30387c[i3] = z ? (byte) 1 : (byte) 0;
        this.f30388e = i3 + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void m(int i2, String str) throws IOException {
        v((i2 << 3) | 2);
        z(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void n(int i2, zzacr zzacrVar) {
        v((i2 << 3) | 2);
        o(zzacrVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void o(zzacr zzacrVar) {
        v(zzacrVar.f());
        zzacrVar.l(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void p(int i2, byte[] bArr) throws IOException {
        v(i2);
        E(0, i2, bArr);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void q(int i2, zzafc zzafcVar) {
        v(11);
        h(2, i2);
        v(26);
        s(zzafcVar);
        v(12);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void r(int i2, zzacr zzacrVar) {
        v(11);
        h(2, i2);
        n(3, zzacrVar);
        v(12);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void s(zzafc zzafcVar) {
        v(zzafcVar.e());
        zzafcVar.f(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void t(byte b2) {
        if (this.f30388e == this.d) {
            G();
        }
        int i2 = this.f30388e;
        this.f30387c[i2] = b2;
        this.f30388e = i2 + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void u(int i2) {
        if (i2 >= 0) {
            v(i2);
        } else {
            x(i2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void v(int i2) {
        F(5);
        H(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void w(int i2) {
        F(4);
        C(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void x(long j2) {
        F(10);
        B(j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void y(long j2) {
        F(8);
        D(j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void z(String str) throws IOException {
        int length = str.length() * 3;
        int iB = zzada.b(length);
        int i2 = iB + length;
        int i3 = this.d;
        if (i2 > i3) {
            byte[] bArr = new byte[length];
            int iC = zzagl.c(str, bArr, 0, length);
            v(iC);
            E(0, iC, bArr);
            return;
        }
        if (i2 > i3 - this.f30388e) {
            G();
        }
        int iB2 = zzada.b(str.length());
        int i4 = this.f30388e;
        byte[] bArr2 = this.f30387c;
        try {
            if (iB2 == iB) {
                int i5 = i4 + iB2;
                this.f30388e = i5;
                int iC2 = zzagl.c(str, bArr2, i5, i3 - i5);
                this.f30388e = i4;
                H((iC2 - i4) - iB2);
                this.f30388e = iC2;
            } else {
                int iB3 = zzagl.b(str);
                H(iB3);
                this.f30388e = zzagl.c(str, bArr2, this.f30388e, iB3);
            }
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new zzacy(e2);
        }
    }
}
