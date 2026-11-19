package androidx.media3.exoplayer.hls;

import androidx.media3.datasource.DataSource;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultHlsDataSourceFactory implements HlsDataSourceFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataSource.Factory f15127a;

    public DefaultHlsDataSourceFactory(DataSource.Factory factory) {
        this.f15127a = factory;
    }

    @Override // androidx.media3.exoplayer.hls.HlsDataSourceFactory
    public final DataSource a() {
        return this.f15127a.a();
    }
}
