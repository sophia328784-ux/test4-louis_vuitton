package androidx.media3.datasource;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class TeeDataSource implements DataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataSource f14444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSink f14445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f14446c;
    public long d;

    public TeeDataSource(DataSource dataSource, DataSink dataSink) {
        dataSource.getClass();
        this.f14444a = dataSource;
        dataSink.getClass();
        this.f14445b = dataSink;
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) {
        long jA = this.f14444a.a(dataSpec);
        this.d = jA;
        if (jA == 0) {
            return 0L;
        }
        if (dataSpec.g == -1 && jA != -1) {
            dataSpec = dataSpec.b(0L, jA);
        }
        this.f14446c = true;
        this.f14445b.a(dataSpec);
        return this.d;
    }

    @Override // androidx.media3.datasource.DataSource
    public final void c(TransferListener transferListener) {
        transferListener.getClass();
        this.f14444a.c(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        DataSink dataSink = this.f14445b;
        try {
            this.f14444a.close();
        } finally {
            if (this.f14446c) {
                this.f14446c = false;
                dataSink.close();
            }
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map f() {
        return this.f14444a.f();
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        return this.f14444a.getUri();
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) {
        if (this.d == 0) {
            return -1;
        }
        int i4 = this.f14444a.read(bArr, i2, i3);
        if (i4 > 0) {
            this.f14445b.write(bArr, i2, i4);
            long j2 = this.d;
            if (j2 != -1) {
                this.d = j2 - ((long) i4);
            }
        }
        return i4;
    }
}
