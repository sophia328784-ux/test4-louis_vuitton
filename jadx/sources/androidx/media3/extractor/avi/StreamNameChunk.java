package androidx.media3.extractor.avi;

/* JADX INFO: loaded from: classes.dex */
final class StreamNameChunk implements AviChunk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16271a;

    public StreamNameChunk(String str) {
        this.f16271a = str;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public final int getType() {
        return 1852994675;
    }
}
