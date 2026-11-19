package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.params.OutputConfiguration;
import android.os.Build;
import android.util.Size;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public final class OutputConfigurationCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OutputConfigurationCompatApi28Impl f1719a;

    public interface OutputConfigurationCompatImpl {
        void a(long j2);

        void b(Surface surface);

        void c(long j2);

        void d(String str);

        void e();

        void f(int i2);

        Object g();

        Surface getSurface();
    }

    public OutputConfigurationCompat(int i2, Surface surface) {
        if (Build.VERSION.SDK_INT >= 33) {
            this.f1719a = new OutputConfigurationCompatApi33Impl(new OutputConfiguration(i2, surface));
        } else {
            this.f1719a = new OutputConfigurationCompatApi28Impl(new OutputConfigurationCompatApi28Impl.OutputConfigurationParamsApi28(new OutputConfiguration(i2, surface)));
        }
    }

    public final void a(Surface surface) {
        this.f1719a.b(surface);
    }

    public final void b() {
        this.f1719a.e();
    }

    public final Surface c() {
        return this.f1719a.getSurface();
    }

    public final void d(long j2) {
        this.f1719a.c(j2);
    }

    public final void e(int i2) {
        this.f1719a.f(i2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof OutputConfigurationCompat)) {
            return false;
        }
        return this.f1719a.equals(((OutputConfigurationCompat) obj).f1719a);
    }

    public final void f(String str) {
        this.f1719a.d(str);
    }

    public final void g(long j2) {
        this.f1719a.a(j2);
    }

    public final int hashCode() {
        return this.f1719a.hashCode();
    }

    public OutputConfigurationCompat(Surface surface) {
        this(-1, surface);
    }

    public <T> OutputConfigurationCompat(Size size, Class<T> cls) {
        OutputConfiguration outputConfiguration = new OutputConfiguration(size, cls);
        if (Build.VERSION.SDK_INT >= 33) {
            this.f1719a = new OutputConfigurationCompatApi33Impl(outputConfiguration);
        } else {
            this.f1719a = new OutputConfigurationCompatApi28Impl(new OutputConfigurationCompatApi28Impl.OutputConfigurationParamsApi28(outputConfiguration));
        }
    }

    public OutputConfigurationCompat(OutputConfiguration outputConfiguration) {
        this.f1719a = new OutputConfigurationCompatApi33Impl(outputConfiguration);
    }

    public OutputConfigurationCompat(OutputConfigurationCompatApi28Impl outputConfigurationCompatApi28Impl) {
        this.f1719a = outputConfigurationCompatApi28Impl;
    }
}
