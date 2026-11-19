package androidx.media3.container;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class ParsableNalUnitBitArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f14349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14351c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14352e = 0;

    public ParsableNalUnitBitArray(byte[] bArr, int i2, int i3) {
        this.f14349a = bArr;
        this.f14351c = i2;
        this.d = i2;
        this.f14350b = i3;
        a();
    }

    public final void a() {
        int i2;
        int i3 = this.d;
        Preconditions.q(i3 >= 0 && (i3 < (i2 = this.f14350b) || (i3 == i2 && this.f14352e == 0)));
    }

    public final boolean b(int i2) {
        int i3 = this.d;
        int i4 = i2 / 8;
        int i5 = i3 + i4;
        int i6 = (this.f14352e + i2) - (i4 * 8);
        if (i6 > 7) {
            i5++;
            i6 -= 8;
        }
        while (true) {
            i3++;
            if (i3 > i5 || i5 > this.f14350b) {
                break;
            }
            if (h(i3)) {
                i5++;
                i3 += 2;
            }
        }
        int i7 = this.f14350b;
        return i5 < i7 || (i5 == i7 && i6 == 0);
    }

    public final boolean c() {
        int i2 = this.d;
        int i3 = this.f14352e;
        int i4 = 0;
        while (this.d < this.f14350b && !d()) {
            i4++;
        }
        boolean z = this.d == this.f14350b;
        this.d = i2;
        this.f14352e = i3;
        return !z && b((i4 * 2) + 1);
    }

    public final boolean d() {
        boolean z = (this.f14349a[this.d] & (128 >> this.f14352e)) != 0;
        i();
        return z;
    }

    public final int e(int i2) {
        int i3;
        this.f14352e += i2;
        int i4 = 0;
        while (true) {
            i3 = this.f14352e;
            int i5 = 2;
            if (i3 <= 8) {
                break;
            }
            int i6 = i3 - 8;
            this.f14352e = i6;
            byte[] bArr = this.f14349a;
            int i7 = this.d;
            i4 |= (bArr[i7] & 255) << i6;
            if (!h(i7 + 1)) {
                i5 = 1;
            }
            this.d = i7 + i5;
        }
        byte[] bArr2 = this.f14349a;
        int i8 = this.d;
        int i9 = ((-1) >>> (32 - i2)) & (i4 | ((bArr2[i8] & 255) >> (8 - i3)));
        if (i3 == 8) {
            this.f14352e = 0;
            this.d = i8 + (h(i8 + 1) ? 2 : 1);
        }
        a();
        return i9;
    }

    public final int f() {
        int i2 = 0;
        while (!d()) {
            i2++;
        }
        return ((1 << i2) - 1) + (i2 > 0 ? e(i2) : 0);
    }

    public final int g() {
        int iF = f();
        return ((iF + 1) / 2) * (iF % 2 == 0 ? -1 : 1);
    }

    public final boolean h(int i2) {
        int i3 = i2 - 2;
        if (this.f14351c > i3 || i2 >= this.f14350b) {
            return false;
        }
        byte[] bArr = this.f14349a;
        return bArr[i2] == 3 && bArr[i3] == 0 && bArr[i2 - 1] == 0;
    }

    public final void i() {
        int i2 = this.f14352e + 1;
        this.f14352e = i2;
        if (i2 == 8) {
            this.f14352e = 0;
            int i3 = this.d;
            this.d = i3 + (h(i3 + 1) ? 2 : 1);
        }
        a();
    }

    public final void j(int i2) {
        int i3 = this.d;
        int i4 = i2 / 8;
        int i5 = i3 + i4;
        this.d = i5;
        int i6 = (i2 - (i4 * 8)) + this.f14352e;
        this.f14352e = i6;
        if (i6 > 7) {
            this.d = i5 + 1;
            this.f14352e = i6 - 8;
        }
        while (true) {
            i3++;
            if (i3 > this.d) {
                a();
                return;
            } else if (h(i3)) {
                this.d++;
                i3 += 2;
            }
        }
    }
}
