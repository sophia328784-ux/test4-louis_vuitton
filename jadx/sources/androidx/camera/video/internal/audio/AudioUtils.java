package androidx.camera.video.internal.audio;

import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public abstract class AudioUtils {
    public static long a(int i2, long j2) {
        long j3 = i2;
        Preconditions.b(j3 > 0, "sampleRate must be greater than 0.");
        return (1000000000 * j2) / j3;
    }

    public static long b(int i2, long j2) {
        long j3 = i2;
        Preconditions.b(j3 > 0, "bytesPerFrame must be greater than 0.");
        return j2 / j3;
    }
}
