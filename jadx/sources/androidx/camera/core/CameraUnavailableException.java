package androidx.camera.core;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class CameraUnavailableException extends Exception {

    @Retention(RetentionPolicy.SOURCE)
    public @interface Reason {
    }

    public CameraUnavailableException(int i2) {
    }

    public CameraUnavailableException(int i2, String str) {
        super(str);
    }

    public CameraUnavailableException(int i2, String str, Throwable th) {
        super(str, th);
    }

    public CameraUnavailableException(int i2, Throwable th) {
        super(th);
    }
}
