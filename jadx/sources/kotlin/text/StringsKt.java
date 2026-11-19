package kotlin.text;

import defpackage.az;
import defpackage.b21;
import defpackage.cj;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.nj0;
import defpackage.zy0;
import io.jsonwebtoken.JwtParser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/text/StringsKt__AppendableKt", "kotlin/text/StringsKt__IndentKt", "kotlin/text/StringsKt__RegexExtensionsJVMKt", "kotlin/text/StringsKt__RegexExtensionsKt", "kotlin/text/StringsKt__StringBuilderJVMKt", "kotlin/text/StringsKt__StringBuilderKt", "kotlin/text/StringsKt__StringNumberConversionsJVMKt", "kotlin/text/StringsKt__StringNumberConversionsKt", "kotlin/text/StringsKt__StringsJVMKt", "kotlin/text/StringsKt__StringsKt", "kotlin/text/StringsKt___StringsJvmKt", "kotlin/text/StringsKt___StringsKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public final class StringsKt extends StringsKt___StringsKt {
    public static List A(String str) {
        return SequencesKt.x(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(str));
    }

    public static String B(int i2, String str) {
        CharSequence charSequenceSubSequence;
        str.getClass();
        if (i2 < 0) {
            md.n(n00.m(i2, "Desired length ", " is less than zero."));
            return null;
        }
        if (i2 <= str.length()) {
            charSequenceSubSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(i2);
            int length = i2 - str.length();
            int i3 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append('0');
                    if (i3 == length) {
                        break;
                    }
                    i3++;
                }
            }
            sb.append((CharSequence) str);
            charSequenceSubSequence = sb;
        }
        return charSequenceSubSequence.toString();
    }

    public static String C(String str) {
        return SequencesKt.p(SequencesKt.r(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(str), new nj0("    ", 20)), "\n");
    }

    public static boolean D(String str, int i2, boolean z, String str2, int i3, int i4) {
        str.getClass();
        str2.getClass();
        return !z ? str.regionMatches(i2, str2, i3, i4) : str.regionMatches(z, i2, str2, i3, i4);
    }

    public static String E(String str, String str2) {
        str.getClass();
        str2.getClass();
        return StringsKt__StringsKt.i(str2, str) ? str.substring(str2.length()) : str;
    }

    public static String F(String str, String str2) {
        str.getClass();
        return r(str, str2) ? str.substring(0, str.length() - str2.length()) : str;
    }

    public static String G(String str, String str2, String str3) {
        str.getClass();
        return (str.length() >= str3.length() + str2.length() && StringsKt__StringsKt.i(str2, str) && r(str, str3)) ? str.substring(str2.length(), str.length() - str3.length()) : str;
    }

    public static String H(int i2, String str) {
        str.getClass();
        if (i2 < 0) {
            b21.n(n00.q("Count 'n' must be non-negative, but was ", i2, JwtParser.SEPARATOR_CHAR));
            return null;
        }
        if (i2 == 0) {
            return "";
        }
        int i3 = 1;
        if (i2 == 1) {
            return str.toString();
        }
        int length = str.length();
        if (length == 0) {
            return "";
        }
        if (length != 1) {
            StringBuilder sb = new StringBuilder(str.length() * i2);
            if (1 <= i2) {
                while (true) {
                    sb.append((CharSequence) str);
                    if (i3 == i2) {
                        break;
                    }
                    i3++;
                }
            }
            return sb.toString();
        }
        char cCharAt = str.charAt(0);
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = cCharAt;
        }
        return new String(cArr);
    }

    public static String I(String str, char c2, char c3) {
        str.getClass();
        String strReplace = str.replace(c2, c3);
        strReplace.getClass();
        return strReplace;
    }

    public static String J(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        int iC = StringsKt__StringsKt.c(0, str, str2, false);
        if (iC < 0) {
            return str;
        }
        int length = str2.length();
        int i2 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i3 = 0;
        do {
            sb.append((CharSequence) str, i3, iC);
            sb.append(str3);
            i3 = iC + length;
            if (iC >= str.length()) {
                break;
            }
            iC = StringsKt__StringsKt.c(iC + i2, str, str2, false);
        } while (iC > 0);
        sb.append((CharSequence) str, i3, str.length());
        return sb.toString();
    }

    public static StringBuilder K(CharSequence charSequence, int i2, int i3, CharSequence charSequence2) {
        charSequence.getClass();
        charSequence2.getClass();
        if (i3 < i2) {
            az.v(fc.f(i3, i2, "End index (", ") is less than start index (", ")."));
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence, 0, i2);
        sb.append(charSequence2);
        sb.append(charSequence, i3, charSequence.length());
        return sb;
    }

    public static List M(String str, final char[] cArr) {
        str.getClass();
        if (cArr.length == 1) {
            return StringsKt__StringsKt.h(0, str, String.valueOf(cArr[0]), false);
        }
        StringsKt__StringsKt.g(0);
        SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1 sequencesKt___SequencesKt$asIterable$$inlined$Iterable$1 = new SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1(new DelimitedRangesSequence(str, 0, 0, new Function2() { // from class: kotlin.text.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                CharSequence charSequence = (CharSequence) obj;
                int iIntValue = ((Integer) obj2).intValue();
                charSequence.getClass();
                int iE = StringsKt__StringsKt.e(charSequence, cArr, iIntValue, false);
                if (iE < 0) {
                    return null;
                }
                return new Pair(Integer.valueOf(iE), 1);
            }
        }));
        ArrayList arrayList = new ArrayList(CollectionsKt.t(sequencesKt___SequencesKt$asIterable$$inlined$Iterable$1, 10));
        for (IntRange intRange : sequencesKt___SequencesKt$asIterable$$inlined$Iterable$1.f74484b) {
            intRange.getClass();
            arrayList.add(str.subSequence(intRange.f71951b, intRange.f71952c + 1).toString());
        }
        return arrayList;
    }

    public static boolean N(CharSequence charSequence, char c2, boolean z) {
        charSequence.getClass();
        return charSequence.length() > 0 && CharsKt__CharKt.a(charSequence.charAt(0), c2, z);
    }

    public static boolean O(String str, int i2, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        return !z ? str.startsWith(str2, i2) : D(str, i2, z, str2, 0, str2.length());
    }

    public static boolean P(String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        return !z ? str.startsWith(str2) : D(str, 0, z, str2, 0, str2.length());
    }

    public static String Q(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        int iV = v(str, str2, 0, false, 6);
        return iV == -1 ? str3 : str.substring(str2.length() + iV, str.length());
    }

    public static String R(char c2, String str, String str2) {
        str.getClass();
        str2.getClass();
        int iZ = z(str, c2, 0, 6);
        return iZ == -1 ? str2 : str.substring(iZ + 1, str.length());
    }

    public static String S(String str, String str2) {
        str.getClass();
        str.getClass();
        int iY = y(0, 6, str, str2);
        return iY == -1 ? str : str.substring(str2.length() + iY, str.length());
    }

    public static String T(String str, char c2) {
        str.getClass();
        str.getClass();
        int iU = u(str, c2, 0, 6);
        return iU == -1 ? str : str.substring(0, iU);
    }

    public static String U(String str, String str2) {
        str.getClass();
        str.getClass();
        int iV = v(str, str2, 0, false, 6);
        return iV == -1 ? str : str.substring(0, iV);
    }

    public static String V(int i2, String str) {
        str.getClass();
        if (i2 < 0) {
            b21.n(n00.m(i2, "Requested character count ", " is less than zero."));
            return null;
        }
        int length = str.length();
        if (i2 > length) {
            i2 = length;
        }
        return str.substring(0, i2);
    }

    public static Boolean W(String str) {
        str.getClass();
        if (Intrinsics.c(str, "true")) {
            return Boolean.TRUE;
        }
        if (Intrinsics.c(str, "false")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static Double X(String str) {
        str.getClass();
        try {
            if (StringsKt__StringNumberConversionsJVMKt.a(str)) {
                return Double.valueOf(Double.parseDouble(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Float Y(String str) {
        str.getClass();
        try {
            if (StringsKt__StringNumberConversionsJVMKt.a(str)) {
                return Float.valueOf(Float.parseFloat(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Long Z(String str) {
        boolean z;
        str.getClass();
        CharsKt__CharJVMKt.checkRadix(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        long j2 = -9223372036854775807L;
        if (cCharAt < '0') {
            z = true;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z = false;
                i2 = 1;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                j2 = Long.MIN_VALUE;
                i2 = 1;
            }
        } else {
            z = false;
        }
        long j3 = 0;
        long j4 = -256204778801521550L;
        while (i2 < length) {
            int iDigit = Character.digit((int) str.charAt(i2), 10);
            if (iDigit < 0) {
                return null;
            }
            if (j3 < j4) {
                if (j4 != -256204778801521550L) {
                    return null;
                }
                j4 = j2 / 10;
                if (j3 < j4) {
                    return null;
                }
            }
            long j5 = j3 * 10;
            long j6 = iDigit;
            if (j5 < j2 + j6) {
                return null;
            }
            j3 = j5 - j6;
            i2++;
        }
        return z ? Long.valueOf(j3) : Long.valueOf(-j3);
    }

    public static CharSequence a0(CharSequence charSequence) {
        charSequence.getClass();
        int length = charSequence.length() - 1;
        int i2 = 0;
        boolean z = false;
        while (i2 <= length) {
            boolean zC = CharsKt.c(charSequence.charAt(!z ? i2 : length));
            if (z) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i2++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i2, length + 1);
    }

    public static String b0(String str) {
        int length;
        Comparable comparable;
        List listA = A(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listA) {
            if (!w((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            length = 0;
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            int length2 = str2.length();
            while (true) {
                if (length >= length2) {
                    length = -1;
                    break;
                }
                if (!CharsKt.c(str2.charAt(length))) {
                    break;
                }
                length++;
            }
            if (length == -1) {
                length = str2.length();
            }
            arrayList2.add(Integer.valueOf(length));
        }
        Iterator it2 = arrayList2.iterator();
        if (it2.hasNext()) {
            comparable = (Comparable) it2.next();
            while (it2.hasNext()) {
                Comparable comparable2 = (Comparable) it2.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        } else {
            comparable = null;
        }
        Integer num = (Integer) comparable;
        int iIntValue = num != null ? num.intValue() : 0;
        int length3 = str.length();
        listA.size();
        int size = listA.size() - 1;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listA) {
            int i2 = length + 1;
            if (length < 0) {
                CollectionsKt.t0();
                throw null;
            }
            String str3 = (String) obj2;
            String strN = ((length == 0 || length == size) && w(str3)) ? null : n(iIntValue, str3);
            if (strN != null) {
                arrayList3.add(strN);
            }
            length = i2;
        }
        StringBuilder sb = new StringBuilder(length3);
        CollectionsKt.J(arrayList3, sb, "\n", null, null, null, 124);
        return sb.toString();
    }

    public static String c0(String str) {
        if (w("|")) {
            md.n("marginPrefix must be non-blank string.");
            return null;
        }
        List listA = A(str);
        int length = str.length();
        listA.size();
        int size = listA.size() - 1;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : listA) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            String str2 = (String) obj;
            if ((i2 == 0 || i2 == size) && w(str2)) {
                str2 = null;
            } else {
                int length2 = str2.length();
                int i4 = 0;
                while (true) {
                    if (i4 >= length2) {
                        i4 = -1;
                        break;
                    }
                    if (!CharsKt.c(str2.charAt(i4))) {
                        break;
                    }
                    i4++;
                }
                String strSubstring = (i4 != -1 && O(str2, i4, "|", false)) ? str2.substring("|".length() + i4) : null;
                if (strSubstring != null) {
                    str2 = strSubstring;
                }
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
            i2 = i3;
        }
        StringBuilder sb = new StringBuilder(length);
        CollectionsKt.J(arrayList, sb, "\n", null, null, null, 124);
        return sb.toString();
    }

    public static CharSequence d0(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!CharsKt.c(str.charAt(i2))) {
                return str.subSequence(i2, str.length());
            }
        }
        return "";
    }

    public static String e0(String str, char... cArr) {
        CharSequence charSequenceSubSequence;
        str.getClass();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            int length2 = cArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    i3 = -1;
                    break;
                }
                if (cCharAt == cArr[i3]) {
                    break;
                }
                i3++;
            }
            if (i3 < 0) {
                charSequenceSubSequence = str.subSequence(i2, str.length());
                return charSequenceSubSequence.toString();
            }
        }
        charSequenceSubSequence = "";
        return charSequenceSubSequence.toString();
    }

    public static void j(Appendable appendable, Object obj, Function1 function1) throws IOException {
        appendable.getClass();
        if (function1 != null) {
            appendable.append((CharSequence) function1.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(obj.toString());
        }
    }

    public static boolean k(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (charSequence2 instanceof String) {
            if (v(charSequence, (String) charSequence2, 0, z, 2) >= 0) {
                return true;
            }
        } else if (StringsKt__StringsKt.d(charSequence, charSequence2, 0, charSequence.length(), z, false) >= 0) {
            return true;
        }
        return false;
    }

    public static boolean l(CharSequence charSequence, char c2) {
        charSequence.getClass();
        return u(charSequence, c2, 0, 2) >= 0;
    }

    public static String m(int i2, int i3, byte[] bArr, int i4) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        bArr.getClass();
        AbstractList.Companion companion = AbstractList.INSTANCE;
        int length = bArr.length;
        companion.getClass();
        AbstractList.Companion.a(i2, i3, length);
        return new String(bArr, i2, i3 - i2, Charsets.UTF_8);
    }

    public static String n(int i2, String str) {
        str.getClass();
        if (i2 < 0) {
            b21.n(n00.m(i2, "Requested character count ", " is less than zero."));
            return null;
        }
        int length = str.length();
        if (i2 > length) {
            i2 = length;
        }
        return str.substring(i2);
    }

    public static byte[] o(String str) {
        str.getClass();
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        bytes.getClass();
        return bytes;
    }

    public static boolean p(String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        return !z ? str.endsWith(str2) : str.regionMatches(true, str.length() - str2.length(), str2, 0, str2.length());
    }

    public static boolean q(CharSequence charSequence, char c2) {
        charSequence.getClass();
        return charSequence.length() > 0 && CharsKt__CharKt.a(charSequence.charAt(charSequence.length() - 1), c2, false);
    }

    public static boolean r(CharSequence charSequence, String str) {
        charSequence.getClass();
        return charSequence instanceof String ? p((String) charSequence, str, false) : StringsKt__StringsKt.f(charSequence, charSequence.length() - str.length(), str, 0, str.length(), false);
    }

    public static boolean s(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        return !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static int t(CharSequence charSequence) {
        charSequence.getClass();
        return charSequence.length() - 1;
    }

    public static int u(CharSequence charSequence, char c2, int i2, int i3) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        charSequence.getClass();
        return !(charSequence instanceof String) ? StringsKt__StringsKt.e(charSequence, new char[]{c2}, i2, false) : ((String) charSequence).indexOf(c2, i2);
    }

    public static /* synthetic */ int v(CharSequence charSequence, String str, int i2, boolean z, int i3) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return StringsKt__StringsKt.c(i2, charSequence, str, z);
    }

    public static boolean w(CharSequence charSequence) {
        charSequence.getClass();
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (!CharsKt.c(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static char x(CharSequence charSequence) {
        charSequence.getClass();
        if (charSequence.length() != 0) {
            return charSequence.charAt(charSequence.length() - 1);
        }
        zy0.c("Char sequence is empty.");
        return (char) 0;
    }

    public static int y(int i2, int i3, String str, String str2) {
        if ((i3 & 2) != 0) {
            i2 = t(str);
        }
        str.getClass();
        str2.getClass();
        return str.lastIndexOf(str2, i2);
    }

    public static int z(CharSequence charSequence, char c2, int i2, int i3) {
        if ((i3 & 2) != 0) {
            i2 = t(charSequence);
        }
        charSequence.getClass();
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(c2, i2);
        }
        char[] cArr = {c2};
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(ArraysKt.P(cArr), i2);
        }
        int length = charSequence.length() - 1;
        if (i2 > length) {
            i2 = length;
        }
        while (-1 < i2) {
            if (CharsKt__CharKt.a(cArr[0], charSequence.charAt(i2), false)) {
                return i2;
            }
            i2--;
        }
        return -1;
    }
}
