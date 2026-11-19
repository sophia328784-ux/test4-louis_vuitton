package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* JADX INFO: loaded from: classes5.dex */
public class TBCPadding implements BlockCipherPadding {
    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int i2) {
        int length = bArr.length - i2;
        int i3 = 0;
        if (i2 <= 0 ? (bArr[bArr.length - 1] & 1) == 0 : (bArr[i2 - 1] & 1) == 0) {
            i3 = 255;
        }
        byte b2 = (byte) i3;
        while (i2 < bArr.length) {
            bArr[i2] = b2;
            i2++;
        }
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "TBC";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        int length = bArr.length - 1;
        int i2 = bArr[length] & 255;
        int i3 = -1;
        int i4 = 1;
        while (true) {
            length--;
            if (length < 0) {
                return i4;
            }
            i3 &= (((bArr[length] & 255) ^ i2) - 1) >> 31;
            i4 -= i3;
        }
    }
}
