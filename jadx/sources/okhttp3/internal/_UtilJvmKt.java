package okhttp3.internal;

import defpackage.a61;
import defpackage.b21;
import defpackage.d21;
import defpackage.tg0;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal.http2.Header;
import okio.Buffer;
import okio.BufferedSource;
import okio.Source;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class _UtilJvmKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TimeZone f77018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f77019b;

    static {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        timeZone.getClass();
        f77018a = timeZone;
        f77019b = StringsKt.F(StringsKt.E(OkHttpClient.class.getName(), "okhttp3."), "Client");
    }

    public static final boolean a(HttpUrl httpUrl, HttpUrl httpUrl2) {
        httpUrl.getClass();
        httpUrl2.getClass();
        return Intrinsics.c(httpUrl.d, httpUrl2.d) && httpUrl.f76922e == httpUrl2.f76922e && Intrinsics.c(httpUrl.f76919a, httpUrl2.f76919a);
    }

    public static final int b(String str, long j2, TimeUnit timeUnit) {
        timeUnit.getClass();
        if (j2 < 0) {
            tg0.c(str.concat(" < 0"));
            return 0;
        }
        long millis = timeUnit.toMillis(j2);
        if (millis > 2147483647L) {
            b21.n(str.concat(" too large"));
            return 0;
        }
        if (millis != 0 || j2 <= 0) {
            return (int) millis;
        }
        b21.n(str.concat(" too small"));
        return 0;
    }

    public static final void c(Socket socket) {
        socket.getClass();
        try {
            socket.close();
        } catch (AssertionError e2) {
            throw e2;
        } catch (RuntimeException e3) {
            if (!Intrinsics.c(e3.getMessage(), "bio == null")) {
                throw e3;
            }
        } catch (Exception unused) {
        }
    }

    public static final String d(String str, Object... objArr) {
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    public static final long e(Response response) {
        String strA = response.g.a("Content-Length");
        if (strA == null) {
            return -1L;
        }
        byte[] bArr = _UtilCommonKt.f77016a;
        try {
            return Long.parseLong(strA);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static final Charset f(BufferedSource bufferedSource, Charset charset) {
        bufferedSource.getClass();
        charset.getClass();
        int iV1 = bufferedSource.V1(_UtilCommonKt.f77017b);
        if (iV1 == -1) {
            return charset;
        }
        if (iV1 == 0) {
            return Charsets.UTF_8;
        }
        if (iV1 == 1) {
            return Charsets.f74511b;
        }
        if (iV1 == 2) {
            Charsets.f74510a.getClass();
            Charset charset2 = Charsets.f74513e;
            if (charset2 != null) {
                return charset2;
            }
            Charset charsetForName = Charset.forName("UTF-32LE");
            charsetForName.getClass();
            Charsets.f74513e = charsetForName;
            return charsetForName;
        }
        if (iV1 == 3) {
            return Charsets.f74512c;
        }
        if (iV1 != 4) {
            a61.h();
            return null;
        }
        Charsets.f74510a.getClass();
        Charset charset3 = Charsets.f74514f;
        if (charset3 != null) {
            return charset3;
        }
        Charset charsetForName2 = Charset.forName("UTF-32BE");
        charsetForName2.getClass();
        Charsets.f74514f = charsetForName2;
        return charsetForName2;
    }

    public static final boolean g(Source source, int i2) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeUnit.getClass();
        long jNanoTime = System.nanoTime();
        long jC = source.timeout().getF77455a() ? source.timeout().c() - jNanoTime : Long.MAX_VALUE;
        source.timeout().d(Math.min(jC, timeUnit.toNanos(i2)) + jNanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, 8192L) != -1) {
                buffer.h();
            }
            if (jC == Long.MAX_VALUE) {
                source.timeout().a();
                return true;
            }
            source.timeout().d(jNanoTime + jC);
            return true;
        } catch (InterruptedIOException unused) {
            if (jC == Long.MAX_VALUE) {
                source.timeout().a();
                return false;
            }
            source.timeout().d(jNanoTime + jC);
            return false;
        } catch (Throwable th) {
            if (jC == Long.MAX_VALUE) {
                source.timeout().a();
            } else {
                source.timeout().d(jNanoTime + jC);
            }
            throw th;
        }
    }

    public static final Headers h(List list) {
        list.getClass();
        Headers.Builder builder = new Headers.Builder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Header header = (Header) it.next();
            _HeadersCommonKt.a(builder, header.f77207a.C(), header.f77208b.C());
        }
        return builder.d();
    }

    public static final String i(HttpUrl httpUrl, boolean z) {
        httpUrl.getClass();
        String strD = httpUrl.d;
        int i2 = httpUrl.f76922e;
        if (StringsKt.k(strD, ":", false)) {
            strD = d21.d(']', "[", strD);
        }
        if (!z) {
            HttpUrl.Companion companion = HttpUrl.f76918j;
            String str = httpUrl.f76919a;
            companion.getClass();
            if (i2 == HttpUrl.Companion.b(str)) {
                return strD;
            }
        }
        return strD + ':' + i2;
    }

    public static final List j(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return EmptyList.f71768b;
        }
        if (list.size() == 1) {
            List listSingletonList = Collections.singletonList(list.get(0));
            listSingletonList.getClass();
            return listSingletonList;
        }
        Object[] array = list.toArray();
        array.getClass();
        List listUnmodifiableList = Collections.unmodifiableList(ArraysKt.d(array));
        listUnmodifiableList.getClass();
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }

    public static final List k(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return EmptyList.f71768b;
        }
        if (objArr.length == 1) {
            List listSingletonList = Collections.singletonList(objArr[0]);
            listSingletonList.getClass();
            return listSingletonList;
        }
        List listUnmodifiableList = Collections.unmodifiableList(ArraysKt.d((Object[]) objArr.clone()));
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }
}
