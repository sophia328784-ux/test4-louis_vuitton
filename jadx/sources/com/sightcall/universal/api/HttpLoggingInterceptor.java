package com.sightcall.universal.api;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sightcall.pratik.logs.Logger;
import defpackage.fc;
import defpackage.o60;
import defpackage.r81;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.HttpHeaders;
import okio.Buffer;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes3.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    private static final Charset UTF8 = StandardCharsets.UTF_8;
    private volatile Level level = Level.BODY;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    private static void appendFirstHeaders(StringBuilder sb, RequestBody requestBody) throws IOException {
        if (requestBody.getF76981c() != null) {
            sb.append('\n');
            sb.append("Content-Type: ");
            sb.append(requestBody.getF76981c());
        }
        if (requestBody.a() != -1) {
            sb.append('\n');
            sb.append("Content-Length: ");
            sb.append(requestBody.a());
        }
    }

    private static void appendHeaders(StringBuilder sb, okhttp3.Headers headers) {
        if (headers == null) {
            return;
        }
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strF = headers.f(i2);
            if (!strF.equals(Headers.Authorization.Token) && !"Content-Type".equalsIgnoreCase(strF) && !"Content-Length".equalsIgnoreCase(strF)) {
                sb.append('\n');
                sb.append(strF);
                sb.append(": ");
                sb.append(headers.m(i2));
            }
        }
    }

    private boolean bodyEncoded(okhttp3.Headers headers) {
        String strA = headers != null ? headers.a("Content-Encoding") : null;
        return (strA == null || strA.equalsIgnoreCase("identity")) ? false : true;
    }

    private static Charset getCharset(MediaType mediaType) {
        return mediaType != null ? mediaType.a(UTF8) : UTF8;
    }

    private static boolean isPlaintext(Buffer buffer) {
        try {
            Buffer buffer2 = new Buffer();
            long j2 = buffer.f77390c;
            buffer.u(buffer2, 0L, j2 < 64 ? j2 : 64L);
            for (int i2 = 0; i2 < 16 && !buffer2.Z0(); i2++) {
                int iI0 = buffer2.i0();
                if (Character.isISOControl(iI0) && !Character.isWhitespace(iI0)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
        }
    }

    private static void log(String str) {
        Logger.INSTANCE.i(str, null);
    }

    public Level getLevel() {
        return this.level;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws Exception {
        boolean z;
        boolean z2;
        char c2;
        char c3;
        StringBuilder sb = new StringBuilder(1024);
        Level level = this.level;
        Request f77173e = chain.getF77173e();
        if (level == Level.NONE) {
            return chain.b(f77173e);
        }
        boolean z3 = level == Level.BODY;
        boolean z4 = z3 || level == Level.HEADERS;
        RequestBody requestBody = f77173e.d;
        boolean z5 = requestBody != null;
        RealConnection realConnectionD = chain.d();
        sb.append("--> ");
        sb.append(f77173e.f76970b);
        sb.append(' ');
        sb.append(f77173e.f76969a);
        sb.append(' ');
        sb.append(realConnectionD != null ? realConnectionD.f77130h : "");
        if (!z4 && z5) {
            sb.append("\n (");
            sb.append(requestBody.a());
            sb.append("-byte body)");
        }
        char c4 = '\n';
        if (z4) {
            if (z5) {
                appendFirstHeaders(sb, requestBody);
            }
            appendHeaders(sb, f77173e.f76971c);
            if (!z3 || !z5) {
                z = z4;
                z2 = z3;
                sb.append('\n');
                sb.append("--> END ");
                sb.append(f77173e.f76970b);
            } else if (bodyEncoded(f77173e.f76971c)) {
                sb.append('\n');
                sb.append("--> END ");
                sb.append(f77173e.f76970b);
                sb.append(" (encoded body omitted)");
                z = z4;
                z2 = z3;
            } else if (requestBody instanceof MultipartBody) {
                MultipartBody multipartBody = (MultipartBody) requestBody;
                Iterator it = multipartBody.d.iterator();
                while (it.hasNext()) {
                    MultipartBody.Part part = (MultipartBody.Part) it.next();
                    boolean z6 = z4;
                    sb.append("\n--");
                    sb.append(multipartBody.f76942c.C());
                    RequestBody requestBody2 = part.f76950b;
                    boolean z7 = requestBody2 != null;
                    if (z7) {
                        appendFirstHeaders(sb, requestBody2);
                    }
                    boolean z8 = z3;
                    appendHeaders(sb, part.f76949a);
                    if (!z7) {
                        sb.append('\n');
                        c3 = '\n';
                    } else if (bodyEncoded(part.f76949a)) {
                        sb.append('\n');
                        sb.append("(encoded body omitted)");
                        c3 = '\n';
                    } else {
                        Buffer buffer = new Buffer();
                        requestBody2.e(buffer);
                        if (isPlaintext(buffer)) {
                            long j2 = buffer.f77390c;
                            int length = sb.length();
                            long j3 = ((long) length) + j2 > 3072 ? 3072 - length : j2;
                            sb.append('\n');
                            sb.append(buffer.G(j3, getCharset(requestBody2.getF76981c())));
                            c3 = '\n';
                            sb.append('\n');
                            sb.append("(");
                            sb.append(requestBody2.a());
                            sb.append("-byte body)");
                        } else {
                            c3 = '\n';
                            sb.append('\n');
                            sb.append("(binary ");
                            sb.append(requestBody2.a());
                            sb.append("-byte body omitted)");
                        }
                    }
                    c4 = c3;
                    z4 = z6;
                    it = it;
                    z3 = z8;
                }
                z = z4;
                z2 = z3;
                char c5 = c4;
                sb.append(c5);
                sb.append("--");
                sb.append(multipartBody.f76942c.C());
                sb.append("--");
                sb.append(c5);
                sb.append("--> END ");
                sb.append(f77173e.f76970b);
                sb.append(" (");
                sb.append(requestBody.a());
                sb.append("-byte body)");
            } else {
                z = z4;
                z2 = z3;
                Buffer buffer2 = new Buffer();
                requestBody.e(buffer2);
                if (isPlaintext(buffer2)) {
                    long j4 = buffer2.f77390c;
                    int length2 = sb.length();
                    long j5 = ((long) length2) + j4 > 3072 ? 3072 - length2 : j4;
                    sb.append('\n');
                    sb.append(buffer2.G(j5, getCharset(requestBody.getF76981c())));
                    sb.append('\n');
                    sb.append("--> END ");
                    sb.append(f77173e.f76970b);
                    sb.append(" (");
                    sb.append(requestBody.a());
                    sb.append("-byte body)");
                } else {
                    sb.append('\n');
                    sb.append("--> END ");
                    sb.append(f77173e.f76970b);
                    sb.append(" (binary ");
                    sb.append(requestBody.a());
                    sb.append("-byte body omitted)");
                }
            }
        } else {
            z = z4;
            z2 = z3;
        }
        log(sb.toString());
        sb.setLength(0);
        long jNanoTime = System.nanoTime();
        try {
            Response responseB = chain.b(f77173e);
            long jNanoTime2 = (System.nanoTime() - jNanoTime) / 1000000;
            ResponseBody responseBody = responseB.f76988h;
            long g = responseBody.getG();
            String str = g != -1 ? g + "-byte" : "unknown-length";
            sb.append('\n');
            sb.append("<-- ");
            sb.append(responseB.f76986e);
            sb.append(responseB.d.isEmpty() ? "" : " " + responseB.d);
            sb.append(' ');
            sb.append(responseB.f76984b.f76969a);
            sb.append(" (");
            sb.append(jNanoTime2);
            sb.append(NBSSpanMetricUnit.Millisecond);
            sb.append(z ? "" : fc.h(", ", str, " body"));
            sb.append(')');
            if (z) {
                okhttp3.Headers headers = responseB.g;
                int size = headers.size();
                for (int i2 = 0; i2 < size; i2++) {
                    sb.append('\n');
                    sb.append(headers.f(i2));
                    sb.append(": ");
                    sb.append(headers.m(i2));
                }
                if (!z2 || !HttpHeaders.a(responseB)) {
                    sb.append('\n');
                    sb.append("<-- END HTTP");
                } else if (bodyEncoded(responseB.g)) {
                    sb.append('\n');
                    sb.append("<-- END HTTP (encoded body omitted)");
                } else {
                    BufferedSource f77005h = responseBody.getF77180h();
                    f77005h.request(Long.MAX_VALUE);
                    Buffer f77441c = f77005h.getF77441c();
                    if (!isPlaintext(f77441c)) {
                        sb.append('\n');
                        sb.append("<-- END HTTP (binary ");
                        log(o60.j(f77441c.f77390c, "-byte body omitted)", sb));
                        return responseB;
                    }
                    if (g != 0) {
                        Buffer bufferClone = f77441c.clone();
                        long j6 = bufferClone.f77390c;
                        int length3 = sb.length();
                        if (((long) length3) + j6 > 3072) {
                            j6 = 3072 - length3;
                        }
                        c2 = '\n';
                        sb.append('\n');
                        sb.append(bufferClone.G(j6, getCharset(responseBody.getF77014f())));
                    } else {
                        c2 = '\n';
                    }
                    sb.append(c2);
                    sb.append("<-- END HTTP (");
                    sb.append(f77441c.f77390c);
                    sb.append("-byte body)");
                }
            }
            log(sb.toString());
            return responseB;
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder("<-- HTTP FAILED: ");
            sb2.append(f77173e.f76970b);
            sb2.append(' ');
            sb2.append(f77173e.f76969a);
            sb2.append(' ');
            sb2.append(realConnectionD != null ? realConnectionD.f77130h : Protocol.HTTP_1_1);
            sb2.append(' ');
            sb2.append(e2);
            log(sb2.toString());
            throw e2;
        }
    }

    public HttpLoggingInterceptor setLevel(Level level) {
        if (level != null) {
            this.level = level;
            return this;
        }
        r81.d("level == null. Use Level.NONE instead.");
        return null;
    }
}
