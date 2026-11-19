package androidx.media3.extractor;

/* JADX INFO: loaded from: classes.dex */
public final class SingleSampleSeekMap implements SeekMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16204b;

    public SingleSampleSeekMap(long j2, long j3) {
        this.f16203a = j2;
        this.f16204b = j3;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints c(long j2) {
        return new SeekMap.SeekPoints(new SeekPoint(j2, this.f16204b));
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return true;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long h() {
        return this.f16203a;
    }

    public SingleSampleSeekMap(long j2) {
        this(j2, 0L);
    }
}
