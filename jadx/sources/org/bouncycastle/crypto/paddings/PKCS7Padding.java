package org.bouncycastle.crypto.paddings;

import defpackage.az;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.openssl.PEMParser;

/* JADX INFO: loaded from: classes5.dex */
public class PKCS7Padding implements BlockCipherPadding {
    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int i2) {
        byte length = (byte) (bArr.length - i2);
        while (i2 < bArr.length) {
            bArr[i2] = length;
            i2++;
        }
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return PEMParser.TYPE_PKCS7;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        byte b2 = bArr[bArr.length - 1];
        int i2 = b2 & 255;
        int length = bArr.length - i2;
        int i3 = ((i2 - 1) | length) >> 31;
        for (int i4 = 0; i4 < bArr.length; i4++) {
            i3 |= (bArr[i4] ^ b2) & (~((i4 - length) >> 31));
        }
        if (i3 == 0) {
            return i2;
        }
        az.x("pad block corrupted");
        return 0;
    }
}
