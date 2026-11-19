package coil3.util;

import io.jsonwebtoken.JwtParser;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcoil3/util/MimeTypeMap;", "", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class MimeTypeMap {
    public static String a(String str) {
        if (StringsKt.w(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        String str2 = (String) MimeTypesKt.f21731a.get(lowerCase);
        return str2 == null ? android.webkit.MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase) : str2;
    }

    public static String b(String str) {
        if (StringsKt.w(str)) {
            return null;
        }
        int iZ = StringsKt.z(str, '#', 0, 6);
        if (iZ != -1) {
            str = str.substring(0, iZ);
        }
        int iZ2 = StringsKt.z(str, '?', 0, 6);
        if (iZ2 != -1) {
            str = str.substring(0, iZ2);
        }
        return a(StringsKt.R(JwtParser.SEPARATOR_CHAR, StringsKt.R('/', str, str), ""));
    }
}
