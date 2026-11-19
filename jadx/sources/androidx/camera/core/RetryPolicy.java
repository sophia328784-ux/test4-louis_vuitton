package androidx.camera.core;

import androidx.camera.core.impl.CameraProviderExecutionState;
import androidx.camera.core.impl.CameraProviderInitRetryPolicy;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public interface RetryPolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CameraProviderInitRetryPolicy.Legacy f1949a = new CameraProviderInitRetryPolicy.Legacy(6000);

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final RetryPolicy f1950a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f1951b;

        public Builder(RetryPolicy retryPolicy) {
            this.f1950a = retryPolicy;
            this.f1951b = retryPolicy.a();
        }
    }

    public interface ExecutionState {

        @Retention(RetentionPolicy.SOURCE)
        public @interface Status {
        }
    }

    public static final class RetryConfig {
        public static final RetryConfig d = new RetryConfig(false, false, 0);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final RetryConfig f1952e = new RetryConfig(true, false, 500);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final RetryConfig f1953f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f1954a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f1955b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f1956c;

        static {
            new RetryConfig(true, false, 100L);
            f1953f = new RetryConfig(false, true, 0L);
        }

        public RetryConfig(boolean z, boolean z2, long j2) {
            this.f1955b = z;
            this.f1954a = j2;
            if (z2) {
                Preconditions.b(!z, "shouldRetry must be false when completeWithoutFailure is set to true");
            }
            this.f1956c = z2;
        }
    }

    static {
        new CameraProviderInitRetryPolicy(6000L);
    }

    default long a() {
        return 0L;
    }

    RetryConfig c(CameraProviderExecutionState cameraProviderExecutionState);
}
