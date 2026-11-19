package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider;
import com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistParserFactory;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;

/* JADX INFO: loaded from: classes2.dex */
public final class HlsMediaSource$Factory implements MediaSourceFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HlsDataSourceFactory f28326a;

    public HlsMediaSource$Factory(HlsDataSourceFactory hlsDataSourceFactory) {
        hlsDataSourceFactory.getClass();
        this.f28326a = hlsDataSourceFactory;
        new DefaultDrmSessionManagerProvider();
        new DefaultHlsPlaylistParserFactory();
        int i2 = HlsExtractorFactory.f28325a;
        new DefaultLoadErrorHandlingPolicy();
        new DefaultCompositeSequenceableLoaderFactory();
    }

    public HlsMediaSource$Factory(DataSource.Factory factory) {
        this(new DefaultHlsDataSourceFactory(factory));
    }
}
