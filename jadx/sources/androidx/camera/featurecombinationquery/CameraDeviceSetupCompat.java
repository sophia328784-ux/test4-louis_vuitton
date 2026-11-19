package androidx.camera.featurecombinationquery;

import android.hardware.camera2.params.SessionConfiguration;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public interface CameraDeviceSetupCompat {

    public static final class SupportQueryResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f2679a;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Supported {
        }

        public SupportQueryResult(int i2, int i3, long j2) {
            this.f2679a = i2;
        }
    }

    SupportQueryResult a(SessionConfiguration sessionConfiguration);
}
