package androidx.media3.exoplayer.upstream;

import android.net.Uri;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceInputStream;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.source.LoadEventInfo;

/* JADX INFO: loaded from: classes.dex */
public final class ParsingLoadable<T> implements Loader.Loadable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f15839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSpec f15840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15841c;
    public final StatsDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Parser f15842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile Object f15843f;

    public interface Parser<T> {
        Object a(Uri uri, DataSourceInputStream dataSourceInputStream);
    }

    public ParsingLoadable(DataSource dataSource, DataSpec dataSpec, int i2, Parser<? extends T> parser) {
        this.d = new StatsDataSource(dataSource);
        this.f15840b = dataSpec;
        this.f15841c = i2;
        this.f15842e = parser;
        this.f15839a = LoadEventInfo.g.getAndIncrement();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void a() {
        this.d.f14442b = 0L;
        DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(this.d, this.f15840b);
        try {
            dataSourceInputStream.h();
            Uri uri = this.d.f14441a.getUri();
            uri.getClass();
            this.f15843f = this.f15842e.a(uri, dataSourceInputStream);
        } finally {
            Util.h(dataSourceInputStream);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void c() {
    }

    public ParsingLoadable(DataSource dataSource, Uri uri, int i2, Parser<? extends T> parser) {
        DataSpec.Builder builder = new DataSpec.Builder();
        builder.f14397a = uri;
        builder.f14403i = 1;
        this(dataSource, builder.a(), i2, parser);
    }
}
