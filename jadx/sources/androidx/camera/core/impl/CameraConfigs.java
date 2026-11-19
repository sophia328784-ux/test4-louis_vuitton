package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraConfigs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CameraConfig f2229a = new DefaultCameraConfig();

    public static final class DefaultCameraConfig implements CameraConfig {
        public final Identifier M = new AutoValue_Identifier(new Object());

        @Override // androidx.camera.core.impl.CameraConfig
        public final Identifier Y() {
            return this.M;
        }

        @Override // androidx.camera.core.impl.ReadableConfig
        public final Config l() {
            return OptionsBundle.O;
        }
    }
}
