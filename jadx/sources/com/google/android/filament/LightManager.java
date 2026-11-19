package com.google.android.filament;

import defpackage.md;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class LightManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28553a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderFinalizer f28554a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28555b;

        public static class BuilderFinalizer {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f28556a;

            public BuilderFinalizer(long j2) {
                this.f28556a = j2;
            }

            public final void finalize() {
                long j2 = this.f28556a;
                try {
                    super.finalize();
                    LightManager.nDestroyBuilder(j2);
                } catch (Throwable unused) {
                    LightManager.nDestroyBuilder(j2);
                }
            }
        }

        public Builder(Type type) {
            long jNCreateBuilder = LightManager.nCreateBuilder(type.ordinal());
            this.f28555b = jNCreateBuilder;
            this.f28554a = new BuilderFinalizer(jNCreateBuilder);
        }

        public final void a(Engine engine, int i2) {
            if (LightManager.a(i2, this.f28555b, engine.getNativeObject())) {
                return;
            }
            md.k(n00.m(i2, "Couldn't create Light component for entity ", ", see log."));
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type DIRECTIONAL;
        public static final Type FOCUSED_SPOT;
        public static final Type POINT;
        public static final Type SPOT;
        public static final Type SUN;

        static {
            Type type = new Type("SUN", 0);
            SUN = type;
            Type type2 = new Type("DIRECTIONAL", 1);
            DIRECTIONAL = type2;
            Type type3 = new Type("POINT", 2);
            POINT = type3;
            Type type4 = new Type("FOCUSED_SPOT", 3);
            FOCUSED_SPOT = type4;
            Type type5 = new Type("SPOT", 4);
            SPOT = type5;
            $VALUES = new Type[]{type, type2, type3, type4, type5};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    static {
        Type.values();
    }

    public static /* bridge */ /* synthetic */ boolean a(int i2, long j2, long j3) {
        return nBuilderBuild(j2, j3, i2);
    }

    private static native boolean nBuilderBuild(long j2, long j3, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderCastShadows(long j2, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderColor(long j2, float f2, float f3, float f4);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderDirection(long j2, float f2, float f3, float f4);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderFalloff(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderIntensity(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderIntensityCandela(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderPosition(long j2, float f2, float f3, float f4);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderSpotLightCone(long j2, float f2, float f3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateBuilder(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroyBuilder(long j2);

    private static native int nGetInstance(long j2, int i2);

    private static native void nSetColor(long j2, int i2, float f2, float f3, float f4);

    private static native void nSetDirection(long j2, int i2, float f2, float f3, float f4);

    public final int l(int i2) {
        return nGetInstance(this.f28553a, i2);
    }

    public final void m(float f2, float f3, float f4, int i2) {
        nSetColor(this.f28553a, i2, f2, f3, f4);
    }

    public final void n(float f2, float f3, float f4, int i2) {
        nSetDirection(this.f28553a, i2, f2, f3, f4);
    }
}
