package androidx.media3.extractor;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class VorbisBitArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f16218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16220c;
    public int d;

    public VorbisBitArray(byte[] bArr) {
        this.f16218a = bArr;
        this.f16219b = bArr.length;
    }

    public final boolean a() {
        boolean z = (((this.f16218a[this.f16220c] & 255) >> this.d) & 1) == 1;
        c(1);
        return z;
    }

    public final int b(int i2) {
        int i3 = this.f16220c;
        int iMin = Math.min(i2, 8 - this.d);
        int i4 = i3 + 1;
        byte[] bArr = this.f16218a;
        int i5 = ((bArr[i3] & 255) >> this.d) & (255 >> (8 - iMin));
        while (iMin < i2) {
            i5 |= (bArr[i4] & 255) << iMin;
            iMin += 8;
            i4++;
        }
        int i6 = i5 & ((-1) >>> (32 - i2));
        c(i2);
        return i6;
    }

    public final void c(int i2) {
        int i3;
        int i4 = i2 / 8;
        int i5 = this.f16220c + i4;
        this.f16220c = i5;
        int i6 = (i2 - (i4 * 8)) + this.d;
        this.d = i6;
        boolean z = true;
        if (i6 > 7) {
            this.f16220c = i5 + 1;
            this.d = i6 - 8;
        }
        int i7 = this.f16220c;
        if (i7 < 0 || (i7 >= (i3 = this.f16219b) && (i7 != i3 || this.d != 0))) {
            z = false;
        }
        Preconditions.q(z);
    }
}
