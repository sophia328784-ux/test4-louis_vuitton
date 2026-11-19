package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DERGenerator extends ASN1Generator {
    private boolean _isExplicit;
    private int _tagNo;
    private boolean _tagged;

    public DERGenerator(OutputStream outputStream, int i2, boolean z) {
        super(outputStream);
        this._tagged = true;
        this._isExplicit = z;
        this._tagNo = i2;
    }

    private void writeLength(OutputStream outputStream, int i2) throws IOException {
        if (i2 <= 127) {
            outputStream.write((byte) i2);
            return;
        }
        int i3 = 1;
        int i4 = i2;
        while (true) {
            i4 >>>= 8;
            if (i4 == 0) {
                break;
            } else {
                i3++;
            }
        }
        outputStream.write((byte) (i3 | 128));
        for (int i5 = (i3 - 1) * 8; i5 >= 0; i5 -= 8) {
            outputStream.write((byte) (i2 >> i5));
        }
    }

    public void writeDEREncoded(int i2, byte[] bArr) throws IOException {
        if (!this._tagged) {
            writeDEREncoded(this._out, i2, bArr);
            return;
        }
        int i3 = this._tagNo;
        int i4 = i3 | 128;
        if (this._isExplicit) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            writeDEREncoded(byteArrayOutputStream, i2, bArr);
            writeDEREncoded(this._out, i3 | 160, byteArrayOutputStream.toByteArray());
            return;
        }
        int i5 = i2 & 32;
        OutputStream outputStream = this._out;
        if (i5 != 0) {
            writeDEREncoded(outputStream, i3 | 160, bArr);
        } else {
            writeDEREncoded(outputStream, i4, bArr);
        }
    }

    public DERGenerator(OutputStream outputStream) {
        super(outputStream);
        this._tagged = false;
    }

    public void writeDEREncoded(OutputStream outputStream, int i2, byte[] bArr) throws IOException {
        outputStream.write(i2);
        writeLength(outputStream, bArr.length);
        outputStream.write(bArr);
    }
}
