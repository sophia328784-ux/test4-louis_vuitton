package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider;
import com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;

/* JADX INFO: loaded from: classes2.dex */
public final class DashMediaSource$Factory implements MediaSourceFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DashChunkSource.Factory f28320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSource.Factory f28321b;

    public DashMediaSource$Factory(DashChunkSource.Factory factory, DataSource.Factory factory2) {
        factory.getClass();
        this.f28320a = factory;
        this.f28321b = factory2;
        new DefaultDrmSessionManagerProvider();
        new DefaultLoadErrorHandlingPolicy();
        new DefaultCompositeSequenceableLoaderFactory();
    }

    public DashMediaSource$Factory(DataSource.Factory factory) {
        this(new DefaultDashChunkSource$Factory(factory), factory);
    }
}
