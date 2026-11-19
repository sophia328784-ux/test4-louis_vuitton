package androidx.media3.extractor.avi;

import androidx.media3.common.Format;

/* JADX INFO: loaded from: classes.dex */
final class StreamFormatChunk implements AviChunk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Format f16270a;

    public StreamFormatChunk(Format format) {
        this.f16270a = format;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public final int getType() {
        return 1718776947;
    }
}
