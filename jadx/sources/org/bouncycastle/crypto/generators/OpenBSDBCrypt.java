package org.bouncycastle.crypto.generators;

import com.linkplay.medialib.ContentTree;
import defpackage.a;
import defpackage.b21;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import java.io.ByteArrayOutputStream;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class OpenBSDBCrypt {
    private static final Set<String> allowedVersions;
    private static final String defaultVersion = "2y";
    private static final byte[] encodingTable = {46, 47, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57};
    private static final byte[] decodingTable = new byte[128];

    static {
        HashSet hashSet = new HashSet();
        allowedVersions = hashSet;
        hashSet.add(ContentTree.AUDIO_ID);
        hashSet.add("2x");
        hashSet.add("2a");
        hashSet.add(defaultVersion);
        hashSet.add("2b");
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = decodingTable;
            if (i3 >= bArr.length) {
                break;
            }
            bArr[i3] = -1;
            i3++;
        }
        while (true) {
            byte[] bArr2 = encodingTable;
            if (i2 >= bArr2.length) {
                return;
            }
            decodingTable[bArr2[i2]] = (byte) i2;
            i2++;
        }
    }

    private OpenBSDBCrypt() {
    }

    public static boolean checkPassword(String str, byte[] bArr) {
        if (bArr != null) {
            return doCheckPassword(str, Arrays.clone(bArr));
        }
        md.n("Missing password.");
        return false;
    }

    private static String createBcryptString(String str, byte[] bArr, byte[] bArr2, int i2) {
        if (!allowedVersions.contains(str)) {
            md.n(fc.h("Version ", str, " is not accepted by this implementation."));
            return null;
        }
        StringBuilder sb = new StringBuilder(60);
        sb.append('$');
        sb.append(str);
        sb.append('$');
        sb.append(i2 < 10 ? pq0.k(i2, ContentTree.ROOT_ID) : Integer.toString(i2));
        sb.append('$');
        encodeData(sb, bArr2);
        encodeData(sb, BCrypt.generate(bArr, bArr2, i2));
        return sb.toString();
    }

    private static byte[] decodeSaltString(String str) {
        char[] charArray = str.toCharArray();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16);
        if (charArray.length != 22) {
            b21.q(a.i(charArray.length, " , 22 required.", new StringBuilder("Invalid base64 salt length: ")));
            return null;
        }
        for (char c2 : charArray) {
            if (c2 > 'z' || c2 < '.' || (c2 > '9' && c2 < 'A')) {
                md.n(pq0.k(c2, "Salt string contains invalid character: "));
                return null;
            }
        }
        char[] cArr = new char[24];
        System.arraycopy(charArray, 0, cArr, 0, charArray.length);
        for (int i2 = 0; i2 < 24; i2 += 4) {
            byte[] bArr = decodingTable;
            byte b2 = bArr[cArr[i2]];
            byte b3 = bArr[cArr[i2 + 1]];
            byte b4 = bArr[cArr[i2 + 2]];
            byte b5 = bArr[cArr[i2 + 3]];
            byteArrayOutputStream.write((b2 << 2) | (b3 >> 4));
            byteArrayOutputStream.write((b3 << 4) | (b4 >> 2));
            byteArrayOutputStream.write(b5 | (b4 << 6));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byte[] bArr2 = new byte[16];
        System.arraycopy(byteArray, 0, bArr2, 0, 16);
        return bArr2;
    }

    private static boolean doCheckPassword(String str, byte[] bArr) {
        String strSubstring;
        if (str == null) {
            md.n("Missing bcryptString.");
            return false;
        }
        if (str.charAt(1) != '2') {
            md.n("not a Bcrypt string");
            return false;
        }
        int length = str.length();
        if (length != 60 && (length != 59 || str.charAt(2) != '$')) {
            b21.q(n00.m(length, "Bcrypt String length: ", ", 60 required."));
            return false;
        }
        int i2 = 3;
        if (str.charAt(2) == '$') {
            if (str.charAt(0) != '$' || str.charAt(5) != '$') {
                md.n("Invalid Bcrypt String format.");
                return false;
            }
        } else if (str.charAt(0) != '$' || str.charAt(3) != '$' || str.charAt(6) != '$') {
            md.n("Invalid Bcrypt String format.");
            return false;
        }
        if (str.charAt(2) == '$') {
            strSubstring = str.substring(1, 2);
        } else {
            strSubstring = str.substring(1, 3);
            i2 = 4;
        }
        if (!allowedVersions.contains(strSubstring)) {
            md.n(fc.h("Bcrypt version '", strSubstring, "' is not supported by this implementation"));
            return false;
        }
        String strSubstring2 = str.substring(i2, i2 + 2);
        try {
            int i3 = Integer.parseInt(strSubstring2);
            if (i3 >= 4 && i3 <= 31) {
                return Strings.constantTimeAreEqual(str, doGenerate(strSubstring, bArr, decodeSaltString(str.substring(str.lastIndexOf(36) + 1, length - 31)), i3));
            }
            md.n(n00.m(i3, "Invalid cost factor: ", ", 4 < cost < 31 expected."));
            return false;
        } catch (NumberFormatException unused) {
            md.n("Invalid cost factor: ".concat(strSubstring2));
            return false;
        }
    }

    private static String doGenerate(String str, byte[] bArr, byte[] bArr2, int i2) {
        if (!allowedVersions.contains(str)) {
            md.n(fc.h("Version ", str, " is not accepted by this implementation."));
            return null;
        }
        if (bArr2 == null) {
            md.n("Salt required.");
            return null;
        }
        if (bArr2.length != 16) {
            throw new DataLengthException("16 byte salt required: " + bArr2.length);
        }
        if (i2 < 4 || i2 > 31) {
            md.n("Invalid cost factor.");
            return null;
        }
        int length = bArr.length < 72 ? bArr.length + 1 : 72;
        byte[] bArr3 = new byte[length];
        if (length > bArr.length) {
            length = bArr.length;
        }
        System.arraycopy(bArr, 0, bArr3, 0, length);
        Arrays.fill(bArr, (byte) 0);
        String strCreateBcryptString = createBcryptString(str, bArr3, bArr2, i2);
        Arrays.fill(bArr3, (byte) 0);
        return strCreateBcryptString;
    }

    private static void encodeData(StringBuilder sb, byte[] bArr) {
        boolean z;
        if (bArr.length != 24 && bArr.length != 16) {
            b21.q(a.i(bArr.length, ", 24 for key or 16 for salt expected", new StringBuilder("Invalid length: ")));
            return;
        }
        if (bArr.length == 16) {
            byte[] bArr2 = new byte[18];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr = bArr2;
            z = true;
        } else {
            bArr[bArr.length - 1] = 0;
            z = false;
        }
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int i3 = bArr[i2] & 255;
            int i4 = bArr[i2 + 1] & 255;
            byte b2 = bArr[i2 + 2];
            byte[] bArr3 = encodingTable;
            sb.append((char) bArr3[(i3 >>> 2) & 63]);
            sb.append((char) bArr3[((i3 << 4) | (i4 >>> 4)) & 63]);
            sb.append((char) bArr3[((i4 << 2) | ((b2 & 255) >>> 6)) & 63]);
            sb.append((char) bArr3[b2 & 63]);
        }
        int length2 = sb.length();
        if (z) {
            sb.setLength(length2 - 2);
        } else {
            sb.setLength(length2 - 1);
        }
    }

    public static String generate(String str, byte[] bArr, byte[] bArr2, int i2) {
        if (bArr != null) {
            return doGenerate(str, Arrays.clone(bArr), bArr2, i2);
        }
        md.n("Password required.");
        return null;
    }

    public static boolean checkPassword(String str, char[] cArr) {
        if (cArr != null) {
            return doCheckPassword(str, Strings.toUTF8ByteArray(cArr));
        }
        md.n("Missing password.");
        return false;
    }

    public static String generate(String str, char[] cArr, byte[] bArr, int i2) {
        if (cArr != null) {
            return doGenerate(str, Strings.toUTF8ByteArray(cArr), bArr, i2);
        }
        md.n("Password required.");
        return null;
    }

    public static String generate(byte[] bArr, byte[] bArr2, int i2) {
        return generate(defaultVersion, bArr, bArr2, i2);
    }

    public static String generate(char[] cArr, byte[] bArr, int i2) {
        return generate(defaultVersion, cArr, bArr, i2);
    }
}
