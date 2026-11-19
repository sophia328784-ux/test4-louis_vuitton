package androidx.media3.extractor;

/* JADX INFO: loaded from: classes.dex */
public final class StartOffsetExtractorOutput implements ExtractorOutput {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExtractorOutput f16207c;

    public StartOffsetExtractorOutput(long j2, ExtractorOutput extractorOutput) {
        this.f16206b = j2;
        this.f16207c = extractorOutput;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void j(final SeekMap seekMap) {
        this.f16207c.j(new ForwardingSeekMap(seekMap) { // from class: androidx.media3.extractor.StartOffsetExtractorOutput.1
            @Override // androidx.media3.extractor.ForwardingSeekMap, androidx.media3.extractor.SeekMap
            public final SeekMap.SeekPoints c(long j2) {
                SeekMap.SeekPoints seekPointsC = seekMap.c(j2);
                SeekPoint seekPoint = seekPointsC.f16191a;
                long j3 = seekPoint.f16196a;
                long j4 = seekPoint.f16197b;
                long j5 = StartOffsetExtractorOutput.this.f16206b;
                SeekPoint seekPoint2 = new SeekPoint(j3, j4 + j5);
                SeekPoint seekPoint3 = seekPointsC.f16192b;
                return new SeekMap.SeekPoints(seekPoint2, new SeekPoint(seekPoint3.f16196a, seekPoint3.f16197b + j5));
            }
        });
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void n() {
        this.f16207c.n();
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final TrackOutput r(int i2, int i3) {
        return this.f16207c.r(i2, i3);
    }
}
