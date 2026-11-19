package androidx.media3.exoplayer;

import androidx.media3.common.MediaItem;

/* JADX INFO: loaded from: classes.dex */
public interface LivePlaybackSpeedControl {
    void a(MediaItem.LiveConfiguration liveConfiguration);

    float b(long j2, long j3);

    long c();

    void d();

    void e(long j2);
}
