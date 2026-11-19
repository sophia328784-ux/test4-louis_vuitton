package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class SessionConfigurationCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionConfigurationCompatApi28Impl f1723a;

    public static final class SessionConfigurationCompatApi28Impl implements SessionConfigurationCompatImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SessionConfiguration f1724a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f1725b;

        public SessionConfigurationCompatApi28Impl(int i2, List list, Executor executor, CameraCaptureSession.StateCallback stateCallback) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add((OutputConfiguration) ((OutputConfigurationCompat) it.next()).f1719a.g());
            }
            SessionConfiguration sessionConfiguration = new SessionConfiguration(i2, arrayList, executor, stateCallback);
            this.f1724a = sessionConfiguration;
            List<OutputConfiguration> outputConfigurations = sessionConfiguration.getOutputConfigurations();
            ArrayList arrayList2 = new ArrayList(outputConfigurations.size());
            for (OutputConfiguration outputConfiguration : outputConfigurations) {
                arrayList2.add(outputConfiguration == null ? null : new OutputConfigurationCompat(Build.VERSION.SDK_INT >= 33 ? new OutputConfigurationCompatApi33Impl(outputConfiguration) : new OutputConfigurationCompatApi28Impl(new OutputConfigurationCompatApi28Impl.OutputConfigurationParamsApi28(outputConfiguration))));
            }
            this.f1725b = Collections.unmodifiableList(arrayList2);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof SessionConfigurationCompatApi28Impl)) {
                return false;
            }
            return Objects.equals(this.f1724a, ((SessionConfigurationCompatApi28Impl) obj).f1724a);
        }

        public final int hashCode() {
            return this.f1724a.hashCode();
        }
    }

    public interface SessionConfigurationCompatImpl {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SessionMode {
    }

    public SessionConfigurationCompat(int i2, List<OutputConfigurationCompat> list, Executor executor, CameraCaptureSession.StateCallback stateCallback) {
        this.f1723a = new SessionConfigurationCompatApi28Impl(i2, list, executor, stateCallback);
    }

    public final void a(InputConfigurationCompat inputConfigurationCompat) {
        this.f1723a.f1724a.setInputConfiguration(inputConfigurationCompat.f1717a.f1718a);
    }

    public final void b(CaptureRequest captureRequest) {
        this.f1723a.f1724a.setSessionParameters(captureRequest);
    }

    public final SessionConfiguration c() {
        return this.f1723a.f1724a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionConfigurationCompat)) {
            return false;
        }
        return this.f1723a.equals(((SessionConfigurationCompat) obj).f1723a);
    }

    public final int hashCode() {
        return this.f1723a.f1724a.hashCode();
    }
}
