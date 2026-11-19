package kotlin.reflect.jvm.internal.impl.renderer;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.cj;
import defpackage.d21;
import defpackage.n00;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class RenderingUtilsKt {
    public static String a(Name name) {
        name.getClass();
        String strB = name.b();
        strB.getClass();
        if (!KeywordStringsGenerated.f73822a.contains(strB)) {
            for (int i2 = 0; i2 < strB.length(); i2++) {
                char cCharAt = strB.charAt(i2);
                if (Character.isLetterOrDigit(cCharAt) || cCharAt == '_') {
                }
            }
            if (strB.length() != 0 && Character.isJavaIdentifierStart(strB.codePointAt(0))) {
                return strB;
            }
        }
        return "`".concat(strB).concat("`");
    }

    public static final String b(String str, String str2, Function0 function0, Function0 function1, Function1 function2) {
        str.getClass();
        str2.getClass();
        function2.getClass();
        String str3 = (String) function0.mo47invoke();
        String strE = e(str, d21.j(str3, "Mutable"), str2, str3, d21.j(str3, "(Mutable)"));
        if (strE != null) {
            return strE;
        }
        String strE2 = e(str, str3.concat("MutableMap.MutableEntry"), str2, str3.concat("Map.Entry"), str3.concat("(Mutable)Map.(Mutable)Entry"));
        if (strE2 != null) {
            return strE2;
        }
        String str4 = (String) function1.mo47invoke();
        StringBuilder sbT = n00.t(str4);
        sbT.append((String) function2.invoke("Array<"));
        String string = sbT.toString();
        StringBuilder sbT2 = n00.t(str4);
        sbT2.append((String) function2.invoke("Array<out "));
        String string2 = sbT2.toString();
        StringBuilder sbT3 = n00.t(str4);
        sbT3.append((String) function2.invoke("Array<(out) "));
        String strE3 = e(str, string, str2, string2, sbT3.toString());
        if (strE3 != null) {
            return strE3;
        }
        return null;
    }

    public static final String d(List list) {
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Name name = (Name) it.next();
            if (sb.length() > 0) {
                sb.append(FileUtils.HIDDEN_PREFIX);
            }
            sb.append(a(name));
        }
        return sb.toString();
    }

    public static final String e(String str, String str2, String str3, String str4, String str5) {
        cj.z(str, str3, str4);
        if (!StringsKt.P(str, str2, false) || !StringsKt.P(str3, str4, false)) {
            return null;
        }
        String strSubstring = str.substring(str2.length());
        String strSubstring2 = str3.substring(str4.length());
        String strConcat = str5.concat(strSubstring);
        if (strSubstring.equals(strSubstring2)) {
            return strConcat;
        }
        if (f(strSubstring, strSubstring2)) {
            return strConcat.concat("!");
        }
        return null;
    }

    public static final boolean f(String str, String str2) {
        str.getClass();
        str2.getClass();
        if (str.equals(StringsKt.J(str2, "?", ""))) {
            return true;
        }
        if (StringsKt.p(str2, "?", false) && str.concat("?").equals(str2)) {
            return true;
        }
        StringBuilder sb = new StringBuilder("(");
        sb.append(str);
        sb.append(")?");
        return sb.toString().equals(str2);
    }
}
