package androidx.camera.core;

import androidx.lifecycle.LiveData;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public interface CameraInfo {

    @Retention(RetentionPolicy.SOURCE)
    public @interface ImplementationType {
    }

    LiveData c();

    int d();

    default int g() {
        return -1;
    }

    boolean i();

    String s();

    int t(int i2);

    LiveData w();
}
