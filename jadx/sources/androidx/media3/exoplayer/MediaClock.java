package androidx.media3.exoplayer;

import androidx.media3.common.PlaybackParameters;

/* JADX INFO: loaded from: classes.dex */
public interface MediaClock {
    PlaybackParameters a();

    void d(PlaybackParameters playbackParameters);

    long i();

    default boolean p() {
        return false;
    }
}
