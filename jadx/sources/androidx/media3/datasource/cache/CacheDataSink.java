package androidx.media3.datasource.cache;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSink;
import androidx.media3.datasource.DataSpec;
import com.google.common.base.Preconditions;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class CacheDataSink implements DataSink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Cache f14453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f14454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14455c;
    public DataSpec d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f14456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public File f14457f;
    public OutputStream g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f14458h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f14459i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ReusableBufferedOutputStream f14460j;

    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public static final class Factory implements DataSink.Factory {
    }

    public CacheDataSink(Cache cache, long j2, int i2) {
        Preconditions.p("fragmentSize must be positive or C.LENGTH_UNSET.", j2 > 0 || j2 == -1);
        if (j2 != -1 && j2 < 2097152) {
            Log.g("fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        cache.getClass();
        this.f14453a = cache;
        this.f14454b = j2 == -1 ? Long.MAX_VALUE : j2;
        this.f14455c = i2;
    }

    @Override // androidx.media3.datasource.DataSink
    public final void a(DataSpec dataSpec) throws CacheDataSinkException {
        int i2 = dataSpec.f14396i;
        dataSpec.f14395h.getClass();
        if (dataSpec.g == -1 && (i2 & 2) == 2) {
            this.d = null;
            return;
        }
        this.d = dataSpec;
        this.f14456e = (i2 & 4) == 4 ? this.f14454b : Long.MAX_VALUE;
        this.f14459i = 0L;
        try {
            c(dataSpec);
        } catch (IOException e2) {
            throw new CacheDataSinkException(e2);
        }
    }

    public final void b() {
        OutputStream outputStream = this.g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            Util.h(this.g);
            this.g = null;
            File file = this.f14457f;
            this.f14457f = null;
            this.f14453a.i(file, this.f14458h);
        } catch (Throwable th) {
            Util.h(this.g);
            this.g = null;
            File file2 = this.f14457f;
            this.f14457f = null;
            file2.delete();
            throw th;
        }
    }

    public final void c(DataSpec dataSpec) {
        long j2 = dataSpec.g;
        long jMin = j2 != -1 ? Math.min(j2 - this.f14459i, this.f14456e) : -1L;
        String str = dataSpec.f14395h;
        String str2 = Util.f14242a;
        this.f14457f = this.f14453a.h(dataSpec.f14394f + this.f14459i, jMin, str);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f14457f);
        int i2 = this.f14455c;
        if (i2 > 0) {
            ReusableBufferedOutputStream reusableBufferedOutputStream = this.f14460j;
            if (reusableBufferedOutputStream == null) {
                this.f14460j = new ReusableBufferedOutputStream(fileOutputStream, i2);
            } else {
                reusableBufferedOutputStream.c(fileOutputStream);
            }
            this.g = this.f14460j;
        } else {
            this.g = fileOutputStream;
        }
        this.f14458h = 0L;
    }

    @Override // androidx.media3.datasource.DataSink
    public final void close() throws CacheDataSinkException {
        if (this.d == null) {
            return;
        }
        try {
            b();
        } catch (IOException e2) {
            throw new CacheDataSinkException(e2);
        }
    }

    @Override // androidx.media3.datasource.DataSink
    public final void write(byte[] bArr, int i2, int i3) throws CacheDataSinkException {
        DataSpec dataSpec = this.d;
        if (dataSpec == null) {
            return;
        }
        int i4 = 0;
        while (i4 < i3) {
            try {
                if (this.f14458h == this.f14456e) {
                    b();
                    c(dataSpec);
                }
                int iMin = (int) Math.min(i3 - i4, this.f14456e - this.f14458h);
                OutputStream outputStream = this.g;
                String str = Util.f14242a;
                outputStream.write(bArr, i2 + i4, iMin);
                i4 += iMin;
                long j2 = iMin;
                this.f14458h += j2;
                this.f14459i += j2;
            } catch (IOException e2) {
                throw new CacheDataSinkException(e2);
            }
        }
    }

    public CacheDataSink(Cache cache, long j2) {
        this(cache, j2, 20480);
    }
}
