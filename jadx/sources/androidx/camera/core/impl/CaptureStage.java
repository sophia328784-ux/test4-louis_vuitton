package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes.dex */
public interface CaptureStage {

    public static final class DefaultCaptureStage implements CaptureStage {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CaptureConfig f2280a = new CaptureConfig.Builder().e();

        @Override // androidx.camera.core.impl.CaptureStage
        public final CaptureConfig a() {
            return this.f2280a;
        }
    }

    CaptureConfig a();
}
