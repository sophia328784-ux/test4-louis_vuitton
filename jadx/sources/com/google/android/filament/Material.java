package com.google.android.filament;

import defpackage.md;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Material {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MaterialInstance f28558b;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ByteBuffer f28559a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f28560b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ShadowSamplingQuality f28561c = ShadowSamplingQuality.LOW;
        public final UboBatchingMode d = UboBatchingMode.DEFAULT;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class ShadowSamplingQuality {
            private static final /* synthetic */ ShadowSamplingQuality[] $VALUES;
            public static final ShadowSamplingQuality HARD;
            public static final ShadowSamplingQuality LOW;

            static {
                ShadowSamplingQuality shadowSamplingQuality = new ShadowSamplingQuality("HARD", 0);
                HARD = shadowSamplingQuality;
                ShadowSamplingQuality shadowSamplingQuality2 = new ShadowSamplingQuality("LOW", 1);
                LOW = shadowSamplingQuality2;
                $VALUES = new ShadowSamplingQuality[]{shadowSamplingQuality, shadowSamplingQuality2};
            }

            public static ShadowSamplingQuality valueOf(String str) {
                return (ShadowSamplingQuality) Enum.valueOf(ShadowSamplingQuality.class, str);
            }

            public static ShadowSamplingQuality[] values() {
                return (ShadowSamplingQuality[]) $VALUES.clone();
            }
        }

        public final Material a(Engine engine) {
            long jA = Material.a(engine.getNativeObject(), this.f28559a, this.f28560b, this.f28561c.ordinal(), this.d.ordinal());
            if (jA != 0) {
                return new Material(jA);
            }
            md.k("Couldn't create Material");
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class CullingMode {
        private static final /* synthetic */ CullingMode[] $VALUES;
        public static final CullingMode BACK;
        public static final CullingMode FRONT;
        public static final CullingMode FRONT_AND_BACK;
        public static final CullingMode NONE;

        static {
            CullingMode cullingMode = new CullingMode("NONE", 0);
            NONE = cullingMode;
            CullingMode cullingMode2 = new CullingMode("FRONT", 1);
            FRONT = cullingMode2;
            CullingMode cullingMode3 = new CullingMode("BACK", 2);
            BACK = cullingMode3;
            CullingMode cullingMode4 = new CullingMode("FRONT_AND_BACK", 3);
            FRONT_AND_BACK = cullingMode4;
            $VALUES = new CullingMode[]{cullingMode, cullingMode2, cullingMode3, cullingMode4};
        }

        public static CullingMode valueOf(String str) {
            return (CullingMode) Enum.valueOf(CullingMode.class, str);
        }

        public static CullingMode[] values() {
            return (CullingMode[]) $VALUES.clone();
        }
    }

    public static class Parameter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Type[] f28562a = Type.values();
        private static final int SAMPLER_OFFSET = Type.MAT4.ordinal() + 1;
        private static final int SUBPASS_OFFSET = Type.SAMPLER_3D.ordinal() + 1;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class Precision {
            private static final /* synthetic */ Precision[] $VALUES;
            public static final Precision DEFAULT;
            public static final Precision HIGH;
            public static final Precision LOW;
            public static final Precision MEDIUM;

            static {
                Precision precision = new Precision("LOW", 0);
                LOW = precision;
                Precision precision2 = new Precision("MEDIUM", 1);
                MEDIUM = precision2;
                Precision precision3 = new Precision("HIGH", 2);
                HIGH = precision3;
                Precision precision4 = new Precision("DEFAULT", 3);
                DEFAULT = precision4;
                $VALUES = new Precision[]{precision, precision2, precision3, precision4};
            }

            public static Precision valueOf(String str) {
                return (Precision) Enum.valueOf(Precision.class, str);
            }

            public static Precision[] values() {
                return (Precision[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class Type {
            private static final /* synthetic */ Type[] $VALUES;
            public static final Type BOOL;
            public static final Type BOOL2;
            public static final Type BOOL3;
            public static final Type BOOL4;
            public static final Type FLOAT;
            public static final Type FLOAT2;
            public static final Type FLOAT3;
            public static final Type FLOAT4;
            public static final Type INT;
            public static final Type INT2;
            public static final Type INT3;
            public static final Type INT4;
            public static final Type MAT3;
            public static final Type MAT4;
            public static final Type SAMPLER_2D;
            public static final Type SAMPLER_2D_ARRAY;
            public static final Type SAMPLER_3D;
            public static final Type SAMPLER_CUBEMAP;
            public static final Type SAMPLER_EXTERNAL;
            public static final Type SUBPASS_INPUT;
            public static final Type UINT;
            public static final Type UINT2;
            public static final Type UINT3;
            public static final Type UINT4;

            static {
                Type type = new Type("BOOL", 0);
                BOOL = type;
                Type type2 = new Type("BOOL2", 1);
                BOOL2 = type2;
                Type type3 = new Type("BOOL3", 2);
                BOOL3 = type3;
                Type type4 = new Type("BOOL4", 3);
                BOOL4 = type4;
                Type type5 = new Type("FLOAT", 4);
                FLOAT = type5;
                Type type6 = new Type("FLOAT2", 5);
                FLOAT2 = type6;
                Type type7 = new Type("FLOAT3", 6);
                FLOAT3 = type7;
                Type type8 = new Type("FLOAT4", 7);
                FLOAT4 = type8;
                Type type9 = new Type("INT", 8);
                INT = type9;
                Type type10 = new Type("INT2", 9);
                INT2 = type10;
                Type type11 = new Type("INT3", 10);
                INT3 = type11;
                Type type12 = new Type("INT4", 11);
                INT4 = type12;
                Type type13 = new Type("UINT", 12);
                UINT = type13;
                Type type14 = new Type("UINT2", 13);
                UINT2 = type14;
                Type type15 = new Type("UINT3", 14);
                UINT3 = type15;
                Type type16 = new Type("UINT4", 15);
                UINT4 = type16;
                Type type17 = new Type("MAT3", 16);
                MAT3 = type17;
                Type type18 = new Type("MAT4", 17);
                MAT4 = type18;
                Type type19 = new Type("SAMPLER_2D", 18);
                SAMPLER_2D = type19;
                Type type20 = new Type("SAMPLER_2D_ARRAY", 19);
                SAMPLER_2D_ARRAY = type20;
                Type type21 = new Type("SAMPLER_CUBEMAP", 20);
                SAMPLER_CUBEMAP = type21;
                Type type22 = new Type("SAMPLER_EXTERNAL", 21);
                SAMPLER_EXTERNAL = type22;
                Type type23 = new Type("SAMPLER_3D", 22);
                SAMPLER_3D = type23;
                Type type24 = new Type("SUBPASS_INPUT", 23);
                SUBPASS_INPUT = type24;
                $VALUES = new Type[]{type, type2, type3, type4, type5, type6, type7, type8, type9, type10, type11, type12, type13, type14, type15, type16, type17, type18, type19, type20, type21, type22, type23, type24};
            }

            public static Type valueOf(String str) {
                return (Type) Enum.valueOf(Type.class, str);
            }

            public static Type[] values() {
                return (Type[]) $VALUES.clone();
            }
        }

        private static void add(List<Parameter> list, String str, int i2, int i3, int i4) {
            Type type = f28562a[i2];
            Precision precision = Precision.values()[i3];
            list.add(new Parameter());
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class UboBatchingMode {
        private static final /* synthetic */ UboBatchingMode[] $VALUES;
        public static final UboBatchingMode DEFAULT;
        public static final UboBatchingMode DISABLED;

        static {
            UboBatchingMode uboBatchingMode = new UboBatchingMode("DEFAULT", 0);
            DEFAULT = uboBatchingMode;
            UboBatchingMode uboBatchingMode2 = new UboBatchingMode("DISABLED", 1);
            DISABLED = uboBatchingMode2;
            $VALUES = new UboBatchingMode[]{uboBatchingMode, uboBatchingMode2};
        }

        public static UboBatchingMode valueOf(String str) {
            return (UboBatchingMode) Enum.valueOf(UboBatchingMode.class, str);
        }

        public static UboBatchingMode[] values() {
            return (UboBatchingMode[]) $VALUES.clone();
        }
    }

    public Material(long j2) {
        this.f28557a = j2;
        long jNGetDefaultInstance = nGetDefaultInstance(j2);
        MaterialInstance materialInstance = new MaterialInstance();
        c();
        materialInstance.f28563a = jNGetDefaultInstance;
        this.f28558b = materialInstance;
    }

    public static /* bridge */ /* synthetic */ long a(long j2, ByteBuffer byteBuffer, int i2, int i3, int i4) {
        return nBuilderBuild(j2, byteBuffer, i2, 0, i3, i4);
    }

    private static native long nBuilderBuild(long j2, Buffer buffer, int i2, int i3, int i4, int i5);

    private static native long nCreateInstance(long j2);

    private static native long nGetDefaultInstance(long j2);

    public final MaterialInstance b() {
        long jNCreateInstance = nCreateInstance(c());
        if (jNCreateInstance == 0) {
            md.k("Couldn't create MaterialInstance");
            return null;
        }
        MaterialInstance materialInstance = new MaterialInstance();
        c();
        materialInstance.f28563a = jNCreateInstance;
        return materialInstance;
    }

    public final long c() {
        long j2 = this.f28557a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Calling method on destroyed Material");
        return 0L;
    }
}
