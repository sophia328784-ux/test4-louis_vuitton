package androidx.media3.extractor;

/* JADX INFO: loaded from: classes.dex */
public final class NoOpExtractorOutput implements ExtractorOutput {
    @Override // androidx.media3.extractor.ExtractorOutput
    public final void j(SeekMap seekMap) {
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void n() {
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final TrackOutput r(int i2, int i3) {
        return new DiscardingTrackOutput();
    }
}
