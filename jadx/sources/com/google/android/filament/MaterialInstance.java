package com.google.android.filament;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialInstance {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28563a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class FloatElement {
        private static final /* synthetic */ FloatElement[] $VALUES;
        public static final FloatElement FLOAT;
        public static final FloatElement FLOAT2;
        public static final FloatElement FLOAT3;
        public static final FloatElement FLOAT4;
        public static final FloatElement MAT3;
        public static final FloatElement MAT4;

        static {
            FloatElement floatElement = new FloatElement("FLOAT", 0);
            FLOAT = floatElement;
            FloatElement floatElement2 = new FloatElement("FLOAT2", 1);
            FLOAT2 = floatElement2;
            FloatElement floatElement3 = new FloatElement("FLOAT3", 2);
            FLOAT3 = floatElement3;
            FloatElement floatElement4 = new FloatElement("FLOAT4", 3);
            FLOAT4 = floatElement4;
            FloatElement floatElement5 = new FloatElement("MAT3", 4);
            MAT3 = floatElement5;
            FloatElement floatElement6 = new FloatElement("MAT4", 5);
            MAT4 = floatElement6;
            $VALUES = new FloatElement[]{floatElement, floatElement2, floatElement3, floatElement4, floatElement5, floatElement6};
        }

        public static FloatElement valueOf(String str) {
            return (FloatElement) Enum.valueOf(FloatElement.class, str);
        }

        public static FloatElement[] values() {
            return (FloatElement[]) $VALUES.clone();
        }
    }

    static {
        Material.CullingMode.values();
    }

    public MaterialInstance(Engine engine, long j2) {
        this.f28563a = j2;
        nGetMaterial(j2);
    }

    private static native long nGetMaterial(long j2);

    private static native void nSetColorWrite(long j2, boolean z);

    private static native void nSetCullingMode(long j2, long j3);

    private static native void nSetDepthCulling(long j2, boolean z);

    private static native void nSetDepthWrite(long j2, boolean z);

    private static native void nSetDoubleSided(long j2, boolean z);

    private static native void nSetFloatParameterArray(long j2, String str, int i2, float[] fArr, int i3, int i4);

    private static native void nSetParameterFloat(long j2, String str, float f2);

    private static native void nSetParameterTexture(long j2, String str, long j3, long j4);

    public final long a() {
        long j2 = this.f28563a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Calling method on destroyed MaterialInstance");
        return 0L;
    }

    public final void b() {
        nSetColorWrite(a(), false);
    }

    public final void c(Material.CullingMode cullingMode) {
        nSetCullingMode(a(), cullingMode.ordinal());
    }

    public final void d() {
        nSetDepthCulling(a(), true);
    }

    public final void e() {
        nSetDepthWrite(a(), true);
    }

    public final void f() {
        nSetDoubleSided(a(), true);
    }

    public final void g(FloatElement floatElement, float[] fArr) {
        nSetFloatParameterArray(a(), "uvTransform", floatElement.ordinal(), fArr, 0, 4);
    }

    public final void h(String str, float f2) {
        nSetParameterFloat(a(), str, f2);
    }

    public final void i(String str, Texture texture, TextureSampler textureSampler) {
        nSetParameterTexture(a(), str, texture.getNativeObject(), textureSampler.f28591a);
    }

    public MaterialInstance(long j2) {
        this.f28563a = j2;
        nGetMaterial(j2);
    }
}
