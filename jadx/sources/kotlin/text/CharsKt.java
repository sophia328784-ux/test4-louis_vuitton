package kotlin.text;

import defpackage.md;
import defpackage.n00;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/text/CharsKt__CharJVMKt", "kotlin/text/CharsKt__CharKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public final class CharsKt extends CharsKt__CharKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static CharCategory b(char c2) {
        CharCategory.Companion companion = CharCategory.INSTANCE;
        int type = Character.getType(c2);
        companion.getClass();
        if (type >= 0 && type < 17) {
            return (CharCategory) CharCategory.a().get(type);
        }
        if (18 <= type && type < 31) {
            return (CharCategory) CharCategory.a().get(type - 1);
        }
        md.n(n00.m(type, "Category #", " is not defined."));
        return null;
    }

    public static boolean c(char c2) {
        return Character.isWhitespace(c2) || Character.isSpaceChar(c2);
    }

    public static String d(char c2, Locale locale) {
        locale.getClass();
        String strValueOf = String.valueOf(c2);
        strValueOf.getClass();
        String upperCase = strValueOf.toUpperCase(locale);
        upperCase.getClass();
        if (upperCase.length() <= 1) {
            String strValueOf2 = String.valueOf(c2);
            strValueOf2.getClass();
            String upperCase2 = strValueOf2.toUpperCase(Locale.ROOT);
            upperCase2.getClass();
            if (upperCase.equals(upperCase2)) {
                return String.valueOf(Character.toTitleCase(c2));
            }
        } else if (c2 != 329) {
            char cCharAt = upperCase.charAt(0);
            String lowerCase = upperCase.substring(1).toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return cCharAt + lowerCase;
        }
        return upperCase;
    }
}
