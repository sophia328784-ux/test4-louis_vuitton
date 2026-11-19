package kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CapitalizeDecapitalizeKt {
    public static final String a(String str) {
        char cCharAt;
        str.getClass();
        if (str.length() == 0 || 'a' > (cCharAt = str.charAt(0)) || cCharAt >= '{') {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        sb.append(Character.toUpperCase(cCharAt));
        sb.append((CharSequence) str, 1, str.length());
        return sb.toString();
    }

    public static final boolean b(int i2, String str) {
        char cCharAt = str.charAt(i2);
        return 'A' <= cCharAt && cCharAt < '[';
    }

    public static final String c(String str) {
        str.getClass();
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if ('A' <= cCharAt && cCharAt < '[') {
                cCharAt = Character.toLowerCase(cCharAt);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }
}
