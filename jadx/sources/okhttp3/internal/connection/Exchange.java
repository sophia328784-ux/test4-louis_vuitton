package okhttp3.internal.connection;

import defpackage.md;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketException;
import kotlin.Metadata;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Socket;
import okio.Source;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\n\u000bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lokhttp3/internal/connection/Exchange;", "", "Lokhttp3/internal/connection/RealCall;", "call", "Lokhttp3/internal/connection/ExchangeFinder;", "finder", "Lokhttp3/internal/http/ExchangeCodec;", "codec", "<init>", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V", "RequestBodySink", "ResponseBodySource", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Exchange {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RealCall f77097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExchangeFinder f77098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExchangeCodec f77099c;
    public boolean d;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/internal/connection/Exchange$RequestBodySink;", "Lokio/ForwardingSink;", "Lokio/Sink;", "delegate", "", "contentLength", "", "isSocket", "<init>", "(Lokhttp3/internal/connection/Exchange;Lokio/Sink;JZ)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class RequestBodySink extends ForwardingSink {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f77100c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f77101e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f77102f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f77103h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Exchange f77104i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestBodySink(Exchange exchange, Sink sink, long j2, boolean z) {
            super(sink);
            sink.getClass();
            this.f77104i = exchange;
            this.f77100c = j2;
            this.d = z;
            this.g = z;
        }

        @Override // okio.ForwardingSink, okio.Sink
        public final void D(Buffer buffer, long j2) throws IOException {
            buffer.getClass();
            if (this.f77103h) {
                md.k("closed");
                return;
            }
            long j3 = this.f77100c;
            if (j3 != -1 && this.f77102f + j2 > j3) {
                throw new ProtocolException("expected " + this.f77100c + " bytes but received " + (this.f77102f + j2));
            }
            try {
                if (this.g) {
                    this.g = false;
                    this.f77104i.f77097a.eventListener.requestBodyStart(this.f77104i.f77097a);
                }
                this.f77416b.D(buffer, j2);
                this.f77102f += j2;
            } catch (IOException e2) {
                IOException iOExceptionC = c(e2);
                iOExceptionC.getClass();
                throw iOExceptionC;
            }
        }

        public final IOException c(IOException iOException) {
            if (this.f77101e) {
                return iOException;
            }
            this.f77101e = true;
            return Exchange.a(this.f77104i, this.f77102f, this.d, iOException, 4);
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f77103h) {
                return;
            }
            this.f77103h = true;
            long j2 = this.f77100c;
            if (j2 != -1 && this.f77102f != j2) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                c(null);
            } catch (IOException e2) {
                IOException iOExceptionC = c(e2);
                iOExceptionC.getClass();
                throw iOExceptionC;
            }
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
        public final void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e2) {
                IOException iOExceptionC = c(e2);
                iOExceptionC.getClass();
                throw iOExceptionC;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0080\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/internal/connection/Exchange$ResponseBodySource;", "Lokio/ForwardingSource;", "Lokio/Source;", "delegate", "", "contentLength", "", "isSocket", "<init>", "(Lokhttp3/internal/connection/Exchange;Lokio/Source;JZ)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class ResponseBodySource extends ForwardingSource {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f77105h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f77106i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f77107j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f77108k;
        public boolean l;
        public boolean m;
        public final /* synthetic */ Exchange n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(Exchange exchange, Source source, long j2, boolean z) {
            super(source);
            source.getClass();
            this.n = exchange;
            this.f77105h = j2;
            this.f77106i = z;
            this.f77108k = true;
            if (j2 == 0) {
                c(null);
            }
        }

        public final IOException c(IOException iOException) {
            if (this.l) {
                return iOException;
            }
            this.l = true;
            if (iOException == null && this.f77108k) {
                this.f77108k = false;
                this.n.f77097a.eventListener.responseBodyStart(this.n.f77097a);
            }
            return Exchange.a(this.n, this.f77107j, this.f77106i, iOException, 8);
        }

        @Override // okio.ForwardingSource, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.m) {
                return;
            }
            this.m = true;
            try {
                super.close();
                c(null);
            } catch (IOException e2) {
                IOException iOExceptionC = c(e2);
                iOExceptionC.getClass();
                throw iOExceptionC;
            }
        }

        @Override // okio.ForwardingSource, okio.Source
        public final long read(Buffer buffer, long j2) throws IOException {
            buffer.getClass();
            if (this.m) {
                md.k("closed");
                return 0L;
            }
            try {
                long j3 = delegate().read(buffer, j2);
                if (this.f77108k) {
                    this.f77108k = false;
                    this.n.f77097a.eventListener.responseBodyStart(this.n.f77097a);
                }
                if (j3 == -1) {
                    c(null);
                    return -1L;
                }
                long j4 = this.f77107j + j3;
                long j5 = this.f77105h;
                if (j5 != -1 && j4 > j5) {
                    throw new ProtocolException("expected " + this.f77105h + " bytes but received " + j4);
                }
                this.f77107j = j4;
                if (this.n.f77099c.f()) {
                    c(null);
                }
                return j3;
            } catch (IOException e2) {
                IOException iOExceptionC = c(e2);
                iOExceptionC.getClass();
                throw iOExceptionC;
            }
        }
    }

    public Exchange(RealCall realCall, ExchangeFinder exchangeFinder, ExchangeCodec exchangeCodec) {
        realCall.getClass();
        exchangeFinder.getClass();
        exchangeCodec.getClass();
        this.f77097a = realCall;
        this.f77098b = exchangeFinder;
        this.f77099c = exchangeCodec;
    }

    public static IOException a(Exchange exchange, long j2, boolean z, IOException iOException, int i2) {
        boolean z2 = false;
        boolean z3 = (i2 & 4) == 0;
        boolean z4 = (i2 & 8) == 0;
        if (iOException != null) {
            exchange.f(iOException);
        }
        if (z4) {
            RealCall realCall = exchange.f77097a;
            if (iOException != null) {
                realCall.eventListener.requestFailed(exchange.f77097a, iOException);
            } else {
                realCall.eventListener.requestBodyEnd(exchange.f77097a, j2);
            }
        }
        if (z3) {
            RealCall realCall2 = exchange.f77097a;
            if (iOException != null) {
                realCall2.eventListener.responseFailed(exchange.f77097a, iOException);
            } else {
                realCall2.eventListener.responseBodyEnd(exchange.f77097a, j2);
            }
        }
        boolean z5 = z3;
        RealCall realCall3 = exchange.f77097a;
        boolean z6 = z4 && !z;
        boolean z7 = (z5 == 0 || z) ? false : true;
        if (z4 && z) {
            z2 = true;
        }
        return realCall3.f(exchange, z6, z7, z5 && z, z2, iOException);
    }

    public final Sink b(Request request) {
        RequestBody requestBody = request.d;
        requestBody.getClass();
        long jA = requestBody.a();
        this.f77097a.eventListener.requestBodyStart(this.f77097a);
        return new RequestBodySink(this, this.f77099c.d(request, jA), jA, false);
    }

    public final RealConnection c() {
        ExchangeCodec.Carrier carrierJ = this.f77099c.j();
        RealConnection realConnection = carrierJ instanceof RealConnection ? (RealConnection) carrierJ : null;
        if (realConnection != null) {
            return realConnection;
        }
        md.k("no connection for CONNECT tunnels");
        return null;
    }

    public final RealResponseBody d(Response response) throws IOException {
        Exchange exchange;
        try {
            String strA = response.g.a("Content-Type");
            if (strA == null) {
                strA = null;
            }
            long jC = this.f77099c.c(response);
            exchange = this;
            try {
                return new RealResponseBody(strA, jC, new RealBufferedSource(new ResponseBodySource(exchange, this.f77099c.b(response), jC, false)));
            } catch (IOException e2) {
                e = e2;
                IOException iOException = e;
                exchange.f77097a.eventListener.responseFailed(exchange.f77097a, iOException);
                exchange.f(iOException);
                throw iOException;
            }
        } catch (IOException e3) {
            e = e3;
            exchange = this;
        }
    }

    public final Response.Builder e(boolean z) throws IOException {
        try {
            Response.Builder builderG = this.f77099c.g(z);
            if (builderG == null) {
                return builderG;
            }
            builderG.n = this;
            return builderG;
        } catch (IOException e2) {
            this.f77097a.eventListener.responseFailed(this.f77097a, e2);
            f(e2);
            throw e2;
        }
    }

    public final void f(IOException iOException) {
        this.d = true;
        this.f77099c.j().e(this.f77097a, iOException);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [okhttp3.internal.connection.Exchange$upgradeToSocket$1] */
    public final Exchange$upgradeToSocket$1 g() throws SocketException {
        RealCall realCall = this.f77097a;
        if (realCall.l) {
            md.k("Check failed.");
            return null;
        }
        realCall.l = true;
        realCall.g.j();
        synchronized (realCall) {
            if (realCall.t == null) {
                throw new IllegalStateException("Check failed.");
            }
            if (realCall.p || realCall.q) {
                throw new IllegalStateException("Check failed.");
            }
            if (realCall.n) {
                throw new IllegalStateException("Check failed.");
            }
            if (!realCall.o) {
                throw new IllegalStateException("Check failed.");
            }
            realCall.o = false;
            realCall.p = true;
            realCall.q = true;
        }
        ExchangeCodec.Carrier carrierJ = this.f77099c.j();
        carrierJ.getClass();
        RealConnection realConnection = (RealConnection) carrierJ;
        realConnection.f77129f.setSoTimeout(0);
        realConnection.c();
        return new Socket() { // from class: okhttp3.internal.connection.Exchange$upgradeToSocket$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Exchange.RequestBodySink f77109b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Exchange.ResponseBodySource f77110c;

            {
                ExchangeCodec exchangeCodec = this.d.f77099c;
                this.f77109b = new Exchange.RequestBodySink(this.d, exchangeCodec.i().a(), -1L, true);
                this.f77110c = new Exchange.ResponseBodySource(this.d, exchangeCodec.i().getSource(), -1L, true);
            }

            @Override // okio.Socket
            public final Sink a() {
                return this.f77109b;
            }

            @Override // okio.Socket
            public final void cancel() {
                this.d.f77099c.cancel();
            }

            @Override // okio.Socket
            public final Source getSource() {
                return this.f77110c;
            }
        };
    }

    public final void h(Request request) throws IOException {
        try {
            this.f77097a.eventListener.requestHeadersStart(this.f77097a);
            this.f77099c.e(request);
            this.f77097a.eventListener.requestHeadersEnd(this.f77097a, request);
        } catch (IOException e2) {
            this.f77097a.eventListener.requestFailed(this.f77097a, e2);
            f(e2);
            throw e2;
        }
    }
}
