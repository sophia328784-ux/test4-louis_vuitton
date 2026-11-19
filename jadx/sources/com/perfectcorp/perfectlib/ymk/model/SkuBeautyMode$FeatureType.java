package com.perfectcorp.perfectlib.ymk.model;

/* JADX INFO: loaded from: classes3.dex */
public enum SkuBeautyMode$FeatureType {
    BLUSH("blush", 71),
    SKIN_TONE("skin_toner", 39),
    EYE_SHADOW("eye_shadow", 80),
    EYE_CONTACT("eye_contact", 11),
    EYE_BROW("eye_brow", 85),
    EYE_LINE("eye_line", 87),
    EYE_LASH("eye_lash", 15),
    LIPSTICK("lipstick", 88),
    HAIR_DYE("hair_dye", 42),
    EYE_WEAR("eye_wear", 63),
    HAIR_BAND("hair_band", 0),
    NECKLACE("necklace", 60),
    EARRINGS("earrings", 91),
    FACE_CONTOUR_PATTERN("face_contour_pattern", 69),
    LIP_LINER("lip_liner", 94),
    NAIL("nail", 15),
    WATCH("watch", 81),
    BRACELET("bracelet", 82),
    RING("ring", 83),
    JEWELRY("jewelry", 78),
    BACKGROUND("background", 44),
    BRONZER("bronzer", 51),
    CONCEALER("concealer", 52),
    UNDEFINED("", 0);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f42030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f42031b;

    SkuBeautyMode$FeatureType(String str, int i2) {
        this.f42030a = str;
        this.f42031b = i2;
    }

    public static int a(String str) {
        for (SkuBeautyMode$FeatureType skuBeautyMode$FeatureType : values()) {
            if (skuBeautyMode$FeatureType.f42030a.equals(str)) {
                return skuBeautyMode$FeatureType.f42031b;
            }
        }
        return 0;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f42030a;
    }
}
