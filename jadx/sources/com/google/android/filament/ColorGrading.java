package com.google.android.filament;

/* JADX INFO: loaded from: classes2.dex */
public class ColorGrading {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f28529a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderFinalizer f28530a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28531b;

        public static class BuilderFinalizer {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f28532a;

            public BuilderFinalizer(long j2) {
                this.f28532a = j2;
            }

            public final void finalize() {
                long j2 = this.f28532a;
                try {
                    super.finalize();
                    ColorGrading.nDestroyBuilder(j2);
                } catch (Throwable unused) {
                    ColorGrading.nDestroyBuilder(j2);
                }
            }
        }

        public Builder() {
            long jNCreateBuilder = ColorGrading.nCreateBuilder();
            this.f28531b = jNCreateBuilder;
            this.f28530a = new BuilderFinalizer(jNCreateBuilder);
        }
    }

    public ColorGrading(long j2) {
        this.f28529a = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nBuilderBuild(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderContrast(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderExposure(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderSaturation(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderWhiteBalance(long j2, float f2, float f3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateBuilder();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroyBuilder(long j2);
}
