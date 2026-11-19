package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-json"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class StringOpsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f75833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f75834b;

    static {
        String[] strArr = new String[93];
        for (int i2 = 0; i2 < 32; i2++) {
            strArr[i2] = "\\u" + c(i2 >> 12) + c(i2 >> 8) + c(i2 >> 4) + c(i2);
        }
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        f75833a = strArr;
        byte[] bArr = new byte[93];
        for (int i3 = 0; i3 < 32; i3++) {
            bArr[i3] = 1;
        }
        bArr[34] = 34;
        bArr[92] = 92;
        bArr[9] = 116;
        bArr[8] = 98;
        bArr[10] = 110;
        bArr[13] = 114;
        bArr[12] = 102;
        f75834b = bArr;
    }

    public static final void a(String str, StringBuilder sb) {
        str.getClass();
        sb.append('\"');
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            String[] strArr = f75833a;
            if (cCharAt < strArr.length && strArr[cCharAt] != null) {
                sb.append((CharSequence) str, i2, i3);
                sb.append(strArr[cCharAt]);
                i2 = i3 + 1;
            }
        }
        if (i2 != 0) {
            sb.append((CharSequence) str, i2, str.length());
        } else {
            sb.append(str);
        }
        sb.append('\"');
    }

    public static final Boolean b(String str) {
        str.getClass();
        if (StringsKt.s(str, "true", true)) {
            return Boolean.TRUE;
        }
        if (StringsKt.s(str, "false", true)) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static final char c(int i2) {
        int i3 = i2 & 15;
        return (char) (i3 < 10 ? i3 + 48 : i3 + 87);
    }
}
