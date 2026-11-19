package androidx.media3.datasource.cache;

import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;

/* JADX INFO: loaded from: classes.dex */
public final class CacheWriter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CacheDataSource f14483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Cache f14484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataSpec f14485c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f14486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressListener f14487f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f14488h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f14489i;

    public interface ProgressListener {
        void a(long j2, long j3);
    }

    public CacheWriter(CacheDataSource cacheDataSource, DataSpec dataSpec, byte[] bArr, ProgressListener progressListener) {
        this.f14483a = cacheDataSource;
        this.f14484b = cacheDataSource.f14461a;
        this.f14485c = dataSpec;
        this.f14486e = bArr == null ? new byte[131072] : bArr;
        this.f14487f = progressListener;
        this.d = cacheDataSource.f14464e.b(dataSpec);
        this.g = dataSpec.f14394f;
    }

    public final void a() throws Exception {
        long jA;
        long j2;
        DataSpec dataSpec = this.f14485c;
        this.f14489i = this.f14484b.g(dataSpec.f14394f, dataSpec.g, this.d);
        long j3 = dataSpec.g;
        long j4 = -1;
        if (j3 != -1) {
            this.f14488h = dataSpec.f14394f + j3;
        } else {
            long jB = this.f14484b.a(this.d).b();
            if (jB == -1) {
                jB = -1;
            }
            this.f14488h = jB;
        }
        ProgressListener progressListener = this.f14487f;
        if (progressListener != null) {
            long j5 = this.f14488h;
            progressListener.a(j5 == -1 ? -1L : j5 - dataSpec.f14394f, this.f14489i);
        }
        while (true) {
            long j6 = this.f14488h;
            if (j6 != j4 && this.g >= j6) {
                return;
            }
            long jC = this.f14484b.c(this.g, j6 == j4 ? Long.MAX_VALUE : j6 - this.g, this.d);
            if (jC > 0) {
                this.g += jC;
                j2 = j4;
            } else {
                long j7 = -jC;
                if (j7 == Long.MAX_VALUE) {
                    j7 = j4;
                }
                long j8 = this.g;
                boolean z = true;
                int i2 = 0;
                boolean z2 = j8 + j7 == this.f14488h || j7 == j4;
                CacheDataSource cacheDataSource = this.f14483a;
                if (j7 != j4) {
                    DataSpec.Builder builderA = dataSpec.a();
                    builderA.f14401f = j8;
                    builderA.g = j7;
                    try {
                        jA = cacheDataSource.a(builderA.a());
                    } catch (Exception unused) {
                        DataSourceUtil.a(cacheDataSource);
                        jA = j4;
                        z = false;
                    }
                } else {
                    jA = j4;
                    z = false;
                }
                if (!z) {
                    DataSpec.Builder builderA2 = dataSpec.a();
                    builderA2.f14401f = j8;
                    builderA2.g = j4;
                    try {
                        jA = cacheDataSource.a(builderA2.a());
                    } catch (Exception e2) {
                        DataSourceUtil.a(cacheDataSource);
                        throw e2;
                    }
                }
                if (z2 && jA != j4) {
                    long j9 = jA + j8;
                    try {
                        if (this.f14488h != j9) {
                            this.f14488h = j9;
                            if (progressListener != null) {
                                progressListener.a(j9 == j4 ? j4 : j9 - dataSpec.f14394f, this.f14489i);
                            }
                        }
                    } catch (Exception e3) {
                        DataSourceUtil.a(cacheDataSource);
                        throw e3;
                    }
                }
                int i3 = 0;
                int i4 = 0;
                while (i3 != -1) {
                    byte[] bArr = this.f14486e;
                    i3 = cacheDataSource.read(bArr, i2, bArr.length);
                    if (i3 != -1) {
                        long j10 = j4;
                        long j11 = this.f14489i + ((long) i3);
                        this.f14489i = j11;
                        if (progressListener != null) {
                            long j12 = this.f14488h;
                            progressListener.a(j12 == j10 ? j10 : j12 - dataSpec.f14394f, j11);
                        }
                        i4 += i3;
                        j4 = j10;
                        i2 = 0;
                    }
                }
                j2 = j4;
                if (z2) {
                    long j13 = ((long) i4) + j8;
                    if (this.f14488h != j13) {
                        this.f14488h = j13;
                        if (progressListener != null) {
                            progressListener.a(j13 == j2 ? j2 : j13 - dataSpec.f14394f, this.f14489i);
                        }
                    }
                }
                cacheDataSource.close();
                this.g = j8 + ((long) i4);
            }
            j4 = j2;
        }
    }
}
