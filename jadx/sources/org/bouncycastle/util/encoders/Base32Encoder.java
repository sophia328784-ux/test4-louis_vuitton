package org.bouncycastle.util.encoders;

import defpackage.az;
import defpackage.md;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class Base32Encoder implements Encoder {
    private static final byte[] DEAULT_ENCODING_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 54, 55};
    private static final byte DEFAULT_PADDING = 61;
    private final byte[] decodingTable;
    private final byte[] encodingTable;
    private final byte padding;

    public Base32Encoder(byte[] bArr, byte b2) {
        this.decodingTable = new byte[128];
        if (bArr.length != 32) {
            md.n("encoding table needs to be length 32");
            throw null;
        }
        this.encodingTable = Arrays.clone(bArr);
        this.padding = b2;
        initialiseDecodingTable();
    }

    private int decodeLastBlock(OutputStream outputStream, char c2, char c3, char c4, char c5, char c6, char c7, char c8, char c9) throws IOException {
        char c10 = this.padding;
        if (c9 != c10) {
            byte[] bArr = this.decodingTable;
            byte b2 = bArr[c2];
            byte b3 = bArr[c3];
            byte b4 = bArr[c4];
            byte b5 = bArr[c5];
            byte b6 = bArr[c6];
            byte b7 = bArr[c7];
            byte b8 = bArr[c8];
            byte b9 = bArr[c9];
            if ((b2 | b3 | b4 | b5 | b6 | b7 | b8 | b9) < 0) {
                az.o("invalid characters encountered at end of base32 data");
                return 0;
            }
            outputStream.write((b2 << 3) | (b3 >> 2));
            outputStream.write((b4 << 1) | (b3 << 6) | (b5 >> 4));
            outputStream.write((b5 << 4) | (b6 >> 1));
            outputStream.write((b6 << 7) | (b7 << 2) | (b8 >> 3));
            outputStream.write(b9 | (b8 << 5));
            return 5;
        }
        if (c8 != c10) {
            byte[] bArr2 = this.decodingTable;
            byte b10 = bArr2[c2];
            byte b11 = bArr2[c3];
            byte b12 = bArr2[c4];
            byte b13 = bArr2[c5];
            byte b14 = bArr2[c6];
            byte b15 = bArr2[c7];
            byte b16 = bArr2[c8];
            if ((b10 | b11 | b12 | b13 | b14 | b15 | b16) < 0) {
                az.o("invalid characters encountered at end of base32 data");
                return 0;
            }
            outputStream.write((b10 << 3) | (b11 >> 2));
            outputStream.write((b12 << 1) | (b11 << 6) | (b13 >> 4));
            outputStream.write((b13 << 4) | (b14 >> 1));
            outputStream.write((b16 >> 3) | (b14 << 7) | (b15 << 2));
            return 4;
        }
        if (c7 != c10) {
            az.o("invalid characters encountered at end of base32 data");
            return 0;
        }
        if (c6 != c10) {
            byte[] bArr3 = this.decodingTable;
            byte b17 = bArr3[c2];
            byte b18 = bArr3[c3];
            byte b19 = bArr3[c4];
            byte b20 = bArr3[c5];
            byte b21 = bArr3[c6];
            if ((b17 | b18 | b19 | b20 | b21) < 0) {
                az.o("invalid characters encountered at end of base32 data");
                return 0;
            }
            outputStream.write((b17 << 3) | (b18 >> 2));
            outputStream.write((b19 << 1) | (b18 << 6) | (b20 >> 4));
            outputStream.write((b21 >> 1) | (b20 << 4));
            return 3;
        }
        if (c5 == c10) {
            if (c4 != c10) {
                az.o("invalid characters encountered at end of base32 data");
                return 0;
            }
            byte[] bArr4 = this.decodingTable;
            byte b22 = bArr4[c2];
            byte b23 = bArr4[c3];
            if ((b22 | b23) < 0) {
                az.o("invalid characters encountered at end of base32 data");
                return 0;
            }
            outputStream.write((b23 >> 2) | (b22 << 3));
            return 1;
        }
        byte[] bArr5 = this.decodingTable;
        byte b24 = bArr5[c2];
        byte b25 = bArr5[c3];
        byte b26 = bArr5[c4];
        byte b27 = bArr5[c5];
        if ((b24 | b25 | b26 | b27) < 0) {
            az.o("invalid characters encountered at end of base32 data");
            return 0;
        }
        outputStream.write((b24 << 3) | (b25 >> 2));
        int i2 = b27 >> 4;
        outputStream.write(i2 | (b26 << 1) | (b25 << 6));
        return 2;
    }

    private void encodeBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        byte b2 = bArr[i2];
        int i4 = bArr[i2 + 1] & 255;
        int i5 = bArr[i2 + 2] & 255;
        int i6 = bArr[i2 + 3] & 255;
        byte b3 = bArr[i2 + 4];
        byte[] bArr3 = this.encodingTable;
        bArr2[i3] = bArr3[(b2 >>> 3) & 31];
        bArr2[i3 + 1] = bArr3[((b2 << 2) | (i4 >>> 6)) & 31];
        bArr2[i3 + 2] = bArr3[(i4 >>> 1) & 31];
        bArr2[i3 + 3] = bArr3[((i4 << 4) | (i5 >>> 4)) & 31];
        bArr2[i3 + 4] = bArr3[((i5 << 1) | (i6 >>> 7)) & 31];
        bArr2[i3 + 5] = bArr3[(i6 >>> 2) & 31];
        bArr2[i3 + 6] = bArr3[(((b3 & 255) >>> 5) | (i6 << 3)) & 31];
        bArr2[i3 + 7] = bArr3[b3 & 31];
    }

    private boolean ignore(char c2) {
        return c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == ' ';
    }

    private int nextI(byte[] bArr, int i2, int i3) {
        while (i2 < i3 && ignore((char) bArr[i2])) {
            i2++;
        }
        return i2;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int i2, int i3, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[55];
        int i4 = i2 + i3;
        while (i4 > i2 && ignore((char) bArr[i4 - 1])) {
            i4--;
        }
        int i5 = 0;
        if (i4 == 0) {
            return 0;
        }
        int i6 = i4;
        int i7 = 0;
        while (i6 > i2 && i7 != 8) {
            if (!ignore((char) bArr[i6 - 1])) {
                i7++;
            }
            i6--;
        }
        int iNextI = nextI(bArr, i2, i6);
        int i8 = 0;
        int i9 = 0;
        while (iNextI < i6) {
            int i10 = iNextI + 1;
            byte b2 = this.decodingTable[bArr[iNextI]];
            int iNextI2 = nextI(bArr, i10, i6);
            int i11 = iNextI2 + 1;
            byte b3 = this.decodingTable[bArr[iNextI2]];
            int iNextI3 = nextI(bArr, i11, i6);
            int i12 = iNextI3 + 1;
            byte b4 = this.decodingTable[bArr[iNextI3]];
            int iNextI4 = nextI(bArr, i12, i6);
            int i13 = iNextI4 + 1;
            byte b5 = this.decodingTable[bArr[iNextI4]];
            int iNextI5 = nextI(bArr, i13, i6);
            int i14 = i5;
            int i15 = iNextI5 + 1;
            byte b6 = this.decodingTable[bArr[iNextI5]];
            int iNextI6 = nextI(bArr, i15, i6);
            int i16 = iNextI6 + 1;
            byte b7 = this.decodingTable[bArr[iNextI6]];
            int iNextI7 = nextI(bArr, i16, i6);
            int i17 = iNextI7 + 1;
            byte b8 = this.decodingTable[bArr[iNextI7]];
            int iNextI8 = nextI(bArr, i17, i6);
            int i18 = iNextI8 + 1;
            byte b9 = this.decodingTable[bArr[iNextI8]];
            if ((b2 | b3 | b4 | b5 | b6 | b7 | b8 | b9) < 0) {
                az.o("invalid characters encountered in base32 data");
                return i14;
            }
            bArr2[i8] = (byte) ((b2 << 3) | (b3 >> 2));
            bArr2[i8 + 1] = (byte) ((b3 << 6) | (b4 << 1) | (b5 >> 4));
            bArr2[i8 + 2] = (byte) ((b5 << 4) | (b6 >> 1));
            int i19 = i8 + 4;
            bArr2[i8 + 3] = (byte) ((b7 << 2) | (b6 << 7) | (b8 >> 3));
            i8 += 5;
            bArr2[i19] = (byte) ((b8 << 5) | b9);
            if (i8 == 55) {
                outputStream.write(bArr2);
                i8 = i14;
            }
            i9 += 5;
            iNextI = nextI(bArr, i18, i6);
            i5 = i14;
        }
        int i20 = i5;
        if (i8 > 0) {
            outputStream.write(bArr2, i20, i8);
        }
        int iNextI9 = nextI(bArr, iNextI, i4);
        int iNextI10 = nextI(bArr, iNextI9 + 1, i4);
        int iNextI11 = nextI(bArr, iNextI10 + 1, i4);
        int iNextI12 = nextI(bArr, iNextI11 + 1, i4);
        int iNextI13 = nextI(bArr, iNextI12 + 1, i4);
        int iNextI14 = nextI(bArr, iNextI13 + 1, i4);
        int iNextI15 = nextI(bArr, iNextI14 + 1, i4);
        return i9 + decodeLastBlock(outputStream, (char) bArr[iNextI9], (char) bArr[iNextI10], (char) bArr[iNextI11], (char) bArr[iNextI12], (char) bArr[iNextI13], (char) bArr[iNextI14], (char) bArr[iNextI15], (char) bArr[nextI(bArr, iNextI15 + 1, i4)]);
    }

    public int encode(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws IOException {
        int i5 = (i2 + i3) - 4;
        int i6 = i2;
        int i7 = i4;
        while (i6 < i5) {
            encodeBlock(bArr, i6, bArr2, i7);
            i6 += 5;
            i7 += 8;
        }
        int i8 = i3 - (i6 - i2);
        if (i8 > 0) {
            byte[] bArr3 = new byte[5];
            System.arraycopy(bArr, i6, bArr3, 0, i8);
            encodeBlock(bArr3, 0, bArr2, i7);
            if (i8 == 1) {
                byte b2 = this.padding;
                bArr2[i7 + 2] = b2;
                bArr2[i7 + 3] = b2;
                bArr2[i7 + 4] = b2;
                bArr2[i7 + 5] = b2;
                bArr2[i7 + 6] = b2;
                bArr2[i7 + 7] = b2;
            } else if (i8 == 2) {
                byte b3 = this.padding;
                bArr2[i7 + 4] = b3;
                bArr2[i7 + 5] = b3;
                bArr2[i7 + 6] = b3;
                bArr2[i7 + 7] = b3;
            } else if (i8 == 3) {
                byte b4 = this.padding;
                bArr2[i7 + 5] = b4;
                bArr2[i7 + 6] = b4;
                bArr2[i7 + 7] = b4;
            } else if (i8 == 4) {
                bArr2[i7 + 7] = this.padding;
            }
            i7 += 8;
        }
        return i7 - i4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getEncodedLength(int i2) {
        return ((i2 + 4) / 5) * 8;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getMaxDecodedLength(int i2) {
        return (i2 / 8) * 5;
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

    public Base32Encoder() {
        this.decodingTable = new byte[128];
        this.encodingTable = DEAULT_ENCODING_TABLE;
        this.padding = DEFAULT_PADDING;
        initialiseDecodingTable();
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
            int iMin = Math.min(45, i5);
            Base32Encoder base32Encoder = this;
            outputStream.write(bArr2, 0, base32Encoder.encode(bArr, i4, iMin, bArr2, 0));
            i4 += iMin;
            i5 -= iMin;
            this = base32Encoder;
        }
        return ((i3 + 2) / 3) * 4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        byte[] byteArray = Strings.toByteArray(str);
        return decode(byteArray, 0, byteArray.length, outputStream);
    }
}
