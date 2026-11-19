package okhttp3.internal.url;

import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilCommonKt;
import okio.Buffer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class _UrlKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f77348a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F'};

    public static String a(String str, int i2, boolean z, String str2, int i3, int i4) {
        int i5 = (i4 & 1) != 0 ? 0 : i2;
        int length = (i4 & 2) != 0 ? str.length() : i3;
        boolean z2 = (i4 & 8) != 0 ? false : z;
        boolean z3 = (i4 & 16) == 0;
        boolean z4 = (i4 & 32) == 0;
        boolean z5 = (i4 & 64) == 0;
        str.getClass();
        return b(str, i5, length, str2, z2, z3, z4, z5, null, 128);
    }

    public static String b(String str, int i2, int i3, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset, int i4) {
        int i5 = (i4 & 1) != 0 ? 0 : i2;
        int length = (i4 & 2) != 0 ? str.length() : i3;
        boolean z5 = (i4 & 8) != 0 ? false : z;
        boolean z6 = (i4 & 16) != 0 ? false : z2;
        boolean z7 = (i4 & 64) == 0 ? z4 : false;
        Charset charset2 = (i4 & 128) != 0 ? null : charset;
        str.getClass();
        int iCharCount = i5;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            int i6 = 32;
            if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z7) || StringsKt.l(str2, (char) iCodePointAt) || ((iCodePointAt == 37 && (!z5 || (z6 && !c(iCharCount, length, str)))) || (iCodePointAt == 43 && z3)))) {
                Buffer buffer = new Buffer();
                buffer.I0(i5, iCharCount, str);
                Buffer buffer2 = null;
                while (iCharCount < length) {
                    int iCodePointAt2 = str.codePointAt(iCharCount);
                    if (!z5 || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                        if (iCodePointAt2 == i6 && str2 == " !\"#$&'()+,/:;<=>?@[\\]^`{|}~") {
                            buffer.M0("+");
                        } else if (iCodePointAt2 == 43 && z3) {
                            buffer.M0(z5 ? "+" : "%2B");
                        } else {
                            if (iCodePointAt2 >= i6 && iCodePointAt2 != 127) {
                                if ((iCodePointAt2 < 128 || z7) && !StringsKt.l(str2, (char) iCodePointAt2) && (iCodePointAt2 != 37 || (z5 && (!z6 || c(iCharCount, length, str))))) {
                                    buffer.P0(iCodePointAt2);
                                }
                            }
                            if (buffer2 == null) {
                                buffer2 = new Buffer();
                            }
                            if (charset2 == null || charset2.equals(Charsets.UTF_8)) {
                                buffer2.P0(iCodePointAt2);
                            } else {
                                buffer2.E0(str, iCharCount, Character.charCount(iCodePointAt2) + iCharCount, charset2);
                            }
                            while (!buffer2.Z0()) {
                                byte b2 = buffer2.readByte();
                                buffer.m0(37);
                                char[] cArr = f77348a;
                                buffer.m0(cArr[((b2 & 255) >> 4) & 15]);
                                buffer.m0(cArr[b2 & 15]);
                            }
                        }
                    }
                    iCharCount += Character.charCount(iCodePointAt2);
                    i6 = 32;
                }
                return buffer.H();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i5, length);
    }

    public static final boolean c(int i2, int i3, String str) {
        str.getClass();
        int i4 = i2 + 2;
        return i4 < i3 && str.charAt(i2) == '%' && _UtilCommonKt.n(str.charAt(i2 + 1)) != -1 && _UtilCommonKt.n(str.charAt(i4)) != -1;
    }

    public static String d(int i2, int i3, int i4, String str) {
        int i5;
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        if ((i4 & 2) != 0) {
            i3 = str.length();
        }
        boolean z = (i4 & 4) == 0;
        str.getClass();
        int iCharCount = i2;
        while (iCharCount < i3) {
            char cCharAt = str.charAt(iCharCount);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                Buffer buffer = new Buffer();
                buffer.I0(i2, iCharCount, str);
                while (iCharCount < i3) {
                    int iCodePointAt = str.codePointAt(iCharCount);
                    if (iCodePointAt == 37 && (i5 = iCharCount + 2) < i3) {
                        int iN = _UtilCommonKt.n(str.charAt(iCharCount + 1));
                        int iN2 = _UtilCommonKt.n(str.charAt(i5));
                        if (iN == -1 || iN2 == -1) {
                            buffer.P0(iCodePointAt);
                            iCharCount += Character.charCount(iCodePointAt);
                        } else {
                            buffer.m0((iN << 4) + iN2);
                            iCharCount = Character.charCount(iCodePointAt) + i5;
                        }
                    } else if (iCodePointAt == 43 && z) {
                        buffer.m0(32);
                        iCharCount++;
                    } else {
                        buffer.P0(iCodePointAt);
                        iCharCount += Character.charCount(iCodePointAt);
                    }
                }
                return buffer.H();
            }
            iCharCount++;
        }
        return str.substring(i2, i3);
    }
}
