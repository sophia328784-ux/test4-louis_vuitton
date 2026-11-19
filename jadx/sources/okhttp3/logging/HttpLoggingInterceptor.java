package okhttp3.logging;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.n00;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.collections.EmptySet;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.IsProbablyUtf8Kt;
import okhttp3.internal.UnreadableResponseBody;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\bB\u0013\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "logger", "<init>", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "Level", "Logger", "Companion", "logging-interceptor"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HttpLoggingInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f77378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile EmptySet f77379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile EmptySet f77380c;
    public volatile Level d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Companion;", "", "logging-interceptor"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Level;", "", "NONE", "BASIC", "HEADERS", "BODY", "logging-interceptor"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Level {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Level[] $VALUES;
        public static final Level BASIC;
        public static final Level BODY;
        public static final Level HEADERS;
        public static final Level NONE;

        static {
            Level level = new Level("NONE", 0);
            NONE = level;
            Level level2 = new Level("BASIC", 1);
            BASIC = level2;
            Level level3 = new Level("HEADERS", 2);
            HEADERS = level3;
            Level level4 = new Level("BODY", 3);
            BODY = level4;
            Level[] levelArr = {level, level2, level3, level4};
            $VALUES = levelArr;
            $ENTRIES = EnumEntriesKt.a(levelArr);
        }

        public static Level valueOf(String str) {
            return (Level) Enum.valueOf(Level.class, str);
        }

        public static Level[] values() {
            return (Level[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "", "logging-interceptor"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Logger {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Logger f77381a = new Logger() { // from class: okhttp3.logging.HttpLoggingInterceptor$Logger$Companion$DefaultLogger
            @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
            public final void a(String str) {
                Platform.f77312a.getClass();
                Platform.f77313b.e(4, str, null);
            }
        };

        void a(String str);
    }

    static {
        new Companion(null);
    }

    public HttpLoggingInterceptor(Logger logger) {
        logger.getClass();
        this.f77378a = logger;
        EmptySet emptySet = EmptySet.f71770b;
        this.f77379b = emptySet;
        this.f77380c = emptySet;
        this.d = Level.NONE;
    }

    public final void a(Headers headers, int i2) {
        EmptySet emptySet = this.f77379b;
        headers.f(i2);
        emptySet.getClass();
        String strM = headers.m(i2);
        this.f77378a.a(headers.f(i2) + ": " + strM);
    }

    /* JADX WARN: Code duplicated, block: B:142:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00fa A[LOOP:0: B:41:0x00f8->B:42:0x00fa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x0198  */
    /* JADX WARN: Code duplicated, block: B:81:0x021f  */
    /* JADX WARN: Instruction removed from duplicated block: B:81:0x021f, please report this as an issue */
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws Exception {
        boolean z;
        String str;
        Long lValueOf;
        Charset charsetA;
        int size;
        int i2;
        Long lValueOf2;
        Charset charsetA2;
        Level level = this.d;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        if (level == Level.NONE) {
            return realInterceptorChain.b(request);
        }
        boolean z2 = true;
        boolean z3 = level == Level.BODY;
        if (!z3 && level != Level.HEADERS) {
            z2 = false;
        }
        RequestBody requestBody = request.d;
        RealConnection realConnectionD = realInterceptorChain.d();
        StringBuilder sb = new StringBuilder("--> ");
        sb.append(request.f76970b);
        sb.append(' ');
        HttpUrl httpUrl = request.f76969a;
        httpUrl.getClass();
        this.f77380c.getClass();
        sb.append(httpUrl.f76925i);
        String str2 = " ";
        sb.append(realConnectionD != null ? " " + realConnectionD.f77130h : "");
        String string = sb.toString();
        String str3 = " (";
        if (!z2 && requestBody != null) {
            StringBuilder sbU = n00.u(string, " (");
            sbU.append(requestBody.a());
            sbU.append("-byte body)");
            string = sbU.toString();
        }
        this.f77378a.a(string);
        if (z2) {
            Headers headers = request.f76971c;
            if (requestBody != null) {
                MediaType f76943e = requestBody.getF76943e();
                z = z3;
                if (f76943e != null && headers.a("Content-Type") == null) {
                    this.f77378a.a("Content-Type: " + f76943e);
                }
                if (requestBody.a() != -1 && headers.a("Content-Length") == null) {
                    this.f77378a.a("Content-Length: " + requestBody.a());
                }
                size = headers.size();
                for (i2 = 0; i2 < size; i2++) {
                    a(headers, i2);
                }
                if (z || requestBody == null) {
                    this.f77378a.a("--> END " + request.f76970b);
                } else {
                    String strA = request.f76971c.a("Content-Encoding");
                    if (strA != null && !strA.equalsIgnoreCase("identity") && !strA.equalsIgnoreCase("gzip")) {
                        this.f77378a.a("--> END " + request.f76970b + " (encoded body omitted)");
                    } else if (requestBody.d()) {
                        this.f77378a.a("--> END " + request.f76970b + " (one-shot body omitted)");
                    } else {
                        Buffer buffer = new Buffer();
                        requestBody.e(buffer);
                        if ("gzip".equalsIgnoreCase(headers.a("Content-Encoding"))) {
                            lValueOf2 = Long.valueOf(buffer.f77390c);
                            GzipSource gzipSource = new GzipSource(buffer);
                            try {
                                buffer = new Buffer();
                                buffer.u0(gzipSource);
                                gzipSource.close();
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    CloseableKt.a(gzipSource, th);
                                    throw th2;
                                }
                            }
                        } else {
                            lValueOf2 = null;
                        }
                        MediaType f76943e2 = requestBody.getF76943e();
                        if (f76943e2 != null) {
                            MediaType.Companion companion = MediaType.f76933e;
                            charsetA2 = f76943e2.a(null);
                            if (charsetA2 == null) {
                                charsetA2 = Charsets.UTF_8;
                            }
                        } else {
                            charsetA2 = Charsets.UTF_8;
                        }
                        this.f77378a.a("");
                        boolean zA = IsProbablyUtf8Kt.a(buffer);
                        Logger logger = this.f77378a;
                        if (!zA) {
                            logger.a("--> END " + request.f76970b + " (binary " + requestBody.a() + "-byte body omitted)");
                        } else if (lValueOf2 != null) {
                            logger.a("--> END " + request.f76970b + str3 + buffer.f77390c + "-byte, " + lValueOf2.longValue() + "-gzipped-byte body)");
                        } else {
                            logger.a(buffer.i1(charsetA2));
                            this.f77378a.a("--> END " + request.f76970b + str3 + requestBody.a() + "-byte body)");
                        }
                    }
                }
            } else {
                z = z3;
                z2 = z2;
                str2 = " ";
            }
            size = headers.size();
            while (i2 < size) {
                a(headers, i2);
            }
            if (z) {
                this.f77378a.a("--> END " + request.f76970b);
            } else {
                this.f77378a.a("--> END " + request.f76970b);
            }
        } else {
            z = z3;
            z2 = z2;
            str2 = " ";
            str3 = " (";
        }
        long jNanoTime = System.nanoTime();
        try {
            Response responseB = realInterceptorChain.b(request);
            long jNanoTime2 = (System.nanoTime() - jNanoTime) / 1000000;
            ResponseBody responseBody = responseB.f76988h;
            responseBody.getClass();
            long g = responseBody.getG();
            String str4 = g != -1 ? g + "-byte" : "unknown-length";
            Logger logger2 = this.f77378a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("<-- " + responseB.f76986e);
            if (responseB.d.length() > 0) {
                str = str2;
                sb2.append(str + responseB.d);
            } else {
                str = str2;
            }
            StringBuilder sb3 = new StringBuilder(str);
            HttpUrl httpUrl2 = responseB.f76984b.f76969a;
            httpUrl2.getClass();
            this.f77380c.getClass();
            sb3.append(httpUrl2.f76925i);
            sb3.append(str3);
            sb3.append(jNanoTime2);
            sb3.append(NBSSpanMetricUnit.Millisecond);
            sb2.append(sb3.toString());
            if (!z2) {
                sb2.append(", " + str4 + " body");
            }
            sb2.append(")");
            logger2.a(sb2.toString());
            if (z2) {
                Headers headers2 = responseB.g;
                int size2 = headers2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    a(headers2, i3);
                }
                if (z && HttpHeaders.a(responseB)) {
                    String strA2 = responseB.g.a("Content-Encoding");
                    if (strA2 != null && !strA2.equalsIgnoreCase("identity") && !strA2.equalsIgnoreCase("gzip")) {
                        this.f77378a.a("<-- END HTTP (encoded body omitted)");
                        return responseB;
                    }
                    MediaType f77004f = responseB.f76988h.getF77014f();
                    if (f77004f != null && Intrinsics.c(f77004f.f76936b, "text") && Intrinsics.c(f77004f.f76937c, "event-stream")) {
                        this.f77378a.a("<-- END HTTP (streaming)");
                        return responseB;
                    }
                    if (responseBody instanceof UnreadableResponseBody) {
                        this.f77378a.a("<-- END HTTP (unreadable body)");
                        return responseB;
                    }
                    BufferedSource f77005h = responseBody.getF77005h();
                    f77005h.request(Long.MAX_VALUE);
                    long jNanoTime3 = (System.nanoTime() - jNanoTime) / 1000000;
                    Buffer f77441c = f77005h.getF77441c();
                    if ("gzip".equalsIgnoreCase(headers2.a("Content-Encoding"))) {
                        lValueOf = Long.valueOf(f77441c.f77390c);
                        GzipSource gzipSource2 = new GzipSource(f77441c.clone());
                        try {
                            f77441c = new Buffer();
                            f77441c.u0(gzipSource2);
                            gzipSource2.close();
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                CloseableKt.a(gzipSource2, th3);
                                throw th4;
                            }
                        }
                    } else {
                        lValueOf = null;
                    }
                    MediaType f77004f2 = responseBody.getF77014f();
                    if (f77004f2 != null) {
                        MediaType.Companion companion2 = MediaType.f76933e;
                        charsetA = f77004f2.a(null);
                        if (charsetA == null) {
                            charsetA = Charsets.UTF_8;
                        }
                    } else {
                        charsetA = Charsets.UTF_8;
                    }
                    if (!IsProbablyUtf8Kt.a(f77441c)) {
                        this.f77378a.a("");
                        Logger logger3 = this.f77378a;
                        StringBuilder sbQ = pq0.q(jNanoTime3, "<-- END HTTP (", "ms, binary ");
                        sbQ.append(f77441c.f77390c);
                        sbQ.append("-byte body omitted)");
                        logger3.a(sbQ.toString());
                        return responseB;
                    }
                    if (g != 0) {
                        this.f77378a.a("");
                        this.f77378a.a(f77441c.clone().i1(charsetA));
                    }
                    Logger logger4 = this.f77378a;
                    StringBuilder sb4 = new StringBuilder();
                    StringBuilder sbQ2 = pq0.q(jNanoTime3, "<-- END HTTP (", "ms, ");
                    sbQ2.append(f77441c.f77390c);
                    sbQ2.append("-byte");
                    sb4.append(sbQ2.toString());
                    if (lValueOf != null) {
                        sb4.append(", " + lValueOf.longValue() + "-gzipped-byte");
                    }
                    sb4.append(" body)");
                    logger4.a(sb4.toString());
                    return responseB;
                }
                this.f77378a.a("<-- END HTTP");
            }
            return responseB;
        } catch (Exception e2) {
            long jNanoTime4 = (System.nanoTime() - jNanoTime) / 1000000;
            Logger logger5 = this.f77378a;
            String str5 = "<-- HTTP FAILED: " + e2 + JwtParser.SEPARATOR_CHAR;
            StringBuilder sb5 = new StringBuilder(str2);
            HttpUrl httpUrl3 = request.f76969a;
            httpUrl3.getClass();
            this.f77380c.getClass();
            sb5.append(httpUrl3.f76925i);
            sb5.append(str3);
            sb5.append(jNanoTime4);
            sb5.append("ms)");
            logger5.a(str5.concat(sb5.toString()));
            throw e2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HttpLoggingInterceptor() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ HttpLoggingInterceptor(Logger logger, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Logger.f77381a : logger);
    }
}
