package androidx.camera.core.impl;

import androidx.camera.core.RetryPolicy;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class TimeoutRetryPolicy implements RetryPolicy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RetryPolicy f2364c;

    public TimeoutRetryPolicy(long j2, RetryPolicy retryPolicy) {
        Preconditions.b(j2 >= 0, "Timeout must be non-negative.");
        this.f2363b = j2;
        this.f2364c = retryPolicy;
    }

    @Override // androidx.camera.core.RetryPolicy
    public final long a() {
        return this.f2363b;
    }

    @Override // androidx.camera.core.RetryPolicy
    public final RetryPolicy.RetryConfig c(CameraProviderExecutionState cameraProviderExecutionState) {
        RetryPolicy.RetryConfig retryConfigC = this.f2364c.c(cameraProviderExecutionState);
        long j2 = this.f2363b;
        return (j2 <= 0 || cameraProviderExecutionState.f2245b < j2 - retryConfigC.f1954a) ? retryConfigC : RetryPolicy.RetryConfig.d;
    }
}
