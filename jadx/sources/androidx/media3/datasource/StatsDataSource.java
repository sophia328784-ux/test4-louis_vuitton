package androidx.media3.datasource;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class StatsDataSource implements DataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataSource f14441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f14442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Uri f14443c;
    public Map d;

    public StatsDataSource(DataSource dataSource) {
        dataSource.getClass();
        this.f14441a = dataSource;
        this.f14443c = Uri.EMPTY;
        this.d = Collections.EMPTY_MAP;
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) {
        DataSource dataSource = this.f14441a;
        this.f14443c = dataSpec.f14390a;
        this.d = Collections.EMPTY_MAP;
        try {
            return dataSource.a(dataSpec);
        } finally {
            Uri uri = dataSource.getUri();
            if (uri != null) {
                this.f14443c = uri;
            }
            this.d = dataSource.f();
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final void c(TransferListener transferListener) {
        transferListener.getClass();
        this.f14441a.c(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        this.f14441a.close();
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map f() {
        return this.f14441a.f();
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        return this.f14441a.getUri();
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) {
        int i4 = this.f14441a.read(bArr, i2, i3);
        if (i4 != -1) {
            this.f14442b += (long) i4;
        }
        return i4;
    }
}
