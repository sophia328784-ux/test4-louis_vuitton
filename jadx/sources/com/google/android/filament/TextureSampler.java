package com.google.android.filament;

/* JADX INFO: loaded from: classes2.dex */
public class TextureSampler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28591a;

    /* JADX INFO: renamed from: com.google.android.filament.TextureSampler$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f28592a;

        static {
            int[] iArr = new int[MagFilter.values().length];
            f28592a = iArr;
            try {
                iArr[MagFilter.NEAREST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28592a[MagFilter.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class CompareFunction {
        private static final /* synthetic */ CompareFunction[] $VALUES;
        public static final CompareFunction ALWAYS;
        public static final CompareFunction EQUAL;
        public static final CompareFunction GREATER;
        public static final CompareFunction GREATER_EQUAL;
        public static final CompareFunction LESS;
        public static final CompareFunction LESS_EQUAL;
        public static final CompareFunction NEVER;
        public static final CompareFunction NOT_EQUAL;

        static {
            CompareFunction compareFunction = new CompareFunction("LESS_EQUAL", 0);
            LESS_EQUAL = compareFunction;
            CompareFunction compareFunction2 = new CompareFunction("GREATER_EQUAL", 1);
            GREATER_EQUAL = compareFunction2;
            CompareFunction compareFunction3 = new CompareFunction("LESS", 2);
            LESS = compareFunction3;
            CompareFunction compareFunction4 = new CompareFunction("GREATER", 3);
            GREATER = compareFunction4;
            CompareFunction compareFunction5 = new CompareFunction("EQUAL", 4);
            EQUAL = compareFunction5;
            CompareFunction compareFunction6 = new CompareFunction("NOT_EQUAL", 5);
            NOT_EQUAL = compareFunction6;
            CompareFunction compareFunction7 = new CompareFunction("ALWAYS", 6);
            ALWAYS = compareFunction7;
            CompareFunction compareFunction8 = new CompareFunction("NEVER", 7);
            NEVER = compareFunction8;
            $VALUES = new CompareFunction[]{compareFunction, compareFunction2, compareFunction3, compareFunction4, compareFunction5, compareFunction6, compareFunction7, compareFunction8};
        }

        public static CompareFunction valueOf(String str) {
            return (CompareFunction) Enum.valueOf(CompareFunction.class, str);
        }

        public static CompareFunction[] values() {
            return (CompareFunction[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class CompareMode {
        private static final /* synthetic */ CompareMode[] $VALUES;
        public static final CompareMode COMPARE_TO_TEXTURE;
        public static final CompareMode NONE;

        static {
            CompareMode compareMode = new CompareMode("NONE", 0);
            NONE = compareMode;
            CompareMode compareMode2 = new CompareMode("COMPARE_TO_TEXTURE", 1);
            COMPARE_TO_TEXTURE = compareMode2;
            $VALUES = new CompareMode[]{compareMode, compareMode2};
        }

        public static CompareMode valueOf(String str) {
            return (CompareMode) Enum.valueOf(CompareMode.class, str);
        }

        public static CompareMode[] values() {
            return (CompareMode[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class MagFilter {
        private static final /* synthetic */ MagFilter[] $VALUES;
        public static final MagFilter LINEAR;
        public static final MagFilter NEAREST;

        static {
            MagFilter magFilter = new MagFilter("NEAREST", 0);
            NEAREST = magFilter;
            MagFilter magFilter2 = new MagFilter("LINEAR", 1);
            LINEAR = magFilter2;
            $VALUES = new MagFilter[]{magFilter, magFilter2};
        }

        public static MagFilter valueOf(String str) {
            return (MagFilter) Enum.valueOf(MagFilter.class, str);
        }

        public static MagFilter[] values() {
            return (MagFilter[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class MinFilter {
        private static final /* synthetic */ MinFilter[] $VALUES;
        public static final MinFilter LINEAR;
        public static final MinFilter LINEAR_MIPMAP_LINEAR;
        public static final MinFilter LINEAR_MIPMAP_NEAREST;
        public static final MinFilter NEAREST;
        public static final MinFilter NEAREST_MIPMAP_LINEAR;
        public static final MinFilter NEAREST_MIPMAP_NEAREST;

        static {
            MinFilter minFilter = new MinFilter("NEAREST", 0);
            NEAREST = minFilter;
            MinFilter minFilter2 = new MinFilter("LINEAR", 1);
            LINEAR = minFilter2;
            MinFilter minFilter3 = new MinFilter("NEAREST_MIPMAP_NEAREST", 2);
            NEAREST_MIPMAP_NEAREST = minFilter3;
            MinFilter minFilter4 = new MinFilter("LINEAR_MIPMAP_NEAREST", 3);
            LINEAR_MIPMAP_NEAREST = minFilter4;
            MinFilter minFilter5 = new MinFilter("NEAREST_MIPMAP_LINEAR", 4);
            NEAREST_MIPMAP_LINEAR = minFilter5;
            MinFilter minFilter6 = new MinFilter("LINEAR_MIPMAP_LINEAR", 5);
            LINEAR_MIPMAP_LINEAR = minFilter6;
            $VALUES = new MinFilter[]{minFilter, minFilter2, minFilter3, minFilter4, minFilter5, minFilter6};
        }

        public static MinFilter valueOf(String str) {
            return (MinFilter) Enum.valueOf(MinFilter.class, str);
        }

        public static MinFilter[] values() {
            return (MinFilter[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class WrapMode {
        private static final /* synthetic */ WrapMode[] $VALUES;
        public static final WrapMode CLAMP_TO_EDGE;
        public static final WrapMode MIRRORED_REPEAT;
        public static final WrapMode REPEAT;

        static {
            WrapMode wrapMode = new WrapMode("CLAMP_TO_EDGE", 0);
            CLAMP_TO_EDGE = wrapMode;
            WrapMode wrapMode2 = new WrapMode("REPEAT", 1);
            REPEAT = wrapMode2;
            WrapMode wrapMode3 = new WrapMode("MIRRORED_REPEAT", 2);
            MIRRORED_REPEAT = wrapMode3;
            $VALUES = new WrapMode[]{wrapMode, wrapMode2, wrapMode3};
        }

        public static WrapMode valueOf(String str) {
            return (WrapMode) Enum.valueOf(WrapMode.class, str);
        }

        public static WrapMode[] values() {
            return (WrapMode[]) $VALUES.clone();
        }
    }

    public TextureSampler(MinFilter minFilter, MagFilter magFilter, WrapMode wrapMode, WrapMode wrapMode2, WrapMode wrapMode3) {
        this.f28591a = 0L;
        this.f28591a = nCreateSampler(minFilter.ordinal(), magFilter.ordinal(), wrapMode.ordinal(), wrapMode2.ordinal(), wrapMode3.ordinal());
    }

    private static native long nCreateCompareSampler(int i2, int i3);

    private static native long nCreateSampler(int i2, int i3, int i4, int i5, int i6);

    private static native long nSetAnisotropy(long j2, float f2);

    private static native long nSetMagFilter(long j2, int i2);

    private static native long nSetMinFilter(long j2, int i2);

    public final void a() {
        this.f28591a = nSetAnisotropy(this.f28591a, 8.0f);
    }

    public final void b(MagFilter magFilter) {
        this.f28591a = nSetMagFilter(this.f28591a, magFilter.ordinal());
    }

    public final void c(MinFilter minFilter) {
        this.f28591a = nSetMinFilter(this.f28591a, minFilter.ordinal());
    }

    public TextureSampler(MagFilter magFilter) {
        this(magFilter, WrapMode.CLAMP_TO_EDGE);
    }

    public TextureSampler(MinFilter minFilter, MagFilter magFilter, WrapMode wrapMode) {
        this(minFilter, magFilter, wrapMode, wrapMode, wrapMode);
    }

    public TextureSampler() {
        this(MinFilter.LINEAR_MIPMAP_LINEAR, MagFilter.LINEAR, WrapMode.REPEAT);
    }

    public TextureSampler(CompareMode compareMode) {
        this(compareMode, CompareFunction.LESS_EQUAL);
    }

    public TextureSampler(CompareMode compareMode, CompareFunction compareFunction) {
        this.f28591a = 0L;
        this.f28591a = nCreateCompareSampler(compareMode.ordinal(), compareFunction.ordinal());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextureSampler(MagFilter magFilter, WrapMode wrapMode) {
        MinFilter minFilter;
        if (AnonymousClass1.f28592a[magFilter.ordinal()] != 1) {
            minFilter = MinFilter.LINEAR;
        } else {
            minFilter = MinFilter.NEAREST;
        }
        this(minFilter, magFilter, wrapMode);
    }
}
