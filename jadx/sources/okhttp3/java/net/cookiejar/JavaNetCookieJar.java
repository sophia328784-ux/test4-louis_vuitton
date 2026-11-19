package okhttp3.java.net.cookiejar;

import defpackage.md;
import defpackage.o60;
import defpackage.r81;
import java.io.IOException;
import java.net.CookieHandler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import lv.nfc.reader.utils.LVConstants;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.platform.Android10Platform;
import okhttp3.internal.platform.Platform;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/java/net/cookiejar/JavaNetCookieJar;", "Lokhttp3/CookieJar;", "Ljava/net/CookieHandler;", "cookieHandler", "<init>", "(Ljava/net/CookieHandler;)V", "okhttp-java-net-cookiejar"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JavaNetCookieJar implements CookieJar {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CookieHandler f77377b;

    public JavaNetCookieJar(CookieHandler cookieHandler) {
        cookieHandler.getClass();
        this.f77377b = cookieHandler;
    }

    @Override // okhttp3.CookieJar
    public final List a(HttpUrl httpUrl) {
        String strG;
        httpUrl.getClass();
        try {
            Map<String, List<String>> map = this.f77377b.get(httpUrl.j(), MapsKt.c());
            map.getClass();
            Iterator<Map.Entry<String, List<String>>> it = map.entrySet().iterator();
            ArrayList arrayList = null;
            while (it.hasNext()) {
                Map.Entry<String, List<String>> next = it.next();
                String key = next.getKey();
                List<String> value = next.getValue();
                if (LVConstants.COOKIE_HEADER.equalsIgnoreCase(key) || "Cookie2".equalsIgnoreCase(key)) {
                    value.getClass();
                    if (!value.isEmpty()) {
                        for (String str : value) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            str.getClass();
                            ArrayList arrayList2 = new ArrayList();
                            int length = str.length();
                            boolean z = false;
                            int i2 = 0;
                            while (i2 < length) {
                                int iE = _UtilCommonKt.e(i2, length, str, ";,");
                                int iF = _UtilCommonKt.f(str, i2, iE, '=');
                                int iJ = _UtilCommonKt.j(i2, iF, str);
                                String strSubstring = str.substring(iJ, _UtilCommonKt.k(iJ, iF, str));
                                if (StringsKt.P(strSubstring, "$", z)) {
                                    i2 = iE + 1;
                                } else {
                                    if (iF < iE) {
                                        int iJ2 = _UtilCommonKt.j(iF + 1, iE, str);
                                        strG = str.substring(iJ2, _UtilCommonKt.k(iJ2, iE, str));
                                    } else {
                                        strG = "";
                                    }
                                    if (StringsKt.P(strG, "\"", z) && StringsKt.p(strG, "\"", z) && strG.length() >= 2) {
                                        strG = o60.g(1, 1, strG);
                                    }
                                    String string = StringsKt.a0(strG).toString();
                                    Cookie.Builder builder = new Cookie.Builder();
                                    if (!Intrinsics.c(StringsKt.a0(strSubstring).toString(), strSubstring)) {
                                        md.n("name is not trimmed");
                                        return null;
                                    }
                                    builder.f76890a = strSubstring;
                                    string.getClass();
                                    if (!Intrinsics.c(StringsKt.a0(string).toString(), string)) {
                                        md.n("value is not trimmed");
                                        return null;
                                    }
                                    builder.f76891b = string;
                                    String str2 = httpUrl.d;
                                    str2.getClass();
                                    String strB = _HostnamesCommonKt.b(str2);
                                    if (strB == null) {
                                        md.n("unexpected domain: ".concat(str2));
                                        return null;
                                    }
                                    builder.d = strB;
                                    builder.f76896i = z;
                                    String str3 = builder.f76890a;
                                    if (str3 == null) {
                                        r81.d("builder.name == null");
                                        return null;
                                    }
                                    String str4 = builder.f76891b;
                                    if (str4 == null) {
                                        r81.d("builder.value == null");
                                        return null;
                                    }
                                    long j2 = builder.f76892c;
                                    String str5 = builder.d;
                                    if (str5 == null) {
                                        r81.d("builder.domain == null");
                                        return null;
                                    }
                                    arrayList2.add(new Cookie(str3, str4, j2, str5, builder.f76893e, builder.f76894f, builder.g, builder.f76895h, builder.f76896i, builder.f76897j, null));
                                    i2 = iE + 1;
                                    it = it;
                                    z = false;
                                }
                            }
                            arrayList.addAll(arrayList2);
                        }
                    }
                }
                it = it;
            }
            if (arrayList == null) {
                return EmptyList.f71768b;
            }
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            listUnmodifiableList.getClass();
            return listUnmodifiableList;
        } catch (IOException e2) {
            Platform.f77312a.getClass();
            Android10Platform android10Platform = Platform.f77313b;
            StringBuilder sb = new StringBuilder("Loading cookies failed for ");
            HttpUrl httpUrlI = httpUrl.i("/...");
            httpUrlI.getClass();
            sb.append(httpUrlI);
            android10Platform.e(5, sb.toString(), e2);
            return EmptyList.f71768b;
        }
    }

    @Override // okhttp3.CookieJar
    public final void b(HttpUrl httpUrl, List list) {
        httpUrl.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Cookie cookie = (Cookie) it.next();
            cookie.getClass();
            arrayList.add(cookie.a(true));
        }
        try {
            this.f77377b.put(httpUrl.j(), MapsKt.h(new Pair("Set-Cookie", arrayList)));
        } catch (IOException e2) {
            Platform.f77312a.getClass();
            Android10Platform android10Platform = Platform.f77313b;
            StringBuilder sb = new StringBuilder("Saving cookies failed for ");
            HttpUrl httpUrlI = httpUrl.i("/...");
            httpUrlI.getClass();
            sb.append(httpUrlI);
            android10Platform.e(5, sb.toString(), e2);
        }
    }
}
