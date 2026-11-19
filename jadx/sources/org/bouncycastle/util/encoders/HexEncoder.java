package org.bouncycastle.util.encoders;

import defpackage.az;
import defpackage.r81;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class HexEncoder implements Encoder {
    protected final byte[] encodingTable = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    protected final byte[] decodingTable = new byte[128];

    public HexEncoder() {
        initialiseDecodingTable();
    }

    private static boolean ignore(char c2) {
        return c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == ' ';
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[36];
        int length = str.length();
        while (length > 0 && ignore(str.charAt(length - 1))) {
            length--;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < length) {
            while (i2 < length && ignore(str.charAt(i2))) {
                i2++;
            }
            int i5 = i2 + 1;
            byte b2 = this.decodingTable[str.charAt(i2)];
            while (i5 < length && ignore(str.charAt(i5))) {
                i5++;
            }
            int i6 = i5 + 1;
            byte b3 = this.decodingTable[str.charAt(i5)];
            if ((b2 | b3) < 0) {
                az.o("invalid characters encountered in Hex string");
                return 0;
            }
            int i7 = i3 + 1;
            bArr[i3] = (byte) ((b2 << 4) | b3);
            if (i7 == 36) {
                outputStream.write(bArr);
                i3 = 0;
            } else {
                i3 = i7;
            }
            i4++;
            i2 = i6;
        }
        if (i3 > 0) {
            outputStream.write(bArr, 0, i3);
        }
        return i4;
    }

    public byte[] decodeStrict(String str, int i2, int i3) throws IOException {
        if (str == null) {
            r81.d("'str' cannot be null");
            return null;
        }
        if (i2 < 0 || i3 < 0 || i2 > str.length() - i3) {
            az.v("invalid offset and/or length specified");
            return null;
        }
        if ((i3 & 1) != 0) {
            az.o("a hexadecimal encoding must have an even number of characters");
            return null;
        }
        int i4 = i3 >>> 1;
        byte[] bArr = new byte[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i2 + 1;
            byte b2 = this.decodingTable[str.charAt(i2)];
            i2 += 2;
            int i7 = (b2 << 4) | this.decodingTable[str.charAt(i6)];
            if (i7 < 0) {
                az.o("invalid characters encountered in Hex string");
                return null;
            }
            bArr[i5] = (byte) i7;
        }
        return bArr;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int encode(byte[] bArr, int i2, int i3, OutputStream outputStream) throws IOException {
        if (i3 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int i4 = i2;
        int i5 = i3;
        while (i5 > 0) {
            int iMin = Math.min(36, i5);
            HexEncoder hexEncoder = this;
            outputStream.write(bArr2, 0, hexEncoder.encode(bArr, i4, iMin, bArr2, 0));
            i4 += iMin;
            i5 -= iMin;
            this = hexEncoder;
        }
        return i3 * 2;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getEncodedLength(int i2) {
        return i2 * 2;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getMaxDecodedLength(int i2) {
        return i2 / 2;
    }

    public void initialiseDecodingTable() {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.decodingTable;
            if (i3 >= bArr.length) {
                break;
            }
            bArr[i3] = -1;
            i3++;
        }
        while (true) {
            byte[] bArr2 = this.encodingTable;
            int length = bArr2.length;
            byte[] bArr3 = this.decodingTable;
            if (i2 >= length) {
                bArr3[65] = bArr3[97];
                bArr3[66] = bArr3[98];
                bArr3[67] = bArr3[99];
                bArr3[68] = bArr3[100];
                bArr3[69] = bArr3[101];
                bArr3[70] = bArr3[102];
                return;
            }
            bArr3[bArr2[i2]] = (byte) i2;
            i2++;
        }
    }

    public int encode(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws IOException {
        int i5 = i3 + i2;
        int i6 = i4;
        while (i2 < i5) {
            int i7 = i2 + 1;
            byte b2 = bArr[i2];
            int i8 = i6 + 1;
            byte[] bArr3 = this.encodingTable;
            bArr2[i6] = bArr3[(b2 & 255) >>> 4];
            i6 += 2;
            bArr2[i8] = bArr3[b2 & 15];
            i2 = i7;
        }
        return i6 - i4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int i2, int i3, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[36];
        int i4 = i3 + i2;
        while (i4 > i2 && ignore((char) bArr[i4 - 1])) {
            i4--;
        }
        int i5 = 0;
        int i6 = 0;
        while (i2 < i4) {
            while (i2 < i4 && ignore((char) bArr[i2])) {
                i2++;
            }
            int i7 = i2 + 1;
            byte b2 = this.decodingTable[bArr[i2]];
            while (i7 < i4 && ignore((char) bArr[i7])) {
                i7++;
            }
            int i8 = i7 + 1;
            byte b3 = this.decodingTable[bArr[i7]];
            if ((b2 | b3) < 0) {
                az.o("invalid characters encountered in Hex data");
                return 0;
            }
            int i9 = i5 + 1;
            bArr2[i5] = (byte) ((b2 << 4) | b3);
            if (i9 == 36) {
                outputStream.write(bArr2);
                i5 = 0;
            } else {
                i5 = i9;
            }
            i6++;
            i2 = i8;
        }
        if (i5 > 0) {
            outputStream.write(bArr2, 0, i5);
        }
        return i6;
    }
}
