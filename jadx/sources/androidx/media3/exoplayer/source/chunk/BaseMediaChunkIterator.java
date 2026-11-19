package androidx.media3.exoplayer.source.chunk;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseMediaChunkIterator implements MediaChunkIterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f15646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f15647c;
    public long d;

    public BaseMediaChunkIterator(long j2, long j3) {
        this.f15646b = j2;
        this.f15647c = j3;
        this.d = j2 - 1;
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
    public final boolean next() {
        long j2 = this.d + 1;
        this.d = j2;
        return !(j2 > this.f15647c);
    }
}
