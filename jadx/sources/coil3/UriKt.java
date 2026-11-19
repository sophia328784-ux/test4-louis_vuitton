package coil3;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class UriKt {
    public static Uri a(String str) {
        String str2 = Path.d;
        StringBuilder sb = new StringBuilder();
        sb.append("file");
        sb.append(':');
        if (str != null) {
            sb.append(str);
        }
        return new Uri(sb.toString(), str2, "file", null, str, null, null);
    }

    public static final String b(Uri uri) {
        List listC = c(uri);
        String str = uri.f21267b;
        if (listC.isEmpty()) {
            return null;
        }
        String str2 = uri.f21269e;
        str2.getClass();
        if (!StringsKt.P(str2, str, false)) {
            str = "";
        }
        return CollectionsKt.K(listC, uri.f21267b, str, null, null, 60);
    }

    public static final List c(Uri uri) {
        String str = uri.f21269e;
        if (str == null) {
            return EmptyList.f71768b;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = -1;
        while (i2 < str.length()) {
            int i3 = i2 + 1;
            int iU = StringsKt.u(str, '/', i3, 4);
            if (iU == -1) {
                iU = str.length();
            }
            String strSubstring = str.substring(i3, iU);
            if (strSubstring.length() > 0) {
                arrayList.add(strSubstring);
            }
            i2 = iU;
        }
        return arrayList;
    }

    public static final String d(String str, byte[] bArr) {
        int length = str.length();
        int iMax = Math.max(0, length - 2);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= iMax) {
                if (i2 == i3) {
                    return str;
                }
                if (i2 >= length) {
                    return StringsKt.m(0, i3, bArr, 5);
                }
            } else if (str.charAt(i2) == '%') {
                int i4 = i2 + 3;
                try {
                    bArr[i3] = (byte) Integer.parseInt(str.substring(i2 + 1, i4), CharsKt.checkRadix(16));
                    i3++;
                    i2 = i4;
                } catch (NumberFormatException unused) {
                    bArr[i3] = (byte) str.charAt(i2);
                    i3++;
                    i2++;
                }
            }
            bArr[i3] = (byte) str.charAt(i2);
            i3++;
            i2++;
        }
    }

    public static Uri e(String str) {
        String strSubstring;
        String strSubstring2;
        String str2 = Path.d;
        String strJ = !Intrinsics.c(str2, "/") ? StringsKt.J(str, str2, "/") : str;
        int i2 = 0;
        boolean z = true;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        while (i2 < strJ.length()) {
            char cCharAt = strJ.charAt(i2);
            if (cCharAt != '#') {
                if (cCharAt != '/') {
                    if (cCharAt != ':') {
                        if (cCharAt == '?' && i5 == -1 && i3 == -1) {
                            i5 = i2 + 1;
                        }
                    } else if (z && i5 == -1 && i3 == -1) {
                        int i8 = i2 + 2;
                        if (i8 < str.length() && str.charAt(i2 + 1) == '/' && str.charAt(i8) == '/') {
                            i6 = i2 + 3;
                            z = false;
                            i7 = i2;
                            i2 = i8;
                        } else if (strJ.equals(str)) {
                            i4 = i2 + 1;
                            i7 = i2;
                            i2 = i4;
                            i6 = i2;
                        }
                    }
                } else if (i4 == -1 && i5 == -1 && i3 == -1) {
                    i4 = i6 == -1 ? 0 : i2;
                    z = false;
                }
            } else if (i3 == -1) {
                i3 = i2 + 1;
            }
            i2++;
        }
        int iMin = Math.min(i3 == -1 ? Integer.MAX_VALUE : i3 - 1, strJ.length());
        int iMin2 = Math.min(i5 == -1 ? Integer.MAX_VALUE : i5 - 1, iMin);
        if (i6 != -1) {
            strSubstring2 = strJ.substring(0, i7);
            strSubstring = strJ.substring(i6, Math.min(i4 != -1 ? i4 : Integer.MAX_VALUE, iMin2));
        } else {
            strSubstring = null;
            strSubstring2 = null;
        }
        String strSubstring3 = i4 != -1 ? strJ.substring(i4, iMin2) : null;
        String strSubstring4 = i5 != -1 ? strJ.substring(i5, iMin) : null;
        String strSubstring5 = i3 != -1 ? strJ.substring(i3, strJ.length()) : null;
        byte[] bArr = new byte[Math.max(0, Math.max(strSubstring2 != null ? strSubstring2.length() : 0, Math.max(strSubstring != null ? strSubstring.length() : 0, Math.max(strSubstring3 != null ? strSubstring3.length() : 0, Math.max(strSubstring4 != null ? strSubstring4.length() : 0, strSubstring5 != null ? strSubstring5.length() : 0)))) - 2)];
        return new Uri(strJ, str2, strSubstring2 != null ? d(strSubstring2, bArr) : null, strSubstring != null ? d(strSubstring, bArr) : null, strSubstring3 != null ? d(strSubstring3, bArr) : null, strSubstring4 != null ? d(strSubstring4, bArr) : null, strSubstring5 != null ? d(strSubstring5, bArr) : null);
    }
}
