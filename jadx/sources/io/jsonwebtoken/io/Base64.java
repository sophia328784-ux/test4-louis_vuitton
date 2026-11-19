package io.jsonwebtoken.io;

import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import com.sightcall.advancedannotations.domain.parser.PositionParser;
import com.sightcall.advancedannotations.domain.parser.ResourceParser;
import com.sightcall.advancedannotations.domain.parser.ScaleParser;
import com.sightcall.advancedannotations.domain.parser.TextParser;
import java.util.Arrays;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes4.dex */
final class Base64 {
    private static final char[] BASE64URL_ALPHABET;
    private static final int[] BASE64URL_IALPHABET;
    private static final char[] BASE64_ALPHABET;
    private static final int[] BASE64_IALPHABET;
    static final Base64 DEFAULT;
    private static final int IALPHABET_MAX_INDEX;
    static final Base64 URL_SAFE;
    private final char[] ALPHABET;
    private final int[] IALPHABET;
    private final boolean urlsafe;

    static {
        char[] cArr = {'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', ResourceParser.ResourceInstruction, 'O', PositionParser.PositionInstruction, 'Q', 'R', ScaleParser.ScaleInstruction, TextParser.TextInstruction, Matrix.MATRIX_TYPE_RANDOM_UT, 'V', 'W', 'X', 'Y', Matrix.MATRIX_TYPE_ZERO, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        BASE64_ALPHABET = cArr;
        BASE64URL_ALPHABET = new char[]{'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', ResourceParser.ResourceInstruction, 'O', PositionParser.PositionInstruction, 'Q', 'R', ScaleParser.ScaleInstruction, TextParser.TextInstruction, Matrix.MATRIX_TYPE_RANDOM_UT, 'V', 'W', 'X', 'Y', Matrix.MATRIX_TYPE_ZERO, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};
        int[] iArr = new int[256];
        BASE64_IALPHABET = iArr;
        int[] iArr2 = new int[256];
        BASE64URL_IALPHABET = iArr2;
        IALPHABET_MAX_INDEX = iArr.length - 1;
        Arrays.fill(iArr, -1);
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        int length = cArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            BASE64_IALPHABET[BASE64_ALPHABET[i2]] = i2;
            BASE64URL_IALPHABET[BASE64URL_ALPHABET[i2]] = i2;
        }
        BASE64_IALPHABET[61] = 0;
        BASE64URL_IALPHABET[61] = 0;
        DEFAULT = new Base64(false);
        URL_SAFE = new Base64(true);
    }

    private Base64(boolean z) {
        this.urlsafe = z;
        this.ALPHABET = z ? BASE64URL_ALPHABET : BASE64_ALPHABET;
        this.IALPHABET = z ? BASE64URL_IALPHABET : BASE64_IALPHABET;
    }

    private int ctoi(char c2) {
        int i2 = c2 > IALPHABET_MAX_INDEX ? -1 : this.IALPHABET[c2];
        if (i2 >= 0) {
            return i2;
        }
        throw new DecodingException("Illegal " + getName() + " character: '" + c2 + "'");
    }

    private char[] encodeToChar(byte[] bArr, boolean z) {
        int i2;
        int length = bArr != null ? bArr.length : 0;
        if (length == 0) {
            return new char[0];
        }
        int i3 = (length / 3) * 3;
        int i4 = length - i3;
        boolean z2 = true;
        int i5 = length - 1;
        int i6 = ((i5 / 3) + 1) << 2;
        int i7 = i6 + (z ? ((i6 - 1) / 76) << 1 : 0);
        if (i4 == 2) {
            i2 = 1;
        } else {
            i2 = i4 == 1 ? 2 : 0;
        }
        char[] cArr = new char[this.urlsafe ? i7 - i2 : i7];
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < i3) {
            int i11 = i8 + 2;
            int i12 = ((bArr[i8 + 1] & 255) << 8) | ((bArr[i8] & 255) << 16);
            i8 += 3;
            int i13 = i12 | (bArr[i11] & 255);
            char[] cArr2 = this.ALPHABET;
            cArr[i9] = cArr2[(i13 >>> 18) & 63];
            cArr[i9 + 1] = cArr2[(i13 >>> 12) & 63];
            cArr[i9 + 2] = cArr2[(i13 >>> 6) & 63];
            boolean z3 = z2;
            int i14 = i9 + 4;
            cArr[i9 + 3] = cArr2[i13 & 63];
            if (z && (i10 = i10 + 1) == 19 && i14 < i7 - 2) {
                int i15 = i9 + 5;
                cArr[i14] = '\r';
                i9 += 6;
                cArr[i15] = '\n';
                i10 = 0;
            } else {
                i9 = i14;
            }
            z2 = z3;
        }
        if (i4 > 0) {
            int i16 = ((bArr[i3] & 255) << 10) | (i4 == 2 ? (bArr[i5] & 255) << 2 : 0);
            char[] cArr3 = this.ALPHABET;
            cArr[i7 - 4] = cArr3[i16 >> 12];
            cArr[i7 - 3] = cArr3[(i16 >>> 6) & 63];
            if (i4 == 2) {
                cArr[i7 - 2] = cArr3[i16 & 63];
            } else if (!this.urlsafe) {
                cArr[i7 - 2] = '=';
            }
            if (!this.urlsafe) {
                cArr[i7 - 1] = '=';
            }
        }
        return cArr;
    }

    private String getName() {
        return this.urlsafe ? "base64url" : "base64";
    }

    public final byte[] decodeFast(char[] cArr) throws DecodingException {
        int i2;
        int i3;
        int length = cArr != null ? cArr.length : 0;
        if (length == 0) {
            return new byte[0];
        }
        int i4 = length - 1;
        int i5 = 0;
        while (i5 < i4 && this.IALPHABET[cArr[i5]] < 0) {
            i5++;
        }
        while (i4 > 0 && this.IALPHABET[cArr[i4]] < 0) {
            i4--;
        }
        boolean z = true;
        if (cArr[i4] == '=') {
            i2 = cArr[i4 + (-1)] == '=' ? 2 : 1;
        } else {
            i2 = 0;
        }
        int i6 = (i4 - i5) + 1;
        if (length > 76) {
            i3 = (cArr[76] == '\r' ? i6 / 78 : 0) << 1;
        } else {
            i3 = 0;
        }
        int i7 = (((i6 - i3) * 6) >> 3) - i2;
        byte[] bArr = new byte[i7];
        int i8 = (i7 / 3) * 3;
        int i9 = 0;
        int i10 = 0;
        while (i9 < i8) {
            int i11 = i5 + 4;
            int iCtoi = (ctoi(cArr[i5 + 1]) << 12) | (ctoi(cArr[i5]) << 18) | (ctoi(cArr[i5 + 2]) << 6) | ctoi(cArr[i5 + 3]);
            bArr[i9] = (byte) (iCtoi >> 16);
            int i12 = i9 + 2;
            boolean z2 = z;
            bArr[i9 + 1] = (byte) (iCtoi >> 8);
            i9 += 3;
            bArr[i12] = (byte) iCtoi;
            if (i3 <= 0 || (i10 = i10 + 1) != 19) {
                i5 = i11;
            } else {
                i5 += 6;
                i10 = 0;
            }
            z = z2;
        }
        if (i9 < i7) {
            int iCtoi2 = 0;
            int i13 = 0;
            while (i5 <= i4 - i2) {
                iCtoi2 |= ctoi(cArr[i5]) << (18 - (i13 * 6));
                i13++;
                i5++;
            }
            int i14 = 16;
            while (i9 < i7) {
                bArr[i9] = (byte) (iCtoi2 >> i14);
                i14 -= 8;
                i9++;
            }
        }
        return bArr;
    }

    public final String encodeToString(byte[] bArr, boolean z) {
        return new String(encodeToChar(bArr, z));
    }
}
