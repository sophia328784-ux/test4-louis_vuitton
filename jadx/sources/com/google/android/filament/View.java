package com.google.android.filament;

import defpackage.md;
import defpackage.y81;
import java.util.concurrent.ExecutorService;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes2.dex */
public class View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Viewport f28599b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Deprecated
    public static final class AmbientOcclusion {
        private static final /* synthetic */ AmbientOcclusion[] $VALUES;
        public static final AmbientOcclusion NONE;
        public static final AmbientOcclusion SSAO;

        static {
            AmbientOcclusion ambientOcclusion = new AmbientOcclusion("NONE", 0);
            NONE = ambientOcclusion;
            AmbientOcclusion ambientOcclusion2 = new AmbientOcclusion("SSAO", 1);
            SSAO = ambientOcclusion2;
            $VALUES = new AmbientOcclusion[]{ambientOcclusion, ambientOcclusion2};
        }

        public static AmbientOcclusion valueOf(String str) {
            return (AmbientOcclusion) Enum.valueOf(AmbientOcclusion.class, str);
        }

        public static AmbientOcclusion[] values() {
            return (AmbientOcclusion[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class AntiAliasing {
        private static final /* synthetic */ AntiAliasing[] $VALUES;
        public static final AntiAliasing FXAA;
        public static final AntiAliasing NONE;

        static {
            AntiAliasing antiAliasing = new AntiAliasing("NONE", 0);
            NONE = antiAliasing;
            AntiAliasing antiAliasing2 = new AntiAliasing("FXAA", 1);
            FXAA = antiAliasing2;
            $VALUES = new AntiAliasing[]{antiAliasing, antiAliasing2};
        }

        public static AntiAliasing valueOf(String str) {
            return (AntiAliasing) Enum.valueOf(AntiAliasing.class, str);
        }

        public static AntiAliasing[] values() {
            return (AntiAliasing[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: loaded from: classes4.dex */
    public static final class BlendMode {
        private static final /* synthetic */ BlendMode[] $VALUES;
        public static final BlendMode OPAQUE;
        public static final BlendMode TRANSLUCENT;

        static {
            BlendMode blendMode = new BlendMode("OPAQUE", 0);
            OPAQUE = blendMode;
            BlendMode blendMode2 = new BlendMode("TRANSLUCENT", 1);
            TRANSLUCENT = blendMode2;
            $VALUES = new BlendMode[]{blendMode, blendMode2};
        }

        public static BlendMode valueOf(String str) {
            return (BlendMode) Enum.valueOf(BlendMode.class, str);
        }

        public static BlendMode[] values() {
            return (BlendMode[]) $VALUES.clone();
        }
    }

    public static class BloomOptions {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f28600a = 0.1f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BlendMode f28601b = BlendMode.ADD;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f28602c = true;
        public boolean d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f28603e = 1000.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f28604f = 0.4f;
        public float g = 10.0f;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class BlendMode {
            private static final /* synthetic */ BlendMode[] $VALUES;
            public static final BlendMode ADD;
            public static final BlendMode INTERPOLATE;

            static {
                BlendMode blendMode = new BlendMode("ADD", 0);
                ADD = blendMode;
                BlendMode blendMode2 = new BlendMode("INTERPOLATE", 1);
                INTERPOLATE = blendMode2;
                $VALUES = new BlendMode[]{blendMode, blendMode2};
            }

            public static BlendMode valueOf(String str) {
                return (BlendMode) Enum.valueOf(BlendMode.class, str);
            }

            public static BlendMode[] values() {
                return (BlendMode[]) $VALUES.clone();
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Dithering {
        private static final /* synthetic */ Dithering[] $VALUES;
        public static final Dithering NONE;
        public static final Dithering TEMPORAL;

        static {
            Dithering dithering = new Dithering("NONE", 0);
            NONE = dithering;
            Dithering dithering2 = new Dithering("TEMPORAL", 1);
            TEMPORAL = dithering2;
            $VALUES = new Dithering[]{dithering, dithering2};
        }

        public static Dithering valueOf(String str) {
            return (Dithering) Enum.valueOf(Dithering.class, str);
        }

        public static Dithering[] values() {
            return (Dithering[]) $VALUES.clone();
        }
    }

    public static class InternalOnPickCallback implements Runnable {
        float mDepth;
        float mFragCoordsX;
        float mFragCoordsY;
        float mFragCoordsZ;
        private final PickingQueryResult mPickingQueryResult = new PickingQueryResult();
        int mRenderable;
        private final OnPickCallback mUserCallback;

        public InternalOnPickCallback(OnPickCallback onPickCallback) {
            this.mUserCallback = onPickCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            PickingQueryResult pickingQueryResult = this.mPickingQueryResult;
            pickingQueryResult.f28606a = this.mRenderable;
            float[] fArr = pickingQueryResult.f28607b;
            fArr[0] = this.mFragCoordsX;
            fArr[1] = this.mFragCoordsY;
            fArr[2] = this.mFragCoordsZ;
            this.mUserCallback.a(pickingQueryResult);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class MultiSampleAntiAliasingOptions {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f28605a = false;
    }

    public interface OnPickCallback {
        void a(PickingQueryResult pickingQueryResult);
    }

    public static class PickingQueryResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f28606a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float[] f28607b = new float[3];
    }

    static {
        AntiAliasing.values();
        Dithering.values();
        AmbientOcclusion.values();
    }

    private static native void nPick(long j2, int i2, int i3, Object obj, InternalOnPickCallback internalOnPickCallback);

    private static native void nSetAntiAliasing(long j2, int i2);

    private static native void nSetBlendMode(long j2, int i2);

    private static native void nSetBloomOptions(long j2, long j3, float f2, float f3, int i2, int i3, int i4, boolean z, boolean z2, float f4, boolean z3, boolean z4, float f5, int i5, float f6, float f7, float f8, float f9, float f10);

    private static native void nSetCamera(long j2, long j3);

    private static native void nSetColorGrading(long j2, long j3);

    private static native void nSetMultiSampleAntiAliasingOptions(long j2, boolean z, int i2, boolean z2);

    private static native void nSetScene(long j2, long j3);

    private static native void nSetViewport(long j2, int i2, int i3, int i4, int i5);

    public final long a() {
        long j2 = this.f28598a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Calling method on destroyed View");
        return 0L;
    }

    public final void b(int i2, int i3, ExecutorService executorService, y81 y81Var) {
        nPick(a(), i2, i3, executorService, new InternalOnPickCallback(y81Var));
    }

    public final void c(AntiAliasing antiAliasing) {
        nSetAntiAliasing(a(), antiAliasing.ordinal());
    }

    public final void d(BlendMode blendMode) {
        nSetBlendMode(a(), blendMode.ordinal());
    }

    public final void e(BloomOptions bloomOptions) {
        nSetBloomOptions(a(), 0L, 0.2f, bloomOptions.f28600a, KyberEngine.KyberPolyBytes, 6, bloomOptions.f28601b.ordinal(), bloomOptions.f28602c, bloomOptions.d, bloomOptions.f28603e, false, true, 0.005f, 4, 0.6f, 10.0f, 0.1f, bloomOptions.f28604f, bloomOptions.g);
    }

    public final void f(Camera camera) {
        nSetCamera(a(), camera.a());
    }

    public final void g(ColorGrading colorGrading) {
        long jA = a();
        long j2 = colorGrading.f28529a;
        if (j2 != 0) {
            nSetColorGrading(jA, j2);
        } else {
            md.k("Calling method on destroyed ColorGrading");
        }
    }

    public final void h(MultiSampleAntiAliasingOptions multiSampleAntiAliasingOptions) {
        nSetMultiSampleAntiAliasingOptions(a(), multiSampleAntiAliasingOptions.f28605a, 4, false);
    }

    public final void i(Scene scene) {
        nSetScene(a(), scene.c());
    }

    public final void j(Viewport viewport) {
        this.f28599b = viewport;
        long jA = a();
        Viewport viewport2 = this.f28599b;
        nSetViewport(jA, viewport2.f28608a, viewport2.f28609b, viewport2.f28610c, viewport2.d);
    }
}
