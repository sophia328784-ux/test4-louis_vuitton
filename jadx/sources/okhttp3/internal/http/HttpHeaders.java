package okhttp3.internal.http;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.md;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class HttpHeaders {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteString f77168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ByteString f77169b;

    static {
        ByteString.f77398e.getClass();
        f77168a = ByteString.Companion.c("\"\\");
        f77169b = ByteString.Companion.c("\t ,=");
    }

    public static final boolean a(Response response) {
        if (Intrinsics.c(response.f76984b.f76970b, "HEAD")) {
            return false;
        }
        int i2 = response.f76986e;
        if (((i2 < 100 || i2 >= 200) && i2 != 204 && i2 != 304) || _UtilJvmKt.e(response) != -1) {
            return true;
        }
        String strA = response.g.a("Transfer-Encoding");
        if (strA == null) {
            strA = null;
        }
        return "chunked".equalsIgnoreCase(strA);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0082  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:76:0x0104 A[EDGE_INSN: B:76:0x0104->B:64:0x0104 BREAK  A[LOOP:2: B:22:0x006f->B:63:0x0101], SYNTHETIC] */
    public static final void b(Buffer buffer, ArrayList arrayList) {
        String strC;
        while (true) {
            String strC2 = null;
            while (true) {
                if (strC2 == null) {
                    e(buffer);
                    strC2 = c(buffer);
                    if (strC2 == null) {
                        return;
                    }
                }
                boolean zE = e(buffer);
                String strC3 = c(buffer);
                if (strC3 == null) {
                    if (buffer.Z0()) {
                        arrayList.add(new Challenge(strC2, (Map<String, String>) MapsKt.c()));
                        return;
                    }
                    return;
                }
                int iP = _UtilCommonKt.p(buffer);
                boolean zE2 = e(buffer);
                if (zE || !(zE2 || buffer.Z0())) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    int iP2 = _UtilCommonKt.p(buffer) + iP;
                    while (true) {
                        if (strC3 != null) {
                            if (iP2 != 0) {
                                break;
                                break;
                            }
                            if (iP2 <= 1) {
                                return;
                            }
                            if (buffer.Z0()) {
                                strC = c(buffer);
                            } else {
                                strC = c(buffer);
                            }
                            if (strC != null) {
                                return;
                            }
                            if (e(buffer)) {
                            }
                            strC3 = null;
                        } else {
                            strC3 = c(buffer);
                            if (!e(buffer)) {
                                iP2 = _UtilCommonKt.p(buffer);
                                if (iP2 != 0) {
                                    break;
                                }
                                if (iP2 <= 1 || e(buffer)) {
                                    return;
                                }
                                if (buffer.Z0() || buffer.w(0L) != 34) {
                                    strC = c(buffer);
                                } else {
                                    if (buffer.readByte() != 34) {
                                        md.n("Failed requirement.");
                                        return;
                                    }
                                    Buffer buffer2 = new Buffer();
                                    while (true) {
                                        long jW = buffer.W(f77168a);
                                        if (jW != -1) {
                                            if (buffer.w(jW) == 34) {
                                                buffer2.D(buffer, jW);
                                                buffer.readByte();
                                                strC = buffer2.H();
                                                break;
                                            } else if (buffer.f77390c != jW + 1) {
                                                buffer2.D(buffer, jW);
                                                buffer.readByte();
                                                buffer2.D(buffer, 1L);
                                            }
                                        }
                                        strC = null;
                                        break;
                                    }
                                }
                                if (strC != null || ((String) linkedHashMap.put(strC3, strC)) != null) {
                                    return;
                                }
                                if (e(buffer) && !buffer.Z0()) {
                                    return;
                                } else {
                                    strC3 = null;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    arrayList.add(new Challenge(strC2, linkedHashMap));
                    strC2 = strC3;
                } else {
                    StringBuilder sbT = n00.t(strC3);
                    sbT.append(StringsKt.H(iP, "="));
                    Map mapSingletonMap = Collections.singletonMap(null, sbT.toString());
                    mapSingletonMap.getClass();
                    arrayList.add(new Challenge(strC2, (Map<String, String>) mapSingletonMap));
                }
            }
        }
    }

    public static final String c(Buffer buffer) {
        long jW = buffer.W(f77169b);
        if (jW == -1) {
            jW = buffer.f77390c;
        }
        if (jW != 0) {
            return buffer.G(jW, Charsets.UTF_8);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:18:0x0077  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void d(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        List listUnmodifiableList;
        int i2;
        Cookie cookie;
        long j2;
        Cookie cookie2;
        String strSubstring;
        cookieJar.getClass();
        httpUrl.getClass();
        headers.getClass();
        if (cookieJar == CookieJar.f76898a) {
            return;
        }
        Cookie.f76881k.getClass();
        List listN = headers.n("Set-Cookie");
        int size = listN.size();
        int i3 = 0;
        int i4 = 0;
        ArrayList arrayList = null;
        while (i4 < size) {
            String str = (String) listN.get(i4);
            str.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            char c2 = ';';
            int iG = _UtilCommonKt.g(str, ';', i3, i3, 6);
            char c3 = '=';
            int iG2 = _UtilCommonKt.g(str, '=', i3, iG, 2);
            if (iG2 == iG) {
                i2 = i3;
                cookie = null;
            } else {
                int iJ = _UtilCommonKt.j(i3, iG2, str);
                String strSubstring2 = str.substring(iJ, _UtilCommonKt.k(iJ, iG2, str));
                if (strSubstring2.length() != 0 && _UtilCommonKt.i(strSubstring2) == -1) {
                    int iJ2 = _UtilCommonKt.j(iG2 + 1, iG, str);
                    String strSubstring3 = str.substring(iJ2, _UtilCommonKt.k(iJ2, iG, str));
                    if (_UtilCommonKt.i(strSubstring3) == -1) {
                        int i5 = iG + 1;
                        int length = str.length();
                        int i6 = i3;
                        int i7 = i6;
                        int i8 = i7;
                        long j3 = -1;
                        long jB = 253402300799999L;
                        String strSubstring4 = null;
                        String str2 = null;
                        boolean z = true;
                        String str3 = null;
                        while (true) {
                            if (i5 >= length) {
                                if (j3 == Long.MIN_VALUE) {
                                    j2 = Long.MIN_VALUE;
                                } else if (j3 != -1) {
                                    long j4 = jCurrentTimeMillis + (j3 <= 9223372036854775L ? j3 * 1000 : Long.MAX_VALUE);
                                    j2 = (j4 < jCurrentTimeMillis || j4 > 253402300799999L) ? 253402300799999L : j4;
                                } else {
                                    j2 = jB;
                                }
                                String str4 = httpUrl.d;
                                if (str2 != null) {
                                    if (!Intrinsics.c(str4, str2) && (!StringsKt.p(str4, str2, false) || str4.charAt((str4.length() - str2.length()) - 1) != '.' || _HostnamesCommonKt.f77015a.f(str4))) {
                                        i2 = 0;
                                        cookie2 = null;
                                    }
                                    cookie = cookie2;
                                    break;
                                }
                                str2 = str4;
                                if (str4.length() != str2.length()) {
                                    PublicSuffixDatabase.f77340b.getClass();
                                    if (PublicSuffixDatabase.f77342e.a(str2) == null) {
                                        i2 = 0;
                                        cookie2 = null;
                                    }
                                    cookie = cookie2;
                                    break;
                                }
                                i2 = 0;
                                if (strSubstring4 == null || !StringsKt.P(strSubstring4, "/", false)) {
                                    String strB = httpUrl.b();
                                    int iZ = StringsKt.z(strB, '/', 0, 6);
                                    strSubstring4 = iZ != 0 ? strB.substring(0, iZ) : "/";
                                }
                                cookie2 = new Cookie(strSubstring2, strSubstring3, j2, str2, strSubstring4, i8, i6, i7, z, str3, null);
                                cookie = cookie2;
                                break;
                            }
                            int iF = _UtilCommonKt.f(str, i5, length, c2);
                            int iF2 = _UtilCommonKt.f(str, i5, iF, c3);
                            int iJ3 = _UtilCommonKt.j(i5, iF2, str);
                            String strSubstring5 = str.substring(iJ3, _UtilCommonKt.k(iJ3, iF2, str));
                            if (iF2 < iF) {
                                int iJ4 = _UtilCommonKt.j(iF2 + 1, iF, str);
                                strSubstring = str.substring(iJ4, _UtilCommonKt.k(iJ4, iF, str));
                            } else {
                                strSubstring = "";
                            }
                            if (strSubstring5.equalsIgnoreCase("expires")) {
                                try {
                                    jB = Cookie.Companion.b(strSubstring.length(), strSubstring);
                                    i7 = 1;
                                } catch (NumberFormatException | IllegalArgumentException unused) {
                                }
                            } else if (strSubstring5.equalsIgnoreCase("max-age")) {
                                try {
                                    j3 = Long.parseLong(strSubstring);
                                    if (j3 <= 0) {
                                        j3 = Long.MIN_VALUE;
                                    }
                                } catch (NumberFormatException e2) {
                                    if (!new Regex("-?\\d+").f(strSubstring)) {
                                        throw e2;
                                    }
                                    j3 = StringsKt.P(strSubstring, "-", false) ? Long.MIN_VALUE : Long.MAX_VALUE;
                                }
                                i7 = 1;
                            } else if (strSubstring5.equalsIgnoreCase("domain")) {
                                if (StringsKt.p(strSubstring, FileUtils.HIDDEN_PREFIX, false)) {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                                String strB2 = _HostnamesCommonKt.b(StringsKt.E(strSubstring, FileUtils.HIDDEN_PREFIX));
                                if (strB2 == null) {
                                    throw new IllegalArgumentException();
                                }
                                str2 = strB2;
                                z = false;
                            } else if (strSubstring5.equalsIgnoreCase("path")) {
                                strSubstring4 = strSubstring;
                            } else if (strSubstring5.equalsIgnoreCase("secure")) {
                                i8 = 1;
                            } else if (strSubstring5.equalsIgnoreCase("httponly")) {
                                i6 = 1;
                            } else if (strSubstring5.equalsIgnoreCase("samesite")) {
                                str3 = strSubstring;
                            }
                            i5 = iF + 1;
                            c2 = ';';
                            c3 = '=';
                        }
                    } else {
                        i2 = i3;
                        cookie = null;
                    }
                } else {
                    i2 = i3;
                    cookie = null;
                }
            }
            if (cookie != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(cookie);
            }
            i4++;
            i3 = i2;
        }
        if (arrayList != null) {
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
            listUnmodifiableList.getClass();
        } else {
            listUnmodifiableList = null;
        }
        if (listUnmodifiableList == null) {
            listUnmodifiableList = EmptyList.f71768b;
        }
        if (listUnmodifiableList.isEmpty()) {
            return;
        }
        cookieJar.b(httpUrl, listUnmodifiableList);
    }

    public static final boolean e(Buffer buffer) {
        boolean z = false;
        while (!buffer.Z0()) {
            byte bW = buffer.w(0L);
            if (bW != 44) {
                if (bW != 32 && bW != 9) {
                    break;
                }
                buffer.readByte();
            } else {
                buffer.readByte();
                z = true;
            }
        }
        return z;
    }
}
