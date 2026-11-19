package com.cyberlink.clgpuimage.util;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TextureAlignmentUtil {

    /* JADX INFO: renamed from: com.cyberlink.clgpuimage.util.TextureAlignmentUtil$1, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25837a;

        static {
            int[] iArr = new int[AlignMode.values().length];
            f25837a = iArr;
            try {
                iArr[AlignMode.ALIGN_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f25837a[AlignMode.ALIGN_BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f25837a[AlignMode.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f25837a[AlignMode.ALIGN_STRETCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class AlignMode {
        public static final AlignMode ALIGN_BOTTOM;
        public static final AlignMode ALIGN_CENTER;
        public static final AlignMode ALIGN_STRETCH;
        public static final AlignMode ALIGN_TOP;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ AlignMode[] f25838a;

        static {
            AlignMode alignMode = new AlignMode("ALIGN_STRETCH", 0);
            ALIGN_STRETCH = alignMode;
            AlignMode alignMode2 = new AlignMode("ALIGN_TOP", 1);
            ALIGN_TOP = alignMode2;
            AlignMode alignMode3 = new AlignMode("ALIGN_BOTTOM", 2);
            ALIGN_BOTTOM = alignMode3;
            AlignMode alignMode4 = new AlignMode("ALIGN_CENTER", 3);
            ALIGN_CENTER = alignMode4;
            f25838a = new AlignMode[]{alignMode, alignMode2, alignMode3, alignMode4};
        }

        public static AlignMode a(String str) {
            for (AlignMode alignMode : values()) {
                if (alignMode.name().equalsIgnoreCase(str)) {
                    return alignMode;
                }
            }
            return ALIGN_CENTER;
        }

        public static AlignMode valueOf(String str) {
            return (AlignMode) Enum.valueOf(AlignMode.class, str);
        }

        public static AlignMode[] values() {
            return (AlignMode[]) f25838a.clone();
        }
    }

    public static float[] a(AlignMode alignMode, int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4 = i4 / i5;
        float f5 = i2 / i3;
        int i6 = AnonymousClass1.f25837a[alignMode.ordinal()];
        float f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float f7 = 1.0f;
        if (i6 != 1) {
            if (i6 == 2) {
                f3 = 1.0f - (f5 / f4);
            } else if (i6 != 3) {
                f3 = 0.0f;
            } else if (f4 < f5) {
                float f8 = f4 / f5;
                float f9 = (1.0f - f8) / 2.0f;
                float f10 = f8 + f9;
                f6 = f9;
                f3 = 0.0f;
                f2 = 1.0f;
                f7 = f10;
            } else {
                float f11 = f5 / f4;
                f3 = (1.0f - f11) / 2.0f;
                f2 = f11 + f3;
            }
            f2 = 1.0f;
        } else {
            f2 = f5 / f4;
            f3 = 0.0f;
        }
        return new float[]{f6, f3, f7, f2};
    }
}
