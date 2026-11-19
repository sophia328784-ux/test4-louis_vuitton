package androidx.camera.core.impl;

import android.os.SystemClock;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.InitializationException;
import androidx.camera.core.RetryPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class CameraProviderExecutionState implements RetryPolicy.ExecutionState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Throwable f2246c;

    public CameraProviderExecutionState(long j2, int i2, Throwable th) {
        this.f2245b = SystemClock.elapsedRealtime() - j2;
        if (th instanceof CameraValidator.CameraIdListIncorrectException) {
            this.f2244a = 2;
            this.f2246c = th;
            return;
        }
        if (!(th instanceof InitializationException)) {
            this.f2244a = 0;
            this.f2246c = th;
            return;
        }
        Throwable cause = th.getCause();
        th = cause != null ? cause : th;
        this.f2246c = th;
        if (th instanceof CameraUnavailableException) {
            this.f2244a = 2;
        } else if (th instanceof IllegalArgumentException) {
            this.f2244a = 1;
        } else {
            this.f2244a = 0;
        }
    }
}
