package org.bouncycastle.asn1;

import defpackage.az;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
public class ASN1OutputStream {
    private OutputStream os;

    public ASN1OutputStream(OutputStream outputStream) {
        this.os = outputStream;
    }

    public static ASN1OutputStream create(OutputStream outputStream, String str) {
        if (str.equals(ASN1Encoding.DER)) {
            return new DEROutputStream(outputStream);
        }
        return str.equals(ASN1Encoding.DL) ? new DLOutputStream(outputStream) : new ASN1OutputStream(outputStream);
    }

    public static int getLengthOfDL(int i2) {
        if (i2 < 128) {
            return 1;
        }
        int i3 = 2;
        while (true) {
            i2 >>>= 8;
            if (i2 == 0) {
                return i3;
            }
            i3++;
        }
    }

    public static int getLengthOfEncodingDL(boolean z, int i2) {
        return getLengthOfDL(i2) + (z ? 1 : 0) + i2;
    }

    public static int getLengthOfIdentifier(int i2) {
        if (i2 < 31) {
            return 1;
        }
        int i3 = 2;
        while (true) {
            i2 >>>= 7;
            if (i2 == 0) {
                return i3;
            }
            i3++;
        }
    }

    public void close() throws IOException {
        this.os.close();
    }

    public void flush() throws IOException {
        this.os.flush();
    }

    public void flushInternal() throws IOException {
    }

    public DEROutputStream getDERSubStream() {
        return new DEROutputStream(this.os);
    }

    public DLOutputStream getDLSubStream() {
        return new DLOutputStream(this.os);
    }

    public final void write(int i2) throws IOException {
        this.os.write(i2);
    }

    public final void writeDL(int i2) throws IOException {
        if (i2 < 128) {
            write(i2);
            return;
        }
        int i3 = 5;
        byte[] bArr = new byte[5];
        while (true) {
            int i4 = i3 - 1;
            bArr[i4] = (byte) i2;
            i2 >>>= 8;
            if (i2 == 0) {
                int i5 = i3 - 2;
                bArr[i5] = (byte) ((5 - i4) | 128);
                write(bArr, i5, 6 - i4);
                return;
            }
            i3 = i4;
        }
    }

    public void writeElements(ASN1Encodable[] aSN1EncodableArr) throws IOException {
        for (ASN1Encodable aSN1Encodable : aSN1EncodableArr) {
            aSN1Encodable.toASN1Primitive().encode(this, true);
        }
    }

    public final void writeEncodingDL(boolean z, int i2, byte b2, byte[] bArr, int i3, int i4) throws IOException {
        writeIdentifier(z, i2);
        writeDL(i4 + 1);
        write(b2);
        write(bArr, i3, i4);
    }

    public final void writeEncodingIL(boolean z, int i2, ASN1Encodable[] aSN1EncodableArr) throws IOException {
        writeIdentifier(z, i2);
        write(128);
        writeElements(aSN1EncodableArr);
        write(0);
        write(0);
    }

    public final void writeIdentifier(boolean z, int i2, int i3) throws IOException {
        if (z) {
            if (i3 < 31) {
                write(i2 | i3);
                return;
            }
            byte[] bArr = new byte[6];
            int i4 = 5;
            bArr[5] = (byte) (i3 & CertificateBody.profileType);
            while (i3 > 127) {
                i3 >>>= 7;
                i4--;
                bArr[i4] = (byte) ((i3 & CertificateBody.profileType) | 128);
            }
            int i5 = i4 - 1;
            bArr[i5] = (byte) (31 | i2);
            write(bArr, i5, 6 - i5);
        }
    }

    public final void writeObject(ASN1Encodable aSN1Encodable) throws IOException {
        if (aSN1Encodable == null) {
            az.o("null object detected");
        } else {
            writePrimitive(aSN1Encodable.toASN1Primitive(), true);
            flushInternal();
        }
    }

    public void writePrimitive(ASN1Primitive aSN1Primitive, boolean z) throws IOException {
        aSN1Primitive.encode(this, z);
    }

    public void writePrimitives(ASN1Primitive[] aSN1PrimitiveArr) throws IOException {
        for (ASN1Primitive aSN1Primitive : aSN1PrimitiveArr) {
            aSN1Primitive.encode(this, true);
        }
    }

    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        this.os.write(bArr, i2, i3);
    }

    public final void writeEncodingDL(boolean z, int i2, byte b2) throws IOException {
        writeIdentifier(z, i2);
        writeDL(1);
        write(b2);
    }

    public final void writeEncodingDL(boolean z, int i2, int i3, byte[] bArr) throws IOException {
        writeIdentifier(z, i2, i3);
        writeDL(bArr.length);
        write(bArr, 0, bArr.length);
    }

    public final void writeEncodingDL(boolean z, int i2, byte[] bArr) throws IOException {
        writeIdentifier(z, i2);
        writeDL(bArr.length);
        write(bArr, 0, bArr.length);
    }

    public final void writeEncodingDL(boolean z, int i2, byte[] bArr, int i3, int i4) throws IOException {
        writeIdentifier(z, i2);
        writeDL(i4);
        write(bArr, i3, i4);
    }

    public final void writeEncodingDL(boolean z, int i2, byte[] bArr, int i3, int i4, byte b2) throws IOException {
        writeIdentifier(z, i2);
        writeDL(i4 + 1);
        write(bArr, i3, i4);
        write(b2);
    }

    public final void writeObject(ASN1Primitive aSN1Primitive) throws IOException {
        if (aSN1Primitive == null) {
            az.o("null object detected");
        } else {
            writePrimitive(aSN1Primitive, true);
            flushInternal();
        }
    }

    public static ASN1OutputStream create(OutputStream outputStream) {
        return new ASN1OutputStream(outputStream);
    }

    public final void writeIdentifier(boolean z, int i2) throws IOException {
        if (z) {
            write(i2);
        }
    }
}
