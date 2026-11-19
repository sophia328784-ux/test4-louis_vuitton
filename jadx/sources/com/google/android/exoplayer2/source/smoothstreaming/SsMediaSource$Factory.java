package com.google.android.exoplayer2.source.smoothstreaming;

import com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider;
import com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;

/* JADX INFO: loaded from: classes2.dex */
public final class SsMediaSource$Factory implements MediaSourceFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SsChunkSource.Factory f28334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSource.Factory f28335b;

    public SsMediaSource$Factory(SsChunkSource.Factory factory, DataSource.Factory factory2) {
        factory.getClass();
        this.f28334a = factory;
        this.f28335b = factory2;
        new DefaultDrmSessionManagerProvider();
        new DefaultLoadErrorHandlingPolicy();
        new DefaultCompositeSequenceableLoaderFactory();
    }

    public SsMediaSource$Factory(final DataSource.Factory factory) {
        this(new SsChunkSource.Factory(factory) { // from class: com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource$Factory

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final DataSource.Factory f28333a;

            {
                this.f28333a = factory;
            }
        }, factory);
    }
}
