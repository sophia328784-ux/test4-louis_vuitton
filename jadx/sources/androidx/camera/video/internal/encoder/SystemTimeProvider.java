package androidx.camera.video.internal.encoder;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public class SystemTimeProvider implements TimeProvider {
    @Override // androidx.camera.video.internal.encoder.TimeProvider
    public final long a() {
        return SystemClock.elapsedRealtimeNanos() / 1000;
    }

    @Override // androidx.camera.video.internal.encoder.TimeProvider
    public final long b() {
        return System.nanoTime() / 1000;
    }
}
