package androidx.camera.core;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public interface CameraControl {
    ListenableFuture b(float f2);

    ListenableFuture d(boolean z);

    public static final class OperationCanceledException extends Exception {
        public OperationCanceledException(String str) {
            super(str);
        }

        public OperationCanceledException(String str, Throwable th) {
            super(str, th);
        }
    }
}
