package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.makeupcam.camera.TrafficLightCheckResult;

/* JADX INFO: loaded from: classes3.dex */
public final class PupilQualityCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TrafficLightCheckResult f39809a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class FaceAreaQuality {
        public static final FaceAreaQuality GOOD;
        public static final FaceAreaQuality OUT_OF_BOUNDARY;
        public static final FaceAreaQuality TOO_LARGE;
        public static final FaceAreaQuality TOO_SMALL;
        public static final FaceAreaQuality UNKNOWN;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ FaceAreaQuality[] f39810a;

        static {
            FaceAreaQuality faceAreaQuality = new FaceAreaQuality("UNKNOWN", 0);
            UNKNOWN = faceAreaQuality;
            FaceAreaQuality faceAreaQuality2 = new FaceAreaQuality("TOO_SMALL", 1);
            TOO_SMALL = faceAreaQuality2;
            FaceAreaQuality faceAreaQuality3 = new FaceAreaQuality("TOO_LARGE", 2);
            TOO_LARGE = faceAreaQuality3;
            FaceAreaQuality faceAreaQuality4 = new FaceAreaQuality("OUT_OF_BOUNDARY", 3);
            OUT_OF_BOUNDARY = faceAreaQuality4;
            FaceAreaQuality faceAreaQuality5 = new FaceAreaQuality("GOOD", 4);
            GOOD = faceAreaQuality5;
            f39810a = new FaceAreaQuality[]{faceAreaQuality, faceAreaQuality2, faceAreaQuality3, faceAreaQuality4, faceAreaQuality5};
        }

        public static FaceAreaQuality valueOf(String str) {
            return (FaceAreaQuality) Enum.valueOf(FaceAreaQuality.class, str);
        }

        public static FaceAreaQuality[] values() {
            return (FaceAreaQuality[]) f39810a.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class FaceFrontalQuality {
        public static final FaceFrontalQuality BAD;
        public static final FaceFrontalQuality GOOD;
        public static final FaceFrontalQuality UNKNOWN;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ FaceFrontalQuality[] f39811a;

        static {
            FaceFrontalQuality faceFrontalQuality = new FaceFrontalQuality("UNKNOWN", 0);
            UNKNOWN = faceFrontalQuality;
            FaceFrontalQuality faceFrontalQuality2 = new FaceFrontalQuality("BAD", 1);
            BAD = faceFrontalQuality2;
            FaceFrontalQuality faceFrontalQuality3 = new FaceFrontalQuality("GOOD", 2);
            GOOD = faceFrontalQuality3;
            f39811a = new FaceFrontalQuality[]{faceFrontalQuality, faceFrontalQuality2, faceFrontalQuality3};
        }

        public static FaceFrontalQuality valueOf(String str) {
            return (FaceFrontalQuality) Enum.valueOf(FaceFrontalQuality.class, str);
        }

        public static FaceFrontalQuality[] values() {
            return (FaceFrontalQuality[]) f39811a.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LightingQuality {
        public static final LightingQuality DARK;
        public static final LightingQuality GOOD;
        public static final LightingQuality NORMAL;
        public static final LightingQuality UNEVEN;
        public static final LightingQuality UNKNOWN;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ LightingQuality[] f39812a;

        static {
            LightingQuality lightingQuality = new LightingQuality("UNKNOWN", 0);
            UNKNOWN = lightingQuality;
            LightingQuality lightingQuality2 = new LightingQuality("DARK", 1);
            DARK = lightingQuality2;
            LightingQuality lightingQuality3 = new LightingQuality("NORMAL", 2);
            NORMAL = lightingQuality3;
            LightingQuality lightingQuality4 = new LightingQuality("GOOD", 3);
            GOOD = lightingQuality4;
            LightingQuality lightingQuality5 = new LightingQuality("UNEVEN", 4);
            UNEVEN = lightingQuality5;
            f39812a = new LightingQuality[]{lightingQuality, lightingQuality2, lightingQuality3, lightingQuality4, lightingQuality5};
        }

        public static LightingQuality valueOf(String str) {
            return (LightingQuality) Enum.valueOf(LightingQuality.class, str);
        }

        public static LightingQuality[] values() {
            return (LightingQuality[]) f39812a.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class NakedEyeQuality {
        public static final NakedEyeQuality NO;
        public static final NakedEyeQuality UNKNOWN;
        public static final NakedEyeQuality YES;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ NakedEyeQuality[] f39813a;

        static {
            NakedEyeQuality nakedEyeQuality = new NakedEyeQuality("UNKNOWN", 0);
            UNKNOWN = nakedEyeQuality;
            NakedEyeQuality nakedEyeQuality2 = new NakedEyeQuality("YES", 1);
            YES = nakedEyeQuality2;
            NakedEyeQuality nakedEyeQuality3 = new NakedEyeQuality("NO", 2);
            NO = nakedEyeQuality3;
            f39813a = new NakedEyeQuality[]{nakedEyeQuality, nakedEyeQuality2, nakedEyeQuality3};
        }

        public static NakedEyeQuality valueOf(String str) {
            return (NakedEyeQuality) Enum.valueOf(NakedEyeQuality.class, str);
        }

        public static NakedEyeQuality[] values() {
            return (NakedEyeQuality[]) f39813a.clone();
        }
    }

    public PupilQualityCheck(TrafficLightCheckResult trafficLightCheckResult) {
        this.f39809a = trafficLightCheckResult;
    }

    public final FaceAreaQuality getFaceAreaQuality() {
        int i2 = this.f39809a.m_face_area_quality;
        if (i2 == 1) {
            return FaceAreaQuality.TOO_SMALL;
        }
        if (i2 == 2) {
            return FaceAreaQuality.TOO_LARGE;
        }
        if (i2 != 3) {
            return i2 != 4 ? FaceAreaQuality.UNKNOWN : FaceAreaQuality.GOOD;
        }
        return FaceAreaQuality.OUT_OF_BOUNDARY;
    }

    public final FaceFrontalQuality getFaceFrontalQuality() {
        int i2 = this.f39809a.m_face_frontal_quality;
        if (i2 != 1) {
            return i2 != 2 ? FaceFrontalQuality.UNKNOWN : FaceFrontalQuality.GOOD;
        }
        return FaceFrontalQuality.BAD;
    }

    public final LightingQuality getLightingQuality() {
        int i2 = this.f39809a.m_lighting_quality;
        if (i2 == 1) {
            return LightingQuality.DARK;
        }
        if (i2 == 2) {
            return LightingQuality.NORMAL;
        }
        if (i2 != 3) {
            return i2 != 4 ? LightingQuality.UNKNOWN : LightingQuality.UNEVEN;
        }
        return LightingQuality.GOOD;
    }

    public final NakedEyeQuality getNakedEyeQuality() {
        int i2 = this.f39809a.m_naked_eye_quality;
        if (i2 != 1) {
            return i2 != 2 ? NakedEyeQuality.UNKNOWN : NakedEyeQuality.NO;
        }
        return NakedEyeQuality.YES;
    }
}
