package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GeneralDigest implements ExtendedDigest, Memoable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f77844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f77845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f77846c;

    public GeneralDigest(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        this.f77844a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f77845b = Pack.a(bArr, 4);
        this.f77846c = Pack.b(bArr, 8);
    }

    @Override // org.spongycastle.crypto.Digest
    public final void a(int i2, byte[] bArr) {
        int i3 = 0;
        int iMax = Math.max(0, i2);
        int i4 = this.f77845b;
        byte[] bArr2 = this.f77844a;
        if (i4 != 0) {
            int i5 = 0;
            while (true) {
                if (i5 >= iMax) {
                    i3 = i5;
                    break;
                }
                int i6 = this.f77845b;
                int i7 = i6 + 1;
                this.f77845b = i7;
                int i8 = i5 + 1;
                bArr2[i6] = bArr[i5];
                if (i7 == 4) {
                    g(bArr2, 0);
                    this.f77845b = 0;
                    i3 = i8;
                    break;
                }
                i5 = i8;
            }
        }
        int i9 = ((iMax - i3) & (-4)) + i3;
        while (i3 < i9) {
            g(bArr, i3);
            i3 += 4;
        }
        while (i3 < iMax) {
            int i10 = this.f77845b;
            this.f77845b = i10 + 1;
            bArr2[i10] = bArr[i3];
            i3++;
        }
        this.f77846c += (long) iMax;
    }

    public final void c(GeneralDigest generalDigest) {
        byte[] bArr = generalDigest.f77844a;
        System.arraycopy(bArr, 0, this.f77844a, 0, bArr.length);
        this.f77845b = generalDigest.f77845b;
        this.f77846c = generalDigest.f77846c;
    }

    public final void d() {
        long j2 = this.f77846c << 3;
        i((byte) -128);
        while (this.f77845b != 0) {
            i((byte) 0);
        }
        f(j2);
        e();
    }

    public abstract void e();

    public abstract void f(long j2);

    public abstract void g(byte[] bArr, int i2);

    public void h() {
        this.f77846c = 0L;
        this.f77845b = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f77844a;
            if (i2 >= bArr.length) {
                return;
            }
            bArr[i2] = 0;
            i2++;
        }
    }

    public final void i(byte b2) {
        int i2 = this.f77845b;
        int i3 = i2 + 1;
        this.f77845b = i3;
        byte[] bArr = this.f77844a;
        bArr[i2] = b2;
        if (i3 == bArr.length) {
            g(bArr, 0);
            this.f77845b = 0;
        }
        this.f77846c++;
    }

    public GeneralDigest(GeneralDigest generalDigest) {
        this.f77844a = new byte[4];
        c(generalDigest);
    }

    public GeneralDigest() {
        this.f77844a = new byte[4];
        this.f77845b = 0;
    }
}
