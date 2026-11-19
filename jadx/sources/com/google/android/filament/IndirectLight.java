package com.google.android.filament;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class IndirectLight {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f28549a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderFinalizer f28550a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28551b;

        public static class BuilderFinalizer {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f28552a;

            public BuilderFinalizer(long j2) {
                this.f28552a = j2;
            }

            public final void finalize() {
                long j2 = this.f28552a;
                try {
                    super.finalize();
                    IndirectLight.nDestroyBuilder(j2);
                } catch (Throwable unused) {
                    IndirectLight.nDestroyBuilder(j2);
                }
            }
        }

        public Builder() {
            long jNCreateBuilder = IndirectLight.nCreateBuilder();
            this.f28551b = jNCreateBuilder;
            this.f28550a = new BuilderFinalizer(jNCreateBuilder);
        }

        public final IndirectLight a(Engine engine) {
            long jNBuilderBuild = IndirectLight.nBuilderBuild(this.f28551b, engine.getNativeObject());
            if (jNBuilderBuild != 0) {
                return new IndirectLight(jNBuilderBuild);
            }
            md.k("Couldn't create IndirectLight");
            return null;
        }
    }

    public IndirectLight(long j2) {
        this.f28549a = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nBuilderBuild(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderReflections(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateBuilder();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroyBuilder(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nIntensity(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nIrradiance(long j2, int i2, float[] fArr);
}
