package androidx.media3.exoplayer.source.chunk;

import androidx.media3.common.Format;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.upstream.Loader;

/* JADX INFO: loaded from: classes.dex */
public abstract class Chunk implements Loader.Loadable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f15648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSpec f15649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15650c;
    public final Format d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f15651e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f15652f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f15653h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final StatsDataSource f15654i;

    public Chunk(DataSource dataSource, DataSpec dataSpec, int i2, Format format, int i3, Object obj, long j2, long j3) {
        this.f15654i = new StatsDataSource(dataSource);
        dataSpec.getClass();
        this.f15649b = dataSpec;
        this.f15650c = i2;
        this.d = format;
        this.f15651e = i3;
        this.f15652f = obj;
        this.g = j2;
        this.f15653h = j3;
        this.f15648a = LoadEventInfo.g.getAndIncrement();
    }
}
