package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.source.chunk.BundledChunkExtractor;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.upstream.DataSource;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultDashChunkSource$Factory implements DashChunkSource.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataSource.Factory f28322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChunkExtractor.Factory f28323b;

    public DefaultDashChunkSource$Factory(ChunkExtractor.Factory factory, DataSource.Factory factory2, int i2) {
        this.f28323b = factory;
        this.f28322a = factory2;
    }

    public DefaultDashChunkSource$Factory(DataSource.Factory factory, int i2) {
        this(BundledChunkExtractor.f28318b, factory, i2);
    }

    public DefaultDashChunkSource$Factory(DataSource.Factory factory) {
        this(factory, 1);
    }
}
