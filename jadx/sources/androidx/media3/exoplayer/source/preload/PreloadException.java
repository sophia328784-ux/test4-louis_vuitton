package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.MediaItem;

/* JADX INFO: loaded from: classes.dex */
public final class PreloadException extends Exception {
    public PreloadException(MediaItem mediaItem, String str, Throwable th) {
        super(str, th);
    }
}
