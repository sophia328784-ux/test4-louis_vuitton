package okhttp3;

import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.b21;
import defpackage.ct0;
import defpackage.md;
import java.io.Closeable;
import kotlin.Metadata;
import okhttp3.internal.connection.Exchange;
import okio.Socket;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u001eB\u008d\u0001\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0000\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0000\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lokhttp3/Response;", "Ljava/io/Closeable;", "Lokhttp3/Request;", "request", "Lokhttp3/Protocol;", "protocol", "", "message", "", m.v, "Lokhttp3/Handshake;", "handshake", "Lokhttp3/Headers;", "headers", "Lokhttp3/ResponseBody;", "body", "Lokio/Socket;", "socket", "networkResponse", "cacheResponse", "priorResponse", "", "sentRequestAtMillis", "receivedResponseAtMillis", "Lokhttp3/internal/connection/Exchange;", "exchange", "Lokhttp3/TrailersSource;", "trailersSource", "<init>", "(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokio/Socket;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/Exchange;Lokhttp3/TrailersSource;)V", "Builder", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Response implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Request f76984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Protocol f76985c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f76986e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Handshake f76987f;
    public final Headers g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ResponseBody f76988h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Socket f76989i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Response f76990j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Response f76991k;
    public final Response l;
    public final long m;
    public final long n;
    public final Exchange o;
    public final TrailersSource p;
    public CacheControl q;
    public final boolean r;

    public Response(Request request, Protocol protocol, String str, int i2, Handshake handshake, Headers headers, ResponseBody responseBody, Socket socket, Response response, Response response2, Response response3, long j2, long j3, Exchange exchange, TrailersSource trailersSource) {
        request.getClass();
        protocol.getClass();
        str.getClass();
        headers.getClass();
        responseBody.getClass();
        trailersSource.getClass();
        this.f76984b = request;
        this.f76985c = protocol;
        this.d = str;
        this.f76986e = i2;
        this.f76987f = handshake;
        this.g = headers;
        this.f76988h = responseBody;
        this.f76989i = socket;
        this.f76990j = response;
        this.f76991k = response2;
        this.l = response3;
        this.m = j2;
        this.n = j3;
        this.o = exchange;
        this.p = trailersSource;
        boolean z = false;
        if (200 <= i2 && i2 < 300) {
            z = true;
        }
        this.r = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f76988h.close();
    }

    public final CacheControl h() {
        CacheControl cacheControl = this.q;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl.n.getClass();
        CacheControl cacheControlA = CacheControl.Companion.a(this.g);
        this.q = cacheControlA;
        return cacheControlA;
    }

    public final String toString() {
        return "Response{protocol=" + this.f76985c + ", code=" + this.f76986e + ", message=" + this.d + ", url=" + this.f76984b.f76969a + '}';
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/Response$Builder;", "", "<init>", "()V", "Lokhttp3/Response;", Payload.RESPONSE, "(Lokhttp3/Response;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Request f76992a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Protocol f76993b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f76994c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Handshake f76995e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Headers.Builder f76996f;
        public ResponseBody g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Socket f76997h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Response f76998i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Response f76999j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Response f77000k;
        public long l;
        public long m;
        public Exchange n;
        public TrailersSource o;

        public Builder(Response response) {
            response.getClass();
            this.f76994c = -1;
            this.g = ResponseBody.EMPTY;
            this.o = TrailersSource.f77009a;
            this.f76992a = response.f76984b;
            this.f76993b = response.f76985c;
            this.f76994c = response.f76986e;
            this.d = response.d;
            this.f76995e = response.f76987f;
            this.f76996f = response.g.h();
            this.g = response.f76988h;
            this.f76997h = response.f76989i;
            this.f76998i = response.f76990j;
            this.f76999j = response.f76991k;
            this.f77000k = response.l;
            this.l = response.m;
            this.m = response.n;
            this.n = response.o;
            this.o = response.p;
        }

        public static void b(String str, Response response) {
            if (response != null) {
                if (response.f76990j != null) {
                    b21.n(str.concat(".networkResponse != null"));
                } else if (response.f76991k != null) {
                    b21.n(str.concat(".cacheResponse != null"));
                } else {
                    if (response.l == null) {
                        return;
                    }
                    b21.n(str.concat(".priorResponse != null"));
                }
            }
        }

        public final Response a() {
            int i2 = this.f76994c;
            if (i2 < 0) {
                ct0.e(this.f76994c, "code < 0: ");
                return null;
            }
            Request request = this.f76992a;
            if (request == null) {
                md.k("request == null");
                return null;
            }
            Protocol protocol = this.f76993b;
            if (protocol == null) {
                md.k("protocol == null");
                return null;
            }
            String str = this.d;
            if (str != null) {
                return new Response(request, protocol, str, i2, this.f76995e, this.f76996f.d(), this.g, this.f76997h, this.f76998i, this.f76999j, this.f77000k, this.l, this.m, this.n, this.o);
            }
            md.k("message == null");
            return null;
        }

        public Builder() {
            this.f76994c = -1;
            this.g = ResponseBody.EMPTY;
            this.o = TrailersSource.f77009a;
            this.f76996f = new Headers.Builder();
        }
    }
}
