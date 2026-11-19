package androidx.media3.exoplayer.source.chunk;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public interface MediaChunkIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MediaChunkIterator f15658a = new AnonymousClass1();

    /* JADX INFO: renamed from: androidx.media3.exoplayer.source.chunk.MediaChunkIterator$1, reason: invalid class name */
    public class AnonymousClass1 implements MediaChunkIterator {
        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public final long a() {
            throw new NoSuchElementException();
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public final long b() {
            throw new NoSuchElementException();
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public final boolean next() {
            return false;
        }
    }

    long a();

    long b();

    boolean next();
}
