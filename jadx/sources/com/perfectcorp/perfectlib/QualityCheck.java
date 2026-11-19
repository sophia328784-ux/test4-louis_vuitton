package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.makeupcam.camera.MakeupCheckResult;

/* JADX INFO: loaded from: classes3.dex */
public final class QualityCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MakeupCheckResult f39814a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LightingQuality {
        public static final LightingQuality DARK;
        public static final LightingQuality GOOD;
        public static final LightingQuality NORMAL;
        public static final LightingQuality UNEVEN;
        public static final LightingQuality UNKNOWN;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ LightingQuality[] f39815a;

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
            f39815a = new LightingQuality[]{lightingQuality, lightingQuality2, lightingQuality3, lightingQuality4, lightingQuality5};
        }

        public static LightingQuality valueOf(String str) {
            return (LightingQuality) Enum.valueOf(LightingQuality.class, str);
        }

        public static LightingQuality[] values() {
            return (LightingQuality[]) f39815a.clone();
        }
    }

    public QualityCheck(MakeupCheckResult makeupCheckResult) {
        this.f39814a = makeupCheckResult;
    }

    public final LightingQuality getLightingQuality() {
        int i2 = this.f39814a.m_lighting_quality;
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
}
