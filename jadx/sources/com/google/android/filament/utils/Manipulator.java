package com.google.android.filament.utils;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class Manipulator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f28660a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderFinalizer f28661a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28662b;

        public static class BuilderFinalizer {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f28663a;

            public BuilderFinalizer(long j2) {
                this.f28663a = j2;
            }

            public final void finalize() {
                long j2 = this.f28663a;
                try {
                    super.finalize();
                    Manipulator.nDestroyBuilder(j2);
                } catch (Throwable unused) {
                    Manipulator.nDestroyBuilder(j2);
                }
            }
        }

        public Builder() {
            long jNCreateBuilder = Manipulator.nCreateBuilder();
            this.f28662b = jNCreateBuilder;
            this.f28661a = new BuilderFinalizer(jNCreateBuilder);
        }

        public final Manipulator a(Mode mode) {
            long jA = Manipulator.a(mode.ordinal(), this.f28662b);
            if (jA != 0) {
                return new Manipulator(jA);
            }
            md.k("Couldn't create Manipulator");
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Mode {
        private static final /* synthetic */ Mode[] $VALUES;
        public static final Mode FREE_FLIGHT;
        public static final Mode MAP;
        public static final Mode ORBIT;

        static {
            Mode mode = new Mode("ORBIT", 0);
            ORBIT = mode;
            Mode mode2 = new Mode("MAP", 1);
            MAP = mode2;
            Mode mode3 = new Mode("FREE_FLIGHT", 2);
            FREE_FLIGHT = mode3;
            $VALUES = new Mode[]{mode, mode2, mode3};
        }

        public static Mode valueOf(String str) {
            return (Mode) Enum.valueOf(Mode.class, str);
        }

        public static Mode[] values() {
            return (Mode[]) $VALUES.clone();
        }
    }

    static {
        Mode.values();
    }

    public Manipulator(long j2) {
        this.f28660a = j2;
    }

    public static /* bridge */ /* synthetic */ long a(int i2, long j2) {
        return nBuilderBuild(j2, i2);
    }

    private static native long nBuilderBuild(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderOrbitHomePosition(long j2, float f2, float f3, float f4);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderTargetPosition(long j2, float f2, float f3, float f4);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderViewport(long j2, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateBuilder();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroyBuilder(long j2);

    private static native void nDestroyManipulator(long j2);

    private static native void nGetLookAtDouble(long j2, double[] dArr, double[] dArr2, double[] dArr3);

    private static native void nGrabBegin(long j2, int i2, int i3, boolean z);

    private static native void nGrabEnd(long j2);

    private static native void nGrabUpdate(long j2, int i2, int i3);

    private static native void nScroll(long j2, int i2, int i3, float f2);

    private static native void nSetViewport(long j2, int i2, int i3);

    public final void finalize() {
        long j2 = this.f28660a;
        try {
            super.finalize();
            nDestroyManipulator(j2);
        } catch (Throwable unused) {
            nDestroyManipulator(j2);
        }
    }

    public final void g(double[] dArr, double[] dArr2, double[] dArr3) {
        nGetLookAtDouble(this.f28660a, dArr, dArr2, dArr3);
    }

    public final void h(int i2, int i3, boolean z) {
        nGrabBegin(this.f28660a, i2, i3, z);
    }

    public final void i() {
        nGrabEnd(this.f28660a);
    }

    public final void j(int i2, int i3) {
        nGrabUpdate(this.f28660a, i2, i3);
    }

    public final void k(int i2, int i3, float f2) {
        nScroll(this.f28660a, i2, i3, f2);
    }

    public final void l(int i2, int i3) {
        nSetViewport(this.f28660a, i2, i3);
    }
}
