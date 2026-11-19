package androidx.camera.core;

import android.graphics.Rect;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.impl.CameraInternal;
import androidx.core.util.Consumer;
import java.io.Closeable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface SurfaceOutput extends Closeable {

    public static abstract class CameraInputInfo {
        public static CameraInputInfo f(Size size, Rect rect, CameraInternal cameraInternal, int i2, boolean z) {
            return new AutoValue_SurfaceOutput_CameraInputInfo(size, rect, cameraInternal, i2, z);
        }

        public abstract CameraInternal a();

        public abstract Rect b();

        public abstract Size c();

        public abstract boolean d();

        public abstract int e();
    }

    public static abstract class Event {

        @Retention(RetentionPolicy.SOURCE)
        public @interface EventCode {
        }

        public static Event a(SurfaceOutput surfaceOutput) {
            return new AutoValue_SurfaceOutput_Event(surfaceOutput);
        }
    }

    void Q0(float[] fArr, float[] fArr2);

    Surface R0(Executor executor, Consumer consumer);

    default int getFormat() {
        return 34;
    }

    Size getSize();

    default void v(float[] fArr, float[] fArr2, boolean z) {
    }
}
