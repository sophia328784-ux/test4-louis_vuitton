package okhttp3.internal.http2;

import defpackage.az;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.ByteString;
import okio.Sink;
import okio.Socket;
import okio.Source;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\fB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lokhttp3/internal/http2/Http2ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "carrier", "Lokhttp3/internal/http/RealInterceptorChain;", "chain", "Lokhttp3/internal/http2/Http2Connection;", "http2Connection", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Http2ExchangeCodec implements ExchangeCodec {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final List f77246h = _UtilJvmKt.k(new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority"});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final List f77247i = _UtilJvmKt.k(new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade"});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExchangeCodec.Carrier f77248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RealInterceptorChain f77249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Http2Connection f77250c;
    public volatile Http2Stream d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Protocol f77251e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f77252f;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u000e¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http2/Http2ExchangeCodec$Companion;", "", "", "CONNECTION", "Ljava/lang/String;", "HOST", "KEEP_ALIVE", "PROXY_CONNECTION", "TRANSFER_ENCODING", "TE", "ENCODING", "UPGRADE", "", "HTTP_2_SKIPPED_REQUEST_HEADERS", "Ljava/util/List;", "HTTP_2_SKIPPED_RESPONSE_HEADERS", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public Http2ExchangeCodec(OkHttpClient okHttpClient, ExchangeCodec.Carrier carrier, RealInterceptorChain realInterceptorChain, Http2Connection http2Connection) {
        okHttpClient.getClass();
        carrier.getClass();
        realInterceptorChain.getClass();
        http2Connection.getClass();
        this.f77248a = carrier;
        this.f77249b = realInterceptorChain;
        this.f77250c = http2Connection;
        List list = okHttpClient.s;
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        this.f77251e = list.contains(protocol) ? protocol : Protocol.HTTP_2;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void a() throws IOException {
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        http2Stream.f77267j.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Source b(Response response) {
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        return http2Stream.f77266i;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long c(Response response) {
        if (HttpHeaders.a(response)) {
            return _UtilJvmKt.e(response);
        }
        return 0L;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        this.f77252f = true;
        Http2Stream http2Stream = this.d;
        if (http2Stream != null) {
            http2Stream.f(ErrorCode.CANCEL);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Sink d(Request request, long j2) {
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        return http2Stream.f77267j;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void e(Request request) throws IOException {
        int i2;
        Http2Stream http2Stream;
        boolean z;
        if (this.d != null) {
            return;
        }
        boolean z2 = request.d != null;
        g.getClass();
        Headers headers = request.f76971c;
        ArrayList arrayList = new ArrayList(headers.size() + 4);
        arrayList.add(new Header(Header.f77204f, request.f76970b));
        ByteString byteString = Header.g;
        HttpUrl httpUrl = request.f76969a;
        arrayList.add(new Header(byteString, RequestLine.a(httpUrl)));
        String strA = request.f76971c.a("Host");
        if (strA != null) {
            arrayList.add(new Header(Header.f77206i, strA));
        }
        arrayList.add(new Header(Header.f77205h, httpUrl.f76919a));
        int size = headers.size();
        for (int i3 = 0; i3 < size; i3++) {
            String strF = headers.f(i3);
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = strF.toLowerCase(locale);
            lowerCase.getClass();
            if (!f77246h.contains(lowerCase) || (lowerCase.equals("te") && headers.m(i3).equals("trailers"))) {
                arrayList.add(new Header(lowerCase, headers.m(i3)));
            }
        }
        Http2Connection http2Connection = this.f77250c;
        http2Connection.getClass();
        boolean z3 = !z2;
        synchronized (http2Connection.z) {
            synchronized (http2Connection) {
                try {
                    if (http2Connection.g > 1073741823) {
                        http2Connection.g(ErrorCode.REFUSED_STREAM);
                    }
                    if (http2Connection.f77233h) {
                        throw new ConnectionShutdownException();
                    }
                    i2 = http2Connection.g;
                    http2Connection.g = i2 + 2;
                    http2Stream = new Http2Stream(i2, http2Connection, z3, false, null);
                    z = !z2 || http2Connection.w >= http2Connection.x || http2Stream.f77263e >= http2Stream.f77264f;
                    if (http2Stream.i()) {
                        http2Connection.d.put(Integer.valueOf(i2), http2Stream);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            http2Connection.z.h(z3, i2, arrayList);
        }
        if (z) {
            http2Connection.z.flush();
        }
        this.d = http2Stream;
        boolean z4 = this.f77252f;
        Http2Stream http2Stream2 = this.d;
        if (z4) {
            http2Stream2.getClass();
            http2Stream2.f(ErrorCode.CANCEL);
            az.o("Canceled");
            return;
        }
        http2Stream2.getClass();
        Http2Stream.StreamTimeout streamTimeout = http2Stream2.f77268k;
        long j2 = this.f77249b.g;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        streamTimeout.g(j2, timeUnit);
        Http2Stream http2Stream3 = this.d;
        http2Stream3.getClass();
        http2Stream3.l.g(this.f77249b.f77175h, timeUnit);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final boolean f() {
        boolean z;
        Http2Stream http2Stream = this.d;
        if (http2Stream == null) {
            return false;
        }
        synchronized (http2Stream) {
            Http2Stream.FramingSource framingSource = http2Stream.f77266i;
            z = framingSource.f77273c && framingSource.f77274e.Z0();
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    /* JADX WARN: Code duplicated, block: B:21:0x002e  */
    @Override // okhttp3.internal.http.ExchangeCodec
    public final Response.Builder g(boolean z) throws IOException {
        int i2;
        Headers headers;
        boolean z2;
        Http2Stream http2Stream = this.d;
        if (http2Stream == null) {
            az.o("stream wasn't created");
            return null;
        }
        synchronized (http2Stream) {
            while (true) {
                if (!http2Stream.g.isEmpty() || http2Stream.g() != null) {
                    break;
                }
                if (!z) {
                    if (http2Stream.f77262c.f77229b) {
                        Http2Stream.FramingSink framingSink = http2Stream.f77267j;
                        if (framingSink.d || framingSink.f77269b) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = true;
                    }
                    i2 = z2 ? 1 : 0;
                }
                if (i2 != 0) {
                    http2Stream.f77268k.i();
                }
                try {
                    try {
                        http2Stream.wait();
                        if (i2 != 0) {
                            http2Stream.f77268k.m();
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                } catch (Throwable th) {
                    if (i2 != 0) {
                        http2Stream.f77268k.m();
                    }
                    throw th;
                }
            }
            if (http2Stream.g.isEmpty()) {
                IOException iOException = http2Stream.n;
                if (iOException != null) {
                    throw iOException;
                }
                ErrorCode errorCodeG = http2Stream.g();
                errorCodeG.getClass();
                throw new StreamResetException(errorCodeG);
            }
            Object objRemoveFirst = http2Stream.g.removeFirst();
            objRemoveFirst.getClass();
            headers = (Headers) objRemoveFirst;
        }
        Companion companion = g;
        Protocol protocol = this.f77251e;
        companion.getClass();
        protocol.getClass();
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        StatusLine statusLineA = null;
        for (i2 = 0; i2 < size; i2++) {
            String strF = headers.f(i2);
            String strM = headers.m(i2);
            if (strF.equals(":status")) {
                StatusLine.Companion companion2 = StatusLine.d;
                String strConcat = "HTTP/1.1 ".concat(strM);
                companion2.getClass();
                statusLineA = StatusLine.Companion.a(strConcat);
            } else if (!f77247i.contains(strF)) {
                _HeadersCommonKt.a(builder, strF, strM);
            }
        }
        if (statusLineA == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        Response.Builder builder2 = new Response.Builder();
        builder2.f76993b = protocol;
        builder2.f76994c = statusLineA.f77182b;
        String str = statusLineA.f77183c;
        str.getClass();
        builder2.d = str;
        builder2.f76996f = builder.d().h();
        if (z && builder2.f76994c == 100) {
            return null;
        }
        return builder2;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void h() {
        this.f77250c.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Socket i() {
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        return http2Stream;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    /* JADX INFO: renamed from: j, reason: from getter */
    public final ExchangeCodec.Carrier getF77248a() {
        return this.f77248a;
    }
}
