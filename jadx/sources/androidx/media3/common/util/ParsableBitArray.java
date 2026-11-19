package androidx.media3.common.util;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CheckReturnValue;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
public final class ParsableBitArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f14189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14191c;
    public int d;

    public ParsableBitArray() {
        this.f14189a = Util.f14243b;
    }

    public final void a() {
        int i2;
        int i3 = this.f14190b;
        Preconditions.q(i3 >= 0 && (i3 < (i2 = this.d) || (i3 == i2 && this.f14191c == 0)));
    }

    public final int b() {
        return ((this.d - this.f14190b) * 8) - this.f14191c;
    }

    public final void c() {
        if (this.f14191c == 0) {
            return;
        }
        this.f14191c = 0;
        this.f14190b++;
        a();
    }

    public final int d() {
        Preconditions.q(this.f14191c == 0);
        return this.f14190b;
    }

    public final int e() {
        return (this.f14190b * 8) + this.f14191c;
    }

    public final boolean f() {
        boolean z = (this.f14189a[this.f14190b] & (128 >> this.f14191c)) != 0;
        n();
        return z;
    }

    public final int g(int i2) {
        int i3;
        if (i2 == 0) {
            return 0;
        }
        this.f14191c += i2;
        int i4 = 0;
        while (true) {
            i3 = this.f14191c;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.f14191c = i5;
            byte[] bArr = this.f14189a;
            int i6 = this.f14190b;
            this.f14190b = i6 + 1;
            i4 |= (bArr[i6] & 255) << i5;
        }
        byte[] bArr2 = this.f14189a;
        int i7 = this.f14190b;
        int i8 = ((-1) >>> (32 - i2)) & (i4 | ((bArr2[i7] & 255) >> (8 - i3)));
        if (i3 == 8) {
            this.f14191c = 0;
            this.f14190b = i7 + 1;
        }
        a();
        return i8;
    }

    public final void h(int i2, byte[] bArr) {
        int i3 = i2 >> 3;
        for (int i4 = 0; i4 < i3; i4++) {
            byte[] bArr2 = this.f14189a;
            int i5 = this.f14190b;
            int i6 = i5 + 1;
            this.f14190b = i6;
            byte b2 = bArr2[i5];
            int i7 = this.f14191c;
            byte b3 = (byte) (b2 << i7);
            bArr[i4] = b3;
            bArr[i4] = (byte) (((255 & bArr2[i6]) >> (8 - i7)) | b3);
        }
        int i8 = i2 & 7;
        if (i8 == 0) {
            return;
        }
        byte b4 = (byte) (bArr[i3] & (255 >> i8));
        bArr[i3] = b4;
        int i9 = this.f14191c;
        if (i9 + i8 > 8) {
            byte[] bArr3 = this.f14189a;
            int i10 = this.f14190b;
            this.f14190b = i10 + 1;
            bArr[i3] = (byte) (b4 | ((bArr3[i10] & 255) << i9));
            this.f14191c = i9 - 8;
        }
        int i11 = this.f14191c + i8;
        this.f14191c = i11;
        byte[] bArr4 = this.f14189a;
        int i12 = this.f14190b;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i12]) >> (8 - i11)) << (8 - i8))) | bArr[i3]);
        if (i11 == 8) {
            this.f14191c = 0;
            this.f14190b = i12 + 1;
        }
        a();
    }

    public final long i(int i2) {
        if (i2 <= 32) {
            int iG = g(i2);
            String str = Util.f14242a;
            return ((long) iG) & BodyPartID.bodyIdMax;
        }
        int iG2 = g(i2 - 32);
        int iG3 = g(32);
        String str2 = Util.f14242a;
        return (((long) iG3) & BodyPartID.bodyIdMax) | ((((long) iG2) & BodyPartID.bodyIdMax) << 32);
    }

    public final void j(int i2, byte[] bArr) {
        Preconditions.q(this.f14191c == 0);
        System.arraycopy(this.f14189a, this.f14190b, bArr, 0, i2);
        this.f14190b += i2;
        a();
    }

    public final void k(int i2, byte[] bArr) {
        this.f14189a = bArr;
        this.f14190b = 0;
        this.f14191c = 0;
        this.d = i2;
    }

    public final void l(ParsableByteArray parsableByteArray) {
        k(parsableByteArray.f14196c, parsableByteArray.f14194a);
        m(parsableByteArray.f14195b * 8);
    }

    public final void m(int i2) {
        int i3 = i2 / 8;
        this.f14190b = i3;
        this.f14191c = i2 - (i3 * 8);
        a();
    }

    public final void n() {
        int i2 = this.f14191c + 1;
        this.f14191c = i2;
        if (i2 == 8) {
            this.f14191c = 0;
            this.f14190b++;
        }
        a();
    }

    public final void o(int i2) {
        int i3 = i2 / 8;
        int i4 = this.f14190b + i3;
        this.f14190b = i4;
        int i5 = (i2 - (i3 * 8)) + this.f14191c;
        this.f14191c = i5;
        if (i5 > 7) {
            this.f14190b = i4 + 1;
            this.f14191c = i5 - 8;
        }
        a();
    }

    public final void p(int i2) {
        Preconditions.q(this.f14191c == 0);
        this.f14190b += i2;
        a();
    }

    public ParsableBitArray(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public ParsableBitArray(byte[] bArr, int i2) {
        this.f14189a = bArr;
        this.d = i2;
    }
}
