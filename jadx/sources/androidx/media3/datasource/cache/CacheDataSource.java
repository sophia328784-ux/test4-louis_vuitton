package androidx.media3.datasource.cache;

import android.net.Uri;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSink;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.DefaultHttpDataSource;
import androidx.media3.datasource.FileDataSource;
import androidx.media3.datasource.PlaceholderDataSource;
import androidx.media3.datasource.TeeDataSource;
import androidx.media3.datasource.TransferListener;
import com.google.common.base.Preconditions;
import defpackage.md;
import java.io.InterruptedIOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CacheDataSource implements DataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Cache f14461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSource f14462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TeeDataSource f14463c;
    public final DataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CacheKeyFactory f14464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EventListener f14465f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f14466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f14467i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Uri f14468j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public DataSpec f14469k;
    public DataSpec l;
    public DataSource m;
    public long n;
    public long o;
    public long p;
    public CacheSpan q;
    public boolean r;
    public boolean s;
    public long t;
    public long u;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface CacheIgnoredReason {
    }

    public interface EventListener {
        void a();

        void b();
    }

    public static final class Factory implements DataSource.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleCache f14470a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FileDataSource.Factory f14471b = new FileDataSource.Factory();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final md f14472c = CacheKeyFactory.c0;
        public DefaultHttpDataSource.Factory d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f14473e;

        @Override // androidx.media3.datasource.DataSource.Factory
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final CacheDataSource b() {
            DefaultHttpDataSource.Factory factory = this.d;
            CacheDataSink cacheDataSink = null;
            DefaultHttpDataSource defaultHttpDataSourceA = factory != null ? factory.a() : null;
            int i2 = this.f14473e;
            SimpleCache simpleCache = this.f14470a;
            simpleCache.getClass();
            if (defaultHttpDataSourceA != null) {
                new CacheDataSink.Factory();
                cacheDataSink = new CacheDataSink(simpleCache, 5242880L, 20480);
            }
            CacheDataSink cacheDataSink2 = cacheDataSink;
            this.f14471b.getClass();
            return new CacheDataSource(simpleCache, defaultHttpDataSourceA, new FileDataSource(), cacheDataSink2, this.f14472c, i2, 0, null);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public CacheDataSource(Cache cache, DataSource dataSource, DataSource dataSource2, DataSink dataSink, CacheKeyFactory cacheKeyFactory, int i2, int i3, EventListener eventListener) {
        this.f14461a = cache;
        this.f14462b = dataSource2;
        this.f14464e = cacheKeyFactory == null ? CacheKeyFactory.c0 : cacheKeyFactory;
        this.g = (i2 & 1) != 0;
        this.f14466h = (i2 & 2) != 0;
        this.f14467i = (i2 & 4) != 0;
        if (dataSource != null) {
            this.d = dataSource;
            this.f14463c = dataSink != null ? new TeeDataSource(dataSource, dataSink) : null;
        } else {
            this.d = PlaceholderDataSource.f14435a;
            this.f14463c = null;
        }
        this.f14465f = eventListener;
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) {
        EventListener eventListener;
        Cache cache = this.f14461a;
        try {
            String strB = this.f14464e.b(dataSpec);
            DataSpec.Builder builderA = dataSpec.a();
            long j2 = dataSpec.f14394f;
            long j3 = dataSpec.g;
            builderA.f14402h = strB;
            DataSpec dataSpecA = builderA.a();
            this.f14469k = dataSpecA;
            Uri uri = dataSpecA.f14390a;
            byte[] bArr = (byte[]) cache.a(strB).f14514b.get("exo_redir");
            Uri uri2 = null;
            String str = bArr != null ? new String(bArr, StandardCharsets.UTF_8) : null;
            if (str != null) {
                uri2 = Uri.parse(str);
            }
            if (uri2 != null) {
                uri = uri2;
            }
            this.f14468j = uri;
            this.o = j2;
            boolean z = (this.f14466h && this.r) || (this.f14467i && j3 == -1);
            this.s = z;
            if (z && (eventListener = this.f14465f) != null) {
                eventListener.a();
            }
            if (this.s) {
                this.p = -1L;
            } else {
                long jB = cache.a(strB).b();
                this.p = jB;
                if (jB != -1) {
                    long j4 = jB - j2;
                    this.p = j4;
                    if (j4 < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            }
            if (j3 != -1) {
                long j5 = this.p;
                this.p = j5 == -1 ? j3 : Math.min(j5, j3);
            }
            long j6 = this.p;
            if (j6 > 0 || j6 == -1) {
                p(dataSpecA, false);
            }
            return j3 != -1 ? j3 : this.p;
        } catch (Throwable th) {
            if (this.m == this.f14462b || (th instanceof Cache.CacheException)) {
                this.r = true;
            }
            throw th;
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final void c(TransferListener transferListener) {
        transferListener.getClass();
        this.f14462b.c(transferListener);
        this.d.c(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        this.f14469k = null;
        this.f14468j = null;
        this.o = 0L;
        EventListener eventListener = this.f14465f;
        if (eventListener != null && this.t > 0) {
            this.f14461a.b();
            eventListener.b();
            this.t = 0L;
        }
        try {
            o();
        } catch (Throwable th) {
            if (this.m == this.f14462b || (th instanceof Cache.CacheException)) {
                this.r = true;
            }
            throw th;
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map f() {
        return !(this.m == this.f14462b) ? this.d.f() : Collections.EMPTY_MAP;
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        return this.f14468j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void o() {
        Cache cache = this.f14461a;
        DataSource dataSource = this.m;
        if (dataSource == null) {
            return;
        }
        try {
            dataSource.close();
        } finally {
            this.l = null;
            this.m = null;
            CacheSpan cacheSpan = this.q;
            if (cacheSpan != null) {
                cache.f(cacheSpan);
                this.q = null;
            }
        }
    }

    public final void p(DataSpec dataSpec, boolean z) throws InterruptedIOException {
        CacheSpan cacheSpanD;
        TeeDataSource teeDataSource;
        DataSource dataSource;
        long j2;
        DataSpec dataSpecA;
        DataSource dataSource2;
        String str = dataSpec.f14395h;
        String str2 = Util.f14242a;
        boolean z2 = this.s;
        Cache cache = this.f14461a;
        if (z2) {
            cacheSpanD = null;
        } else {
            long j3 = this.o;
            if (this.g) {
                try {
                    cacheSpanD = cache.d(j3, this.p, str);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException();
                }
            } else {
                cacheSpanD = cache.e(j3, this.p, str);
            }
        }
        TeeDataSource teeDataSource2 = this.f14463c;
        DataSource dataSource3 = this.f14462b;
        DataSource dataSource4 = this.d;
        if (cacheSpanD == null) {
            DataSpec.Builder builderA = dataSpec.a();
            builderA.f14401f = this.o;
            builderA.g = this.p;
            dataSpecA = builderA.a();
            teeDataSource = teeDataSource2;
            dataSource = dataSource3;
            dataSource2 = dataSource4;
            j2 = -1;
        } else {
            long jMin = cacheSpanD.d;
            if (cacheSpanD.f14481e) {
                Uri uriFromFile = Uri.fromFile(cacheSpanD.f14482f);
                long j4 = cacheSpanD.f14480c;
                j2 = -1;
                long j5 = this.o - j4;
                long jMin2 = jMin - j5;
                teeDataSource = teeDataSource2;
                dataSource = dataSource3;
                long j6 = this.p;
                if (j6 != -1) {
                    jMin2 = Math.min(jMin2, j6);
                }
                DataSpec.Builder builderA2 = dataSpec.a();
                builderA2.f14397a = uriFromFile;
                builderA2.f14398b = j4;
                builderA2.f14401f = j5;
                builderA2.g = jMin2;
                dataSpecA = builderA2.a();
                dataSource2 = dataSource;
            } else {
                teeDataSource = teeDataSource2;
                dataSource = dataSource3;
                j2 = -1;
                long j7 = this.p;
                if (jMin == -1) {
                    jMin = j7;
                } else if (j7 != -1) {
                    jMin = Math.min(jMin, j7);
                }
                DataSpec.Builder builderA3 = dataSpec.a();
                builderA3.f14401f = this.o;
                builderA3.g = jMin;
                dataSpecA = builderA3.a();
                if (teeDataSource != null) {
                    dataSource2 = teeDataSource;
                } else {
                    cache.f(cacheSpanD);
                    dataSource2 = dataSource4;
                    cacheSpanD = null;
                }
            }
        }
        this.u = (this.s || dataSource2 != dataSource4) ? Long.MAX_VALUE : this.o + 102400;
        if (z) {
            Preconditions.q(this.m == dataSource4);
            if (dataSource2 == dataSource4) {
                return;
            }
            try {
                o();
            } catch (Throwable th) {
                if (!cacheSpanD.f14481e) {
                    cache.f(cacheSpanD);
                }
                throw th;
            }
        }
        if (cacheSpanD != null && !cacheSpanD.f14481e) {
            this.q = cacheSpanD;
        }
        this.m = dataSource2;
        this.l = dataSpecA;
        this.n = 0L;
        long jA = dataSource2.a(dataSpecA);
        ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
        if (dataSpecA.g == j2 && jA != j2) {
            this.p = jA;
            contentMetadataMutations.a(Long.valueOf(this.o + jA), "exo_len");
        }
        if (!(this.m == dataSource)) {
            Uri uri = dataSource2.getUri();
            this.f14468j = uri;
            Uri uri2 = !dataSpec.f14390a.equals(uri) ? this.f14468j : null;
            if (uri2 == null) {
                contentMetadataMutations.f14511b.add("exo_redir");
                contentMetadataMutations.f14510a.remove("exo_redir");
            } else {
                contentMetadataMutations.a(uri2.toString(), "exo_redir");
            }
        }
        if (this.m == teeDataSource) {
            cache.j(str, contentMetadataMutations);
        }
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) {
        int i4;
        long j2;
        DataSource dataSource = this.f14462b;
        if (i3 == 0) {
            return 0;
        }
        if (this.p == 0) {
            return -1;
        }
        DataSpec dataSpec = this.f14469k;
        dataSpec.getClass();
        DataSpec dataSpec2 = this.l;
        dataSpec2.getClass();
        try {
            if (this.o >= this.u) {
                p(dataSpec, true);
            }
            DataSource dataSource2 = this.m;
            dataSource2.getClass();
            int i5 = dataSource2.read(bArr, i2, i3);
            DataSource dataSource3 = this.m;
            if (i5 != -1) {
                if (dataSource3 == dataSource) {
                    this.t += (long) i5;
                }
                long j3 = i5;
                this.o += j3;
                this.n += j3;
                long j4 = this.p;
                if (j4 == -1) {
                    return i5;
                }
                this.p = j4 - j3;
                return i5;
            }
            if (!(dataSource3 == dataSource)) {
                j2 = -1;
                long j5 = dataSpec2.g;
                if (j5 != -1) {
                    i4 = i5;
                    if (this.n < j5) {
                    }
                } else {
                    i4 = i5;
                }
                String str = dataSpec.f14395h;
                String str2 = Util.f14242a;
                this.p = 0L;
                if (!(dataSource3 == this.f14463c)) {
                    return i4;
                }
                ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
                contentMetadataMutations.a(Long.valueOf(this.o), "exo_len");
                this.f14461a.j(str, contentMetadataMutations);
                return i4;
            }
            i4 = i5;
            j2 = -1;
            long j6 = this.p;
            if (j6 <= 0 && j6 != j2) {
                return i4;
            }
            o();
            p(dataSpec, false);
            return read(bArr, i2, i3);
        } catch (Throwable th) {
            if (this.m == dataSource || (th instanceof Cache.CacheException)) {
                this.r = true;
            }
            throw th;
        }
    }

    public CacheDataSource(Cache cache, DataSource dataSource, int i2) {
        this(cache, dataSource, new FileDataSource(), new CacheDataSink(cache, 5242880L), i2, null);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, DataSource dataSource2, DataSink dataSink, int i2, EventListener eventListener) {
        this(cache, dataSource, dataSource2, dataSink, i2, eventListener, null);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, DataSource dataSource2, DataSink dataSink, int i2, EventListener eventListener, CacheKeyFactory cacheKeyFactory) {
        this(cache, dataSource, dataSource2, dataSink, cacheKeyFactory, i2, -1000, eventListener);
    }

    public CacheDataSource(Cache cache, DataSource dataSource) {
        this(cache, dataSource, 0);
    }
}
