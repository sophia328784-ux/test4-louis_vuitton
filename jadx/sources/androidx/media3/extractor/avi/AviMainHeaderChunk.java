package androidx.media3.extractor.avi;

/* JADX INFO: loaded from: classes.dex */
final class AviMainHeaderChunk implements AviChunk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16253c;

    public AviMainHeaderChunk(int i2, int i3, int i4) {
        this.f16251a = i2;
        this.f16252b = i3;
        this.f16253c = i4;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public final int getType() {
        return 1751742049;
    }
}
