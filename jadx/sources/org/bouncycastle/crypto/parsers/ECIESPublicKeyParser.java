package org.bouncycastle.crypto.parsers;

import defpackage.az;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.KeyParser;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.util.io.Streams;

/* JADX INFO: loaded from: classes5.dex */
public class ECIESPublicKeyParser implements KeyParser {
    private ECDomainParameters ecParams;

    public ECIESPublicKeyParser(ECDomainParameters eCDomainParameters) {
        this.ecParams = eCDomainParameters;
    }

    @Override // org.bouncycastle.crypto.KeyParser
    public AsymmetricKeyParameter readKey(InputStream inputStream) throws IOException {
        int fieldSize;
        int i2 = inputStream.read();
        if (i2 == 0) {
            az.o("Sender's public key invalid.");
            return null;
        }
        if (i2 == 2 || i2 == 3) {
            fieldSize = (this.ecParams.getCurve().getFieldSize() + 7) / 8;
        } else {
            if (i2 != 4 && i2 != 6 && i2 != 7) {
                az.y(Integer.toString(i2, 16), "Sender's public key has invalid point encoding 0x");
                return null;
            }
            fieldSize = ((this.ecParams.getCurve().getFieldSize() + 7) / 8) * 2;
        }
        byte[] bArr = new byte[fieldSize + 1];
        bArr[0] = (byte) i2;
        Streams.readFully(inputStream, bArr, 1, bArr.length - 1);
        return new ECPublicKeyParameters(this.ecParams.getCurve().decodePoint(bArr), this.ecParams);
    }
}
