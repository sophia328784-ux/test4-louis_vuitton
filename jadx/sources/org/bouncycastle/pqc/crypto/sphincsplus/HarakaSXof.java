package org.bouncycastle.pqc.crypto.sphincsplus;

import com.sightcall.uvc.Camera;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
class HarakaSXof extends HarakaSBase {
    public HarakaSXof(byte[] bArr) {
        byte[] bArr2 = new byte[Camera.DEFAULT_PREVIEW_WIDTH];
        update(bArr, 0, bArr.length);
        doFinal(bArr2, 0, Camera.DEFAULT_PREVIEW_WIDTH);
        this.haraka512_rc = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 10, 8);
        this.haraka256_rc = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 10, 8);
        for (int i2 = 0; i2 < 10; i2++) {
            interleaveConstant32(this.haraka256_rc[i2], bArr2, i2 << 5);
            interleaveConstant(this.haraka512_rc[i2], bArr2, i2 << 6);
        }
    }

    public int doFinal(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = this.buffer;
        int i4 = this.off;
        bArr2[i4] = (byte) (bArr2[i4] ^ 31);
        bArr2[31] = (byte) (bArr2[31] ^ 128);
        int i5 = i3;
        while (i5 >= 32) {
            haraka512Perm(this.buffer);
            System.arraycopy(this.buffer, 0, bArr, i2, 32);
            i2 += 32;
            i5 -= 32;
        }
        if (i5 > 0) {
            haraka512Perm(this.buffer);
            System.arraycopy(this.buffer, 0, bArr, i2, i5);
        }
        reset();
        return i3;
    }

    public String getAlgorithmName() {
        return "Haraka-S";
    }

    public void update(byte[] bArr, int i2, int i3) {
        byte[] bArr2;
        int i4 = (this.off + i3) >> 5;
        int i5 = i2;
        for (int i6 = 0; i6 < i4; i6++) {
            while (true) {
                int i7 = this.off;
                bArr2 = this.buffer;
                if (i7 < 32) {
                    this.off = i7 + 1;
                    bArr2[i7] = (byte) (bArr[i5] ^ bArr2[i7]);
                    i5++;
                }
            }
            haraka512Perm(bArr2);
            this.off = 0;
        }
        while (i5 < i2 + i3) {
            byte[] bArr3 = this.buffer;
            int i8 = this.off;
            this.off = i8 + 1;
            bArr3[i8] = (byte) (bArr3[i8] ^ bArr[i5]);
            i5++;
        }
    }

    public void update(byte b2) {
        byte[] bArr = this.buffer;
        int i2 = this.off;
        int i3 = i2 + 1;
        this.off = i3;
        bArr[i2] = (byte) (b2 ^ bArr[i2]);
        if (i3 == 32) {
            haraka512Perm(bArr);
            this.off = 0;
        }
    }
}
