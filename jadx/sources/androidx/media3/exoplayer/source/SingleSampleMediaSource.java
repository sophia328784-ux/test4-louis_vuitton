package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class SingleSampleMediaSource extends BaseMediaSource {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DataSpec f15620h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DataSource.Factory f15621i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Format f15622j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f15623k = -9223372036854775807L;
    public final LoadErrorHandlingPolicy l;
    public final boolean m;
    public final SinglePeriodTimeline n;
    public final MediaItem o;
    public TransferListener p;

    public static final class Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DataSource.Factory f15624a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LoadErrorHandlingPolicy f15625b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f15626c;

        public Factory(DataSource.Factory factory) {
            factory.getClass();
            this.f15624a = factory;
            this.f15625b = new DefaultLoadErrorHandlingPolicy();
            this.f15626c = true;
        }
    }

    public SingleSampleMediaSource(MediaItem.SubtitleConfiguration subtitleConfiguration, DataSource.Factory factory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, boolean z) {
        this.f15621i = factory;
        this.l = loadErrorHandlingPolicy;
        this.m = z;
        MediaItem.Builder builder = new MediaItem.Builder();
        builder.f13796b = Uri.EMPTY;
        String string = subtitleConfiguration.f13867a.toString();
        string.getClass();
        builder.f13795a = string;
        builder.f13800h = ImmutableList.t(ImmutableList.A(subtitleConfiguration));
        builder.f13802j = null;
        MediaItem mediaItemA = builder.a();
        this.o = mediaItemA;
        Format.Builder builder2 = new Format.Builder();
        builder2.n = MimeTypes.p((String) MoreObjects.a(subtitleConfiguration.f13868b, "text/x-unknown"));
        builder2.d = subtitleConfiguration.f13869c;
        builder2.f13767e = subtitleConfiguration.d;
        builder2.f13768f = subtitleConfiguration.f13870e;
        builder2.f13765b = subtitleConfiguration.f13871f;
        String str = subtitleConfiguration.g;
        builder2.f13764a = str != null ? str : null;
        this.f15622j = new Format(builder2);
        DataSpec.Builder builder3 = new DataSpec.Builder();
        builder3.f14397a = subtitleConfiguration.f13867a;
        builder3.f14403i = 1;
        this.f15620h = builder3.a();
        this.n = new SinglePeriodTimeline(-9223372036854775807L, true, false, false, (Object) null, mediaItemA);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final MediaPeriod c(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j2) {
        return new SingleSampleMediaPeriod(this.f15620h, this.f15621i, this.p, this.f15622j, this.f15623k, this.l, r(mediaPeriodId), this.m, null);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final MediaItem d() {
        return this.o;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void g(MediaPeriod mediaPeriod) {
        ((SingleSampleMediaPeriod) mediaPeriod).f15612j.d(null);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void n() {
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void u(TransferListener transferListener) {
        this.p = transferListener;
        v(this.n);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void w() {
    }
}
