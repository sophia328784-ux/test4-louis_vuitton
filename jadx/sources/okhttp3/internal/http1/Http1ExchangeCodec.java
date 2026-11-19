package okhttp3.internal.http1;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.b21;
import defpackage.ct0;
import defpackage.d21;
import defpackage.md;
import defpackage.r81;
import defpackage.tr;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.BufferedSocket;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;
import okio.Timeout$Companion$NONE$1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0007\n\u000b\f\r\u000e\u000f\u0010B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "carrier", "Lokhttp3/internal/connection/BufferedSocket;", "socket", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/connection/BufferedSocket;)V", "KnownLengthSink", "ChunkedSink", "AbstractSource", "FixedLengthSource", "ChunkedSource", "UnknownLengthSource", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Http1ExchangeCodec implements ExchangeCodec {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Headers f77186f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OkHttpClient f77187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExchangeCodec.Carrier f77188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BufferedSocket f77189c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HeadersReader f77190e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b¢\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokio/Source;", "Lokhttp3/HttpUrl;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public abstract class AbstractSource implements Source {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HttpUrl f77191b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ForwardingTimeout f77192c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Http1ExchangeCodec f77193e;

        public AbstractSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            httpUrl.getClass();
            this.f77193e = http1ExchangeCodec;
            this.f77191b = httpUrl;
            this.f77192c = new ForwardingTimeout(http1ExchangeCodec.f77189c.getSource().getF77426c());
        }

        public final void c(Headers headers) {
            OkHttpClient okHttpClient;
            CookieJar cookieJar;
            headers.getClass();
            Http1ExchangeCodec http1ExchangeCodec = this.f77193e;
            int i2 = http1ExchangeCodec.d;
            if (i2 == 6) {
                return;
            }
            if (i2 != 5) {
                r81.c(http1ExchangeCodec.d, "state: ");
                return;
            }
            Http1ExchangeCodec.k(http1ExchangeCodec, this.f77192c);
            http1ExchangeCodec.d = 6;
            if (headers.size() <= 0 || (okHttpClient = http1ExchangeCodec.f77187a) == null || (cookieJar = okHttpClient.f76958j) == null) {
                return;
            }
            HttpHeaders.d(cookieJar, this.f77191b, headers);
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j2) throws IOException {
            Http1ExchangeCodec http1ExchangeCodec = this.f77193e;
            buffer.getClass();
            try {
                return http1ExchangeCodec.f77189c.getSource().read(buffer, j2);
            } catch (IOException e2) {
                http1ExchangeCodec.f77188b.c();
                c(Http1ExchangeCodec.f77186f);
                throw e2;
            }
        }

        @Override // okio.Source
        /* JADX INFO: renamed from: timeout */
        public final Timeout getF77426c() {
            return this.f77192c;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;", "Lokio/Sink;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class ChunkedSink implements Sink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ForwardingTimeout f77194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f77195c;

        public ChunkedSink() {
            this.f77194b = new ForwardingTimeout(Http1ExchangeCodec.this.f77189c.a().getF77431c());
        }

        @Override // okio.Sink
        public final void D(Buffer buffer, long j2) {
            buffer.getClass();
            if (this.f77195c) {
                md.k("closed");
                return;
            }
            if (j2 == 0) {
                return;
            }
            BufferedSink bufferedSinkA = Http1ExchangeCodec.this.f77189c.a();
            bufferedSinkA.l1(j2);
            bufferedSinkA.r0("\r\n");
            bufferedSinkA.D(buffer, j2);
            bufferedSinkA.r0("\r\n");
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            if (this.f77195c) {
                return;
            }
            this.f77195c = true;
            Http1ExchangeCodec.this.f77189c.a().r0("0\r\n\r\n");
            Http1ExchangeCodec.k(Http1ExchangeCodec.this, this.f77194b);
            Http1ExchangeCodec.this.d = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public final synchronized void flush() {
            if (this.f77195c) {
                return;
            }
            Http1ExchangeCodec.this.f77189c.a().flush();
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout */
        public final Timeout getF77431c() {
            return this.f77194b;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/HttpUrl;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class ChunkedSource extends AbstractSource {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f77196f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Http1ExchangeCodec f77197h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            super(http1ExchangeCodec, httpUrl);
            httpUrl.getClass();
            this.f77197h = http1ExchangeCodec;
            this.f77196f = -1L;
            this.g = true;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean zG;
            if (this.d) {
                return;
            }
            if (this.g) {
                TimeZone timeZone = _UtilJvmKt.f77018a;
                TimeUnit.MILLISECONDS.getClass();
                try {
                    zG = _UtilJvmKt.g(this, 100);
                } catch (IOException unused) {
                    zG = false;
                }
                if (!zG) {
                    this.f77197h.f77188b.c();
                    c(Http1ExchangeCodec.f77186f);
                }
            }
            this.d = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
        
            if (r10.g == false) goto L31;
         */
        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long read(okio.Buffer r11, long r12) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 251
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http1.Http1ExchangeCodec.ChunkedSource.read(okio.Buffer, long):long");
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007R\u0014\u0010\f\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0007R\u0014\u0010\r\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0007R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;", "", "", "NO_CHUNK_YET", "J", "", "STATE_IDLE", "I", "STATE_OPEN_REQUEST_BODY", "STATE_WRITING_REQUEST_BODY", "STATE_READ_RESPONSE_HEADERS", "STATE_OPEN_RESPONSE_BODY", "STATE_READING_RESPONSE_BODY", "STATE_CLOSED", "Lokhttp3/Headers;", "TRAILERS_RESPONSE_BODY_TRUNCATED", "Lokhttp3/Headers;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/HttpUrl;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "bytesRemaining", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;J)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class FixedLengthSource extends AbstractSource {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f77198f;
        public final /* synthetic */ Http1ExchangeCodec g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FixedLengthSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl, long j2) {
            super(http1ExchangeCodec, httpUrl);
            httpUrl.getClass();
            this.g = http1ExchangeCodec;
            this.f77198f = j2;
            if (j2 == 0) {
                c(Headers.d);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean zG;
            if (this.d) {
                return;
            }
            if (this.f77198f != 0) {
                TimeZone timeZone = _UtilJvmKt.f77018a;
                TimeUnit.MILLISECONDS.getClass();
                try {
                    zG = _UtilJvmKt.g(this, 100);
                } catch (IOException unused) {
                    zG = false;
                }
                if (!zG) {
                    this.g.f77188b.c();
                    c(Http1ExchangeCodec.f77186f);
                }
            }
            this.d = true;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public final long read(Buffer buffer, long j2) throws IOException {
            buffer.getClass();
            if (j2 < 0) {
                b21.n(d21.g(j2, "byteCount < 0: "));
                return 0L;
            }
            if (this.d) {
                md.k("closed");
                return 0L;
            }
            long j3 = this.f77198f;
            if (j3 == 0) {
                return -1L;
            }
            long j4 = super.read(buffer, Math.min(j3, j2));
            if (j4 == -1) {
                this.g.f77188b.c();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                c(Http1ExchangeCodec.f77186f);
                throw protocolException;
            }
            long j5 = this.f77198f - j4;
            this.f77198f = j5;
            if (j5 == 0) {
                c(Headers.d);
            }
            return j4;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;", "Lokio/Sink;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class KnownLengthSink implements Sink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ForwardingTimeout f77199b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f77200c;

        public KnownLengthSink() {
            this.f77199b = new ForwardingTimeout(Http1ExchangeCodec.this.f77189c.a().getF77431c());
        }

        @Override // okio.Sink
        public final void D(Buffer buffer, long j2) {
            buffer.getClass();
            if (this.f77200c) {
                md.k("closed");
            } else {
                _UtilCommonKt.a(buffer.f77390c, 0L, j2);
                Http1ExchangeCodec.this.f77189c.a().D(buffer, j2);
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f77200c) {
                return;
            }
            this.f77200c = true;
            ForwardingTimeout forwardingTimeout = this.f77199b;
            Http1ExchangeCodec http1ExchangeCodec = Http1ExchangeCodec.this;
            Http1ExchangeCodec.k(http1ExchangeCodec, forwardingTimeout);
            http1ExchangeCodec.d = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() {
            if (this.f77200c) {
                return;
            }
            Http1ExchangeCodec.this.f77189c.a().flush();
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout */
        public final Timeout getF77431c() {
            return this.f77199b;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/HttpUrl;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class UnknownLengthSource extends AbstractSource {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f77201f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnknownLengthSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            super(http1ExchangeCodec, httpUrl);
            httpUrl.getClass();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.d) {
                return;
            }
            if (!this.f77201f) {
                c(Http1ExchangeCodec.f77186f);
            }
            this.d = true;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public final long read(Buffer buffer, long j2) throws IOException {
            buffer.getClass();
            if (j2 < 0) {
                b21.n(d21.g(j2, "byteCount < 0: "));
                return 0L;
            }
            if (this.d) {
                md.k("closed");
                return 0L;
            }
            if (this.f77201f) {
                return -1L;
            }
            long j3 = super.read(buffer, j2);
            if (j3 != -1) {
                return j3;
            }
            this.f77201f = true;
            c(Headers.d);
            return -1L;
        }
    }

    static {
        new Companion(null);
        Headers.f76915c.getClass();
        f77186f = Headers.Companion.a("OkHttp-Response-Body", "Truncated");
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, ExchangeCodec.Carrier carrier, BufferedSocket bufferedSocket) {
        carrier.getClass();
        bufferedSocket.getClass();
        this.f77187a = okHttpClient;
        this.f77188b = carrier;
        this.f77189c = bufferedSocket;
        this.f77190e = new HeadersReader(bufferedSocket.getSource());
    }

    public static final void k(Http1ExchangeCodec http1ExchangeCodec, ForwardingTimeout forwardingTimeout) {
        http1ExchangeCodec.getClass();
        Timeout timeout = forwardingTimeout.f77417e;
        Timeout$Companion$NONE$1 timeout$Companion$NONE$1 = Timeout.d;
        timeout$Companion$NONE$1.getClass();
        forwardingTimeout.f77417e = timeout$Companion$NONE$1;
        timeout.a();
        timeout.b();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void a() {
        this.f77189c.a().flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Source b(Response response) {
        boolean zA = HttpHeaders.a(response);
        Request request = response.f76984b;
        if (!zA) {
            return l(request.f76969a, 0L);
        }
        String strA = response.g.a("Transfer-Encoding");
        if (strA == null) {
            strA = null;
        }
        if ("chunked".equalsIgnoreCase(strA)) {
            HttpUrl httpUrl = request.f76969a;
            if (this.d == 4) {
                this.d = 5;
                return new ChunkedSource(this, httpUrl);
            }
            ct0.e(this.d, "state: ");
            return null;
        }
        long jE = _UtilJvmKt.e(response);
        if (jE != -1) {
            return l(request.f76969a, jE);
        }
        HttpUrl httpUrl2 = request.f76969a;
        if (this.d != 4) {
            ct0.e(this.d, "state: ");
            return null;
        }
        this.d = 5;
        this.f77188b.c();
        return new UnknownLengthSource(this, httpUrl2);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long c(Response response) {
        if (!HttpHeaders.a(response)) {
            return 0L;
        }
        String strA = response.g.a("Transfer-Encoding");
        if (strA == null) {
            strA = null;
        }
        if ("chunked".equalsIgnoreCase(strA)) {
            return -1L;
        }
        return _UtilJvmKt.e(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        this.f77188b.cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Sink d(Request request, long j2) {
        if ("chunked".equalsIgnoreCase(request.f76971c.a("Transfer-Encoding"))) {
            if (this.d == 1) {
                this.d = 2;
                return new ChunkedSink();
            }
            ct0.e(this.d, "state: ");
            return null;
        }
        if (j2 == -1) {
            md.k("Cannot stream a request body without chunked encoding or a known content length!");
            return null;
        }
        if (this.d == 1) {
            this.d = 2;
            return new KnownLengthSink();
        }
        ct0.e(this.d, "state: ");
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void e(Request request) {
        Proxy.Type type = this.f77188b.getD().f77007b.type();
        type.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(request.f76970b);
        sb.append(' ');
        HttpUrl httpUrl = request.f76969a;
        if (httpUrl.f() || type != Proxy.Type.HTTP) {
            sb.append(RequestLine.a(httpUrl));
        } else {
            sb.append(httpUrl);
        }
        sb.append(" HTTP/1.1");
        n(request.f76971c, sb.toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final boolean f() {
        return this.d == 6;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Response.Builder g(boolean z) throws IOException {
        HeadersReader headersReader = this.f77190e;
        int i2 = this.d;
        if (i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3) {
            ct0.e(this.d, "state: ");
            return null;
        }
        try {
            StatusLine.Companion companion = StatusLine.d;
            String strZ = headersReader.f77184a.Z(headersReader.f77185b);
            headersReader.f77185b -= (long) strZ.length();
            companion.getClass();
            StatusLine statusLineA = StatusLine.Companion.a(strZ);
            int i3 = statusLineA.f77182b;
            Response.Builder builder = new Response.Builder();
            Protocol protocol = statusLineA.f77181a;
            protocol.getClass();
            builder.f76993b = protocol;
            builder.f76994c = i3;
            String str = statusLineA.f77183c;
            str.getClass();
            builder.d = str;
            Headers.Builder builder2 = new Headers.Builder();
            while (true) {
                String strZ2 = headersReader.f77184a.Z(headersReader.f77185b);
                headersReader.f77185b -= (long) strZ2.length();
                if (strZ2.length() == 0) {
                    break;
                }
                builder2.b(strZ2);
            }
            builder.f76996f = builder2.d().h();
            if (z && i3 == 100) {
                return null;
            }
            if (i3 == 100) {
                this.d = 3;
                return builder;
            }
            if (102 > i3 || i3 >= 200) {
                this.d = 4;
                return builder;
            }
            this.d = 3;
            return builder;
        } catch (EOFException e2) {
            throw new IOException(tr.g("unexpected end of stream on ", this.f77188b.getD().f77006a.f76817i.h()), e2);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void h() {
        this.f77189c.a().flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Socket i() {
        return this.f77189c;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    /* JADX INFO: renamed from: j, reason: from getter */
    public final ExchangeCodec.Carrier getF77188b() {
        return this.f77188b;
    }

    public final Source l(HttpUrl httpUrl, long j2) {
        if (this.d == 4) {
            this.d = 5;
            return new FixedLengthSource(this, httpUrl, j2);
        }
        ct0.e(this.d, "state: ");
        return null;
    }

    public final void m(Response response) {
        long jE = _UtilJvmKt.e(response);
        if (jE == -1) {
            return;
        }
        Source sourceL = l(response.f76984b.f76969a, jE);
        _UtilJvmKt.g(sourceL, Integer.MAX_VALUE);
        ((FixedLengthSource) sourceL).close();
    }

    public final void n(Headers headers, String str) {
        headers.getClass();
        if (this.d != 0) {
            ct0.e(this.d, "state: ");
            return;
        }
        BufferedSocket bufferedSocket = this.f77189c;
        bufferedSocket.a().r0(str).r0("\r\n");
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            bufferedSocket.a().r0(headers.f(i2)).r0(": ").r0(headers.m(i2)).r0("\r\n");
        }
        bufferedSocket.a().r0("\r\n");
        this.d = 1;
    }
}
