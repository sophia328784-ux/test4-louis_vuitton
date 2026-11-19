package androidx.media3.exoplayer.source;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;

/* JADX INFO: loaded from: classes.dex */
public final class EmptySampleStream implements SampleStream {
    @Override // androidx.media3.exoplayer.source.SampleStream
    public final void a() {
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final int b(long j2) {
        return 0;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final int c(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
        decoderInputBuffer.f14531b = 4;
        return -4;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final boolean isReady() {
        return true;
    }
}
