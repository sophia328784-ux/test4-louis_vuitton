package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.params.InputConfiguration;
import android.os.Build;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class InputConfigurationCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InputConfigurationCompatApi23Impl f1717a;

    public static final class InputConfigurationCompatApi31Impl extends InputConfigurationCompatApi23Impl {
    }

    public interface InputConfigurationCompatImpl {
        InputConfiguration a();
    }

    public InputConfigurationCompat(int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 31) {
            this.f1717a = new InputConfigurationCompatApi31Impl(i2, i3, i4);
        } else {
            this.f1717a = new InputConfigurationCompatApi23Impl(i2, i3, i4);
        }
    }

    public static InputConfigurationCompat a(Object obj) {
        if (obj == null) {
            return null;
        }
        return Build.VERSION.SDK_INT >= 31 ? new InputConfigurationCompat(new InputConfigurationCompatApi31Impl(obj)) : new InputConfigurationCompat(new InputConfigurationCompatApi23Impl(obj));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof InputConfigurationCompat)) {
            return false;
        }
        return this.f1717a.equals(((InputConfigurationCompat) obj).f1717a);
    }

    public final int hashCode() {
        return this.f1717a.hashCode();
    }

    public final String toString() {
        return this.f1717a.toString();
    }

    public static class InputConfigurationCompatApi23Impl implements InputConfigurationCompatImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InputConfiguration f1718a;

        public InputConfigurationCompatApi23Impl(int i2, int i3, int i4) {
            this(new InputConfiguration(i2, i3, i4));
        }

        @Override // androidx.camera.camera2.internal.compat.params.InputConfigurationCompat.InputConfigurationCompatImpl
        public final InputConfiguration a() {
            return this.f1718a;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof InputConfigurationCompatImpl)) {
                return false;
            }
            return Objects.equals(this.f1718a, ((InputConfigurationCompatImpl) obj).a());
        }

        public final int hashCode() {
            return this.f1718a.hashCode();
        }

        public final String toString() {
            return this.f1718a.toString();
        }

        public InputConfigurationCompatApi23Impl(Object obj) {
            this.f1718a = (InputConfiguration) obj;
        }
    }

    public InputConfigurationCompat(InputConfigurationCompatApi23Impl inputConfigurationCompatApi23Impl) {
        this.f1717a = inputConfigurationCompatApi23Impl;
    }
}
