package com.google.android.exoplayer2.source.chunk;

import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class BundledChunkExtractor implements ExtractorOutput, ChunkExtractor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final md f28318b = new md(10);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Extractor f28319a;

    static {
        new PositionHolder();
    }

    public BundledChunkExtractor(Extractor extractor, int i2, Format format) {
        this.f28319a = extractor;
        new SparseArray();
    }
}
