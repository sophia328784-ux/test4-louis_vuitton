package org.bouncycastle.crypto.paddings;

import defpackage.az;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* JADX INFO: loaded from: classes5.dex */
public class ISO7816d4Padding implements BlockCipherPadding {
    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int i2) {
        int length = bArr.length - i2;
        bArr[i2] = -128;
        while (true) {
            i2++;
            if (i2 >= bArr.length) {
                return length;
            }
            bArr[i2] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "ISO7816-4";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        int length = bArr.length;
        int i2 = -1;
        int i3 = -1;
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            int i4 = bArr[length] & 255;
            i2 ^= ((((i4 ^ 128) - 1) >> 31) & i3) & (length ^ i2);
            i3 &= (i4 - 1) >> 31;
        }
        if (i2 >= 0) {
            return bArr.length - i2;
        }
        az.x("pad block corrupted");
        return 0;
    }
}
