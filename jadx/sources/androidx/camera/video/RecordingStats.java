package androidx.camera.video;

import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public abstract class RecordingStats {
    public static RecordingStats a(long j2, long j3, AudioStats audioStats) {
        Preconditions.b(j2 >= 0, "duration must be positive value.");
        Preconditions.b(j3 >= 0, "bytes must be positive value.");
        return new AutoValue_RecordingStats(j2, j3, audioStats);
    }
}
