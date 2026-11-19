package androidx.camera.core.impl;

import androidx.camera.core.Logger;
import androidx.camera.core.RetryPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class CameraProviderInitRetryPolicy implements RetryPolicyInternal {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeoutRetryPolicy f2247b;

    public static final class Legacy implements RetryPolicyInternal {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CameraProviderInitRetryPolicy f2249b;

        public Legacy(long j2) {
            this.f2249b = new CameraProviderInitRetryPolicy(j2);
        }

        @Override // androidx.camera.core.RetryPolicy
        public final long a() {
            return this.f2249b.f2247b.f2363b;
        }

        @Override // androidx.camera.core.impl.RetryPolicyInternal
        public final RetryPolicy b(long j2) {
            return new Legacy(j2);
        }

        @Override // androidx.camera.core.RetryPolicy
        public final RetryPolicy.RetryConfig c(CameraProviderExecutionState cameraProviderExecutionState) {
            if (this.f2249b.f2247b.c(cameraProviderExecutionState).f1955b) {
                return RetryPolicy.RetryConfig.f1952e;
            }
            Throwable th = cameraProviderExecutionState.f2246c;
            if (th instanceof CameraValidator.CameraIdListIncorrectException) {
                Logger.a("CameraX");
                if (((CameraValidator.CameraIdListIncorrectException) th).f2264b > 0) {
                    return RetryPolicy.RetryConfig.f1953f;
                }
            }
            return RetryPolicy.RetryConfig.d;
        }
    }

    public CameraProviderInitRetryPolicy(final long j2) {
        this.f2247b = new TimeoutRetryPolicy(j2, new RetryPolicy() { // from class: androidx.camera.core.impl.CameraProviderInitRetryPolicy.1
            @Override // androidx.camera.core.RetryPolicy
            public final long a() {
                return j2;
            }

            @Override // androidx.camera.core.RetryPolicy
            public final RetryPolicy.RetryConfig c(CameraProviderExecutionState cameraProviderExecutionState) {
                return cameraProviderExecutionState.f2244a == 1 ? RetryPolicy.RetryConfig.d : RetryPolicy.RetryConfig.f1952e;
            }
        });
    }

    @Override // androidx.camera.core.RetryPolicy
    public final long a() {
        return this.f2247b.f2363b;
    }

    @Override // androidx.camera.core.impl.RetryPolicyInternal
    public final RetryPolicy b(long j2) {
        return new CameraProviderInitRetryPolicy(j2);
    }

    @Override // androidx.camera.core.RetryPolicy
    public final RetryPolicy.RetryConfig c(CameraProviderExecutionState cameraProviderExecutionState) {
        return this.f2247b.c(cameraProviderExecutionState);
    }
}
