package okhttp3;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.az;
import defpackage.db;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.Buffer$inputStream$1;
import okio.BufferedSource;
import okio.ByteString;
import okio.FileSystem;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Path;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Source;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0004\u0010\u0011\u0012\u0013B)\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB!\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\rB\u0019\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u000e\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\u000f¨\u0006\u0014"}, d2 = {"Lokhttp3/Cache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "Lokio/Path;", "directory", "", "maxSize", "Lokio/FileSystem;", "fileSystem", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(Lokio/Path;JLokio/FileSystem;Lokhttp3/internal/concurrent/TaskRunner;)V", "(Lokio/FileSystem;Lokio/Path;J)V", "Ljava/io/File;", "(Ljava/io/File;J)V", "RealCacheRequest", "Entry", "CacheResponseBody", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Cache implements Closeable, Flushable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f76821c = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DiskLruCache f76822b;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B'\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/Cache$CacheResponseBody;", "Lokhttp3/ResponseBody;", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "snapshot", "", CMSAttributeTableGenerator.CONTENT_TYPE, "contentLength", "<init>", "(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CacheResponseBody extends ResponseBody {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final DiskLruCache.Snapshot f76823f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f76824h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final RealBufferedSource f76825i;

        public CacheResponseBody(DiskLruCache.Snapshot snapshot, String str, String str2) {
            snapshot.getClass();
            this.f76823f = snapshot;
            this.g = str;
            this.f76824h = str2;
            this.f76825i = new RealBufferedSource(new ForwardingSource((Source) snapshot.d.get(1)) { // from class: okhttp3.Cache.CacheResponseBody.1
                @Override // okio.ForwardingSource, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                    this.f76823f.close();
                    super.close();
                }
            });
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength */
        public final long getG() {
            String str = this.f76824h;
            if (str == null) {
                return -1L;
            }
            byte[] bArr = _UtilCommonKt.f77016a;
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType */
        public final MediaType getF77014f() {
            String str = this.g;
            if (str != null) {
                MediaType.f76933e.getClass();
                try {
                    return MediaType.Companion.a(str);
                } catch (IllegalArgumentException unused) {
                }
            }
            return null;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source */
        public final BufferedSource getF77180h() {
            return this.f76825i;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lokhttp3/Cache$Companion;", "", "", "VERSION", "I", "ENTRY_METADATA", "ENTRY_BODY", "ENTRY_COUNT", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(HttpUrl httpUrl) {
            httpUrl.getClass();
            ByteString.Companion companion = ByteString.f77398e;
            String str = httpUrl.f76925i;
            companion.getClass();
            return ByteString.Companion.c(str).d("MD5").f();
        }

        public static int b(RealBufferedSource realBufferedSource) throws IOException {
            try {
                long jH = realBufferedSource.h();
                String strZ = realBufferedSource.Z(Long.MAX_VALUE);
                if (jH >= 0 && jH <= 2147483647L && strZ.length() <= 0) {
                    return (int) jH;
                }
                throw new IOException("expected an int but was \"" + jH + strZ + '\"');
            } catch (NumberFormatException e2) {
                az.o(e2.getMessage());
                return 0;
            }
        }

        public static Set c(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            for (int i2 = 0; i2 < size; i2++) {
                if ("Vary".equalsIgnoreCase(headers.f(i2))) {
                    String strM = headers.m(i2);
                    if (treeSet == null) {
                        StringCompanionObject.f71926a.getClass();
                        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
                        comparator.getClass();
                        treeSet = new TreeSet(comparator);
                    }
                    Iterator it = StringsKt.M(strM, new char[]{','}).iterator();
                    while (it.hasNext()) {
                        treeSet.add(StringsKt.a0((String) it.next()).toString());
                    }
                }
            }
            return treeSet == null ? EmptySet.f71770b : treeSet;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/Cache$RealCacheRequest;", "Lokhttp3/internal/cache/CacheRequest;", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "editor", "<init>", "(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class RealCacheRequest implements CacheRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DiskLruCache.Editor f76836a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Sink f76837b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AnonymousClass1 f76838c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Cache f76839e;

        /* JADX WARN: Type inference failed for: r0v1, types: [okhttp3.Cache$RealCacheRequest$1] */
        public RealCacheRequest(final Cache cache, DiskLruCache.Editor editor) {
            editor.getClass();
            this.f76839e = cache;
            this.f76836a = editor;
            Sink sinkD = editor.d(1);
            this.f76837b = sinkD;
            this.f76838c = new ForwardingSink(sinkD) { // from class: okhttp3.Cache.RealCacheRequest.1
                @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                    Cache cache2 = cache;
                    RealCacheRequest realCacheRequest = this;
                    synchronized (cache2) {
                        if (realCacheRequest.d) {
                            return;
                        }
                        realCacheRequest.d = true;
                        super.close();
                        this.f76836a.b();
                    }
                }
            };
        }

        @Override // okhttp3.internal.cache.CacheRequest
        /* JADX INFO: renamed from: a, reason: from getter */
        public final AnonymousClass1 getF76838c() {
            return this.f76838c;
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public final void abort() {
            synchronized (this.f76839e) {
                if (this.d) {
                    return;
                }
                this.d = true;
                _UtilCommonKt.b(this.f76837b);
                try {
                    this.f76836a.a();
                } catch (IOException unused) {
                }
            }
        }
    }

    public Cache(Path path, long j2, FileSystem fileSystem, TaskRunner taskRunner) {
        path.getClass();
        fileSystem.getClass();
        taskRunner.getClass();
        this.f76822b = new DiskLruCache(fileSystem, path, 201105, 2, j2, taskRunner);
    }

    public static void g(Response response, Response response2) {
        DiskLruCache.Editor editorK;
        Entry entry = new Entry(response2);
        ResponseBody responseBody = response.f76988h;
        responseBody.getClass();
        DiskLruCache.Snapshot snapshot = ((CacheResponseBody) responseBody).f76823f;
        try {
            editorK = snapshot.f77063e.k(snapshot.f77062c, snapshot.f77061b);
            if (editorK == null) {
                return;
            }
            try {
                entry.c(editorK);
                editorK.b();
            } catch (IOException unused) {
                if (editorK != null) {
                    try {
                        editorK.a();
                    } catch (IOException unused2) {
                    }
                }
            }
        } catch (IOException unused3) {
            editorK = null;
        }
    }

    public final Response c(Request request) {
        HttpUrl httpUrl = request.f76969a;
        f76821c.getClass();
        try {
            DiskLruCache.Snapshot snapshotM = this.f76822b.m(Companion.a(httpUrl));
            if (snapshotM != null) {
                try {
                    Entry entry = new Entry((Source) snapshotM.d.get(0));
                    Headers headers = entry.g;
                    String strA = headers.a("Content-Type");
                    String strA2 = headers.a("Content-Length");
                    Request request2 = new Request(entry.f76828a, entry.f76829b, entry.f76830c, null, 8, null);
                    Response.Builder builder = new Response.Builder();
                    builder.f76992a = request2;
                    Protocol protocol = entry.d;
                    protocol.getClass();
                    builder.f76993b = protocol;
                    builder.f76994c = entry.f76831e;
                    String str = entry.f76832f;
                    str.getClass();
                    builder.d = str;
                    builder.f76996f = headers.h();
                    builder.g = new CacheResponseBody(snapshotM, strA, strA2);
                    builder.f76995e = entry.f76833h;
                    builder.l = entry.f76834i;
                    builder.m = entry.f76835j;
                    Response responseA = builder.a();
                    if (Intrinsics.c(entry.f76828a, httpUrl) && Intrinsics.c(entry.f76830c, request.f76970b)) {
                        Headers headers2 = entry.f76829b;
                        headers2.getClass();
                        Set<String> setC = Companion.c(responseA.g);
                        if (!(setC instanceof Collection) || !setC.isEmpty()) {
                            for (String str2 : setC) {
                                if (!Intrinsics.c(headers2.n(str2), request.f76971c.n(str2))) {
                                }
                            }
                        }
                        return responseA;
                    }
                    _UtilCommonKt.b(responseA.f76988h);
                    return null;
                } catch (IOException unused) {
                    _UtilCommonKt.b(snapshotM);
                }
            }
        } catch (IOException unused2) {
        }
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f76822b.close();
    }

    public final CacheRequest d(Response response) {
        DiskLruCache.Editor editorK;
        Request request = response.f76984b;
        String str = request.f76970b;
        if (HttpMethod.a(str)) {
            try {
                e(request);
            } catch (IOException unused) {
            }
            return null;
        }
        if (str.equals("GET")) {
            f76821c.getClass();
            if (!Companion.c(response.g).contains(Browse.CAPS_WILDCARD)) {
                Entry entry = new Entry(response);
                try {
                    editorK = this.f76822b.k(DiskLruCache.B, Companion.a(request.f76969a));
                    if (editorK != null) {
                        try {
                            entry.c(editorK);
                            return new RealCacheRequest(this, editorK);
                        } catch (IOException unused2) {
                            if (editorK != null) {
                                try {
                                    editorK.a();
                                } catch (IOException unused3) {
                                }
                            }
                            return null;
                        }
                    }
                } catch (IOException unused4) {
                    editorK = null;
                }
            }
        }
        return null;
    }

    public final void e(Request request) {
        request.getClass();
        DiskLruCache diskLruCache = this.f76822b;
        Companion companion = f76821c;
        HttpUrl httpUrl = request.f76969a;
        companion.getClass();
        String strA = Companion.a(httpUrl);
        synchronized (diskLruCache) {
            strA.getClass();
            diskLruCache.n();
            diskLruCache.h();
            DiskLruCache.w(strA);
            DiskLruCache.Entry entry = (DiskLruCache.Entry) diskLruCache.l.get(strA);
            if (entry == null) {
                return;
            }
            diskLruCache.t(entry);
            if (diskLruCache.f77045j <= diskLruCache.f77042f) {
                diskLruCache.r = false;
            }
        }
    }

    @Override // java.io.Flushable
    public final void flush() {
        this.f76822b.flush();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(FileSystem fileSystem, Path path, long j2) {
        this(path, j2, fileSystem, TaskRunner.m);
        fileSystem.getClass();
        path.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(File file, long j2) {
        this(FileSystem.f77414b, Path.Companion.b(Path.f77432c, file), j2);
        file.getClass();
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001:\u0001\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\b¨\u0006\n"}, d2 = {"Lokhttp3/Cache$Entry;", "", "Lokio/Source;", "rawSource", "<init>", "(Lokio/Source;)V", "Lokhttp3/Response;", Payload.RESPONSE, "(Lokhttp3/Response;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Entry {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final String f76827k;
        public static final String l;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HttpUrl f76828a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Headers f76829b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f76830c;
        public final Protocol d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f76831e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f76832f;
        public final Headers g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Handshake f76833h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f76834i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f76835j;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lokhttp3/Cache$Entry$Companion;", "", "", "SENT_MILLIS", "Ljava/lang/String;", "RECEIVED_MILLIS", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
            Platform.f77312a.getClass();
            Platform.f77313b.getClass();
            f76827k = "OkHttp-Sent-Millis";
            Platform.f77313b.getClass();
            l = "OkHttp-Received-Millis";
        }

        public Entry(Source source) throws IOException {
            HttpUrl httpUrlC;
            TlsVersion tlsVersionA;
            source.getClass();
            try {
                RealBufferedSource realBufferedSource = new RealBufferedSource(source);
                String strZ = realBufferedSource.Z(Long.MAX_VALUE);
                HttpUrl.f76918j.getClass();
                try {
                    httpUrlC = HttpUrl.Companion.c(strZ);
                } catch (IllegalArgumentException unused) {
                    httpUrlC = null;
                }
                if (httpUrlC == null) {
                    IOException iOException = new IOException("Cache corruption for ".concat(strZ));
                    Platform.f77312a.getClass();
                    Platform.f77313b.e(5, "cache corruption", iOException);
                    throw iOException;
                }
                this.f76828a = httpUrlC;
                this.f76830c = realBufferedSource.Z(Long.MAX_VALUE);
                Headers.Builder builder = new Headers.Builder();
                Cache.f76821c.getClass();
                int iB = Companion.b(realBufferedSource);
                for (int i2 = 0; i2 < iB; i2++) {
                    builder.b(realBufferedSource.Z(Long.MAX_VALUE));
                }
                this.f76829b = builder.d();
                StatusLine.Companion companion = StatusLine.d;
                String strZ2 = realBufferedSource.Z(Long.MAX_VALUE);
                companion.getClass();
                StatusLine statusLineA = StatusLine.Companion.a(strZ2);
                this.d = statusLineA.f77181a;
                this.f76831e = statusLineA.f77182b;
                this.f76832f = statusLineA.f77183c;
                Headers.Builder builder2 = new Headers.Builder();
                Cache.f76821c.getClass();
                int iB2 = Companion.b(realBufferedSource);
                for (int i3 = 0; i3 < iB2; i3++) {
                    builder2.b(realBufferedSource.Z(Long.MAX_VALUE));
                }
                String str = f76827k;
                String strE = builder2.e(str);
                String str2 = l;
                String strE2 = builder2.e(str2);
                builder2.f(str);
                builder2.f(str2);
                this.f76834i = strE != null ? Long.parseLong(strE) : 0L;
                this.f76835j = strE2 != null ? Long.parseLong(strE2) : 0L;
                this.g = builder2.d();
                if (this.f76828a.f()) {
                    String strZ3 = realBufferedSource.Z(Long.MAX_VALUE);
                    if (strZ3.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + strZ3 + '\"');
                    }
                    CipherSuite cipherSuiteB = CipherSuite.f76862b.b(realBufferedSource.Z(Long.MAX_VALUE));
                    List listA = a(realBufferedSource);
                    List listA2 = a(realBufferedSource);
                    if (realBufferedSource.Z0()) {
                        tlsVersionA = TlsVersion.SSL_3_0;
                    } else {
                        TlsVersion.Companion companion2 = TlsVersion.INSTANCE;
                        String strZ4 = realBufferedSource.Z(Long.MAX_VALUE);
                        companion2.getClass();
                        tlsVersionA = TlsVersion.Companion.a(strZ4);
                    }
                    Handshake.f76911e.getClass();
                    tlsVersionA.getClass();
                    listA.getClass();
                    listA2.getClass();
                    this.f76833h = new Handshake(tlsVersionA, cipherSuiteB, _UtilJvmKt.j(listA2), new db(_UtilJvmKt.j(listA), 4));
                } else {
                    this.f76833h = null;
                }
                source.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(source, th);
                    throw th2;
                }
            }
        }

        public static List a(RealBufferedSource realBufferedSource) throws IOException {
            Cache.f76821c.getClass();
            int iB = Companion.b(realBufferedSource);
            if (iB == -1) {
                return EmptyList.f71768b;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(iB);
                for (int i2 = 0; i2 < iB; i2++) {
                    String strZ = realBufferedSource.Z(Long.MAX_VALUE);
                    Buffer buffer = new Buffer();
                    ByteString.f77398e.getClass();
                    ByteString byteStringA = ByteString.Companion.a(strZ);
                    if (byteStringA == null) {
                        throw new IOException("Corrupt certificate in cache entry");
                    }
                    buffer.l0(byteStringA);
                    arrayList.add(certificateFactory.generateCertificate(new Buffer$inputStream$1(buffer)));
                }
                return arrayList;
            } catch (CertificateException e2) {
                az.o(e2.getMessage());
                return null;
            }
        }

        public static void b(RealBufferedSink realBufferedSink, List list) throws IOException {
            try {
                realBufferedSink.F0(list.size());
                realBufferedSink.writeByte(10);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    byte[] encoded = ((Certificate) it.next()).getEncoded();
                    ByteString.Companion companion = ByteString.f77398e;
                    encoded.getClass();
                    realBufferedSink.r0(ByteString.Companion.d(companion, encoded).a());
                    realBufferedSink.writeByte(10);
                }
            } catch (CertificateEncodingException e2) {
                az.o(e2.getMessage());
            }
        }

        public final void c(DiskLruCache.Editor editor) throws Throwable {
            Handshake handshake;
            HttpUrl httpUrl = this.f76828a;
            Headers headers = this.g;
            Headers headers2 = this.f76829b;
            RealBufferedSink realBufferedSink = new RealBufferedSink(editor.d(0));
            try {
                realBufferedSink.r0(httpUrl.f76925i);
                realBufferedSink.writeByte(10);
                realBufferedSink.r0(this.f76830c);
                realBufferedSink.writeByte(10);
                realBufferedSink.F0(headers2.size());
                realBufferedSink.writeByte(10);
                int size = headers2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    realBufferedSink.r0(headers2.f(i2));
                    realBufferedSink.r0(": ");
                    realBufferedSink.r0(headers2.m(i2));
                    realBufferedSink.writeByte(10);
                }
                realBufferedSink.r0(new StatusLine(this.d, this.f76831e, this.f76832f).toString());
                realBufferedSink.writeByte(10);
                realBufferedSink.F0(headers.size() + 2);
                realBufferedSink.writeByte(10);
                int size2 = headers.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    realBufferedSink.r0(headers.f(i3));
                    realBufferedSink.r0(": ");
                    realBufferedSink.r0(headers.m(i3));
                    realBufferedSink.writeByte(10);
                }
                realBufferedSink.r0(f76827k);
                realBufferedSink.r0(": ");
                realBufferedSink.F0(this.f76834i);
                realBufferedSink.writeByte(10);
                realBufferedSink.r0(l);
                realBufferedSink.r0(": ");
                realBufferedSink.F0(this.f76835j);
                realBufferedSink.writeByte(10);
                if (httpUrl.f() && (handshake = this.f76833h) != null) {
                    realBufferedSink.writeByte(10);
                    realBufferedSink.r0(handshake.f76913b.f76870a);
                    realBufferedSink.writeByte(10);
                    b(realBufferedSink, handshake.a());
                    b(realBufferedSink, handshake.f76914c);
                    realBufferedSink.r0(handshake.f76912a.getJavaName());
                    realBufferedSink.writeByte(10);
                }
                realBufferedSink.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(realBufferedSink, th);
                    throw th2;
                }
            }
        }

        public Entry(Response response) {
            Headers headersD;
            response.getClass();
            Request request = response.f76984b;
            this.f76828a = request.f76969a;
            Cache.f76821c.getClass();
            Response response2 = response.f76990j;
            response2.getClass();
            Headers headers = response2.f76984b.f76971c;
            Headers headers2 = response.g;
            Set setC = Companion.c(headers2);
            if (setC.isEmpty()) {
                headersD = Headers.d;
            } else {
                Headers.Builder builder = new Headers.Builder();
                int size = headers.size();
                for (int i2 = 0; i2 < size; i2++) {
                    String strF = headers.f(i2);
                    if (setC.contains(strF)) {
                        builder.a(strF, headers.m(i2));
                    }
                }
                headersD = builder.d();
            }
            this.f76829b = headersD;
            this.f76830c = request.f76970b;
            this.d = response.f76985c;
            this.f76831e = response.f76986e;
            this.f76832f = response.d;
            this.g = headers2;
            this.f76833h = response.f76987f;
            this.f76834i = response.m;
            this.f76835j = response.n;
        }
    }
}
