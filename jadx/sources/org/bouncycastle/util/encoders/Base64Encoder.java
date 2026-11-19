package org.bouncycastle.util.encoders;

import defpackage.az;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class Base64Encoder implements Encoder {
    protected final byte[] encodingTable = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    protected byte padding = 61;
    protected final byte[] decodingTable = new byte[128];

    public Base64Encoder() {
        initialiseDecodingTable();
    }

    private int decodeLastBlock(OutputStream outputStream, char c2, char c3, char c4, char c5) throws IOException {
        char c6 = this.padding;
        if (c4 == c6) {
            if (c5 != c6) {
                az.o("invalid characters encountered at end of base64 data");
                return 0;
            }
            byte[] bArr = this.decodingTable;
            byte b2 = bArr[c2];
            byte b3 = bArr[c3];
            if ((b2 | b3) < 0) {
                az.o("invalid characters encountered at end of base64 data");
                return 0;
            }
            outputStream.write((b3 >> 4) | (b2 << 2));
            return 1;
        }
        byte[] bArr2 = this.decodingTable;
        if (c5 == c6) {
            byte b4 = bArr2[c2];
            byte b5 = bArr2[c3];
            byte b6 = bArr2[c4];
            if ((b4 | b5 | b6) < 0) {
                az.o("invalid characters encountered at end of base64 data");
                return 0;
            }
            outputStream.write((b4 << 2) | (b5 >> 4));
            outputStream.write((b6 >> 2) | (b5 << 4));
            return 2;
        }
        byte b7 = bArr2[c2];
        byte b8 = bArr2[c3];
        byte b9 = bArr2[c4];
        byte b10 = bArr2[c5];
        if ((b7 | b8 | b9 | b10) < 0) {
            az.o("invalid characters encountered at end of base64 data");
            return 0;
        }
        outputStream.write((b7 << 2) | (b8 >> 4));
        outputStream.write((b8 << 4) | (b9 >> 2));
        outputStream.write(b10 | (b9 << 6));
        return 3;
    }

    private boolean ignore(char c2) {
        return c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == ' ';
    }

    private int nextI(String str, int i2, int i3) {
        while (i2 < i3 && ignore(str.charAt(i2))) {
            i2++;
        }
        return i2;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[54];
        int length = str.length();
        while (length > 0 && ignore(str.charAt(length - 1))) {
            length--;
        }
        if (length == 0) {
            return 0;
        }
        int i2 = length;
        int i3 = 0;
        while (i2 > 0 && i3 != 4) {
            if (!ignore(str.charAt(i2 - 1))) {
                i3++;
            }
            i2--;
        }
        int iNextI = nextI(str, 0, i2);
        int i4 = 0;
        int i5 = 0;
        while (iNextI < i2) {
            int i6 = iNextI + 1;
            byte b2 = this.decodingTable[str.charAt(iNextI)];
            int iNextI2 = nextI(str, i6, i2);
            int i7 = iNextI2 + 1;
            byte b3 = this.decodingTable[str.charAt(iNextI2)];
            int iNextI3 = nextI(str, i7, i2);
            int i8 = iNextI3 + 1;
            byte b4 = this.decodingTable[str.charAt(iNextI3)];
            int iNextI4 = nextI(str, i8, i2);
            int i9 = iNextI4 + 1;
            byte b5 = this.decodingTable[str.charAt(iNextI4)];
            if ((b2 | b3 | b4 | b5) < 0) {
                az.o("invalid characters encountered in base64 data");
                return 0;
            }
            bArr[i4] = (byte) ((b2 << 2) | (b3 >> 4));
            int i10 = i4 + 2;
            bArr[i4 + 1] = (byte) ((b3 << 4) | (b4 >> 2));
            i4 += 3;
            bArr[i10] = (byte) ((b4 << 6) | b5);
            i5 += 3;
            if (i4 == 54) {
                outputStream.write(bArr);
                i4 = 0;
            }
            iNextI = nextI(str, i9, i2);
        }
        if (i4 > 0) {
            outputStream.write(bArr, 0, i4);
        }
        int iNextI5 = nextI(str, iNextI, length);
        int iNextI6 = nextI(str, iNextI5 + 1, length);
        int iNextI7 = nextI(str, iNextI6 + 1, length);
        return i5 + decodeLastBlock(outputStream, str.charAt(iNextI5), str.charAt(iNextI6), str.charAt(iNextI7), str.charAt(nextI(str, iNextI7 + 1, length)));
    }

    public int encode(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws IOException {
        int i5 = (i2 + i3) - 2;
        int i6 = i2;
        int i7 = i4;
        while (i6 < i5) {
            byte b2 = bArr[i6];
            int i8 = i6 + 2;
            int i9 = bArr[i6 + 1] & 255;
            i6 += 3;
            byte b3 = bArr[i8];
            byte[] bArr3 = this.encodingTable;
            bArr2[i7] = bArr3[(b2 >>> 2) & 63];
            bArr2[i7 + 1] = bArr3[((b2 << 4) | (i9 >>> 4)) & 63];
            int i10 = i7 + 3;
            bArr2[i7 + 2] = bArr3[((i9 << 2) | ((b3 & 255) >>> 6)) & 63];
            i7 += 4;
            bArr2[i10] = bArr3[b3 & 63];
        }
        int i11 = i3 - (i6 - i2);
        if (i11 == 1) {
            int i12 = bArr[i6] & 255;
            byte[] bArr4 = this.encodingTable;
            bArr2[i7] = bArr4[(i12 >>> 2) & 63];
            bArr2[i7 + 1] = bArr4[(i12 << 4) & 63];
            int i13 = i7 + 3;
            byte b4 = this.padding;
            bArr2[i7 + 2] = b4;
            i7 += 4;
            bArr2[i13] = b4;
        } else if (i11 == 2) {
            int i14 = bArr[i6] & 255;
            int i15 = bArr[i6 + 1] & 255;
            byte[] bArr5 = this.encodingTable;
            bArr2[i7] = bArr5[(i14 >>> 2) & 63];
            bArr2[i7 + 1] = bArr5[((i14 << 4) | (i15 >>> 4)) & 63];
            int i16 = i7 + 3;
            bArr2[i7 + 2] = bArr5[(i15 << 2) & 63];
            i7 += 4;
            bArr2[i16] = this.padding;
        }
        return i7 - i4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getEncodedLength(int i2) {
        return ((i2 + 2) / 3) * 4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getMaxDecodedLength(int i2) {
        return (i2 / 4) * 3;
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
            if (i2 >= bArr2.length) {
                return;
            }
            this.decodingTable[bArr2[i2]] = (byte) i2;
            i2++;
        }
    }

    private int nextI(byte[] bArr, int i2, int i3) {
        while (i2 < i3 && ignore((char) bArr[i2])) {
            i2++;
        }
        return i2;
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
            int iMin = Math.min(54, i5);
            Base64Encoder base64Encoder = this;
            outputStream.write(bArr2, 0, base64Encoder.encode(bArr, i4, iMin, bArr2, 0));
            i4 += iMin;
            i5 -= iMin;
            this = base64Encoder;
        }
        return ((i3 + 2) / 3) * 4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int i2, int i3, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[54];
        int i4 = i2 + i3;
        while (i4 > i2 && ignore((char) bArr[i4 - 1])) {
            i4--;
        }
        if (i4 == 0) {
            return 0;
        }
        int i5 = i4;
        int i6 = 0;
        while (i5 > i2 && i6 != 4) {
            if (!ignore((char) bArr[i5 - 1])) {
                i6++;
            }
            i5--;
        }
        int iNextI = nextI(bArr, i2, i5);
        int i7 = 0;
        int i8 = 0;
        while (iNextI < i5) {
            int i9 = iNextI + 1;
            byte b2 = this.decodingTable[bArr[iNextI]];
            int iNextI2 = nextI(bArr, i9, i5);
            int i10 = iNextI2 + 1;
            byte b3 = this.decodingTable[bArr[iNextI2]];
            int iNextI3 = nextI(bArr, i10, i5);
            int i11 = iNextI3 + 1;
            byte b4 = this.decodingTable[bArr[iNextI3]];
            int iNextI4 = nextI(bArr, i11, i5);
            int i12 = iNextI4 + 1;
            byte b5 = this.decodingTable[bArr[iNextI4]];
            if ((b2 | b3 | b4 | b5) < 0) {
                az.o("invalid characters encountered in base64 data");
                return 0;
            }
            bArr2[i7] = (byte) ((b2 << 2) | (b3 >> 4));
            int i13 = i7 + 2;
            bArr2[i7 + 1] = (byte) ((b3 << 4) | (b4 >> 2));
            i7 += 3;
            bArr2[i13] = (byte) ((b4 << 6) | b5);
            if (i7 == 54) {
                outputStream.write(bArr2);
                i7 = 0;
            }
            i8 += 3;
            iNextI = nextI(bArr, i12, i5);
        }
        if (i7 > 0) {
            outputStream.write(bArr2, 0, i7);
        }
        int iNextI5 = nextI(bArr, iNextI, i4);
        int iNextI6 = nextI(bArr, iNextI5 + 1, i4);
        int iNextI7 = nextI(bArr, iNextI6 + 1, i4);
        return i8 + decodeLastBlock(outputStream, (char) bArr[iNextI5], (char) bArr[iNextI6], (char) bArr[iNextI7], (char) bArr[nextI(bArr, iNextI7 + 1, i4)]);
    }
}
