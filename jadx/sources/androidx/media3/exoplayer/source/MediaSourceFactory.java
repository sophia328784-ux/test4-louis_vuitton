package androidx.media3.exoplayer.source;

import androidx.media3.common.MediaItem;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface MediaSourceFactory extends MediaSource.Factory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MediaSourceFactory f15525b = new AnonymousClass1();

    /* JADX INFO: renamed from: androidx.media3.exoplayer.source.MediaSourceFactory$1, reason: invalid class name */
    public class AnonymousClass1 implements MediaSourceFactory {
        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final MediaSource c(MediaItem mediaItem) {
            throw new UnsupportedOperationException();
        }
    }
}
