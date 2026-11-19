package com.perfectcorp.perfectlib.ymk.model;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'SKIN_SMOOTHER' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class BeautyMode {
    public static final BeautyMode BACKGROUND;
    public static final BeautyMode BLUSH;
    public static final BeautyMode BRACELET;
    public static final BeautyMode BRONZER;
    public static final BeautyMode CHIN_LENGTH;
    public static final BeautyMode CHIN_RESHAPE;
    public static final BeautyMode CHIN_RESHAPE_LEFT;
    public static final BeautyMode CHIN_RESHAPE_RIGHT;
    public static final BeautyMode CONCEALER;
    public static final BeautyMode CUBE_EYEWEAR;
    public static final BeautyMode EARRINGS;
    public static final BeautyMode EYE_BROW;
    public static final BeautyMode EYE_CONTACT;
    public static final BeautyMode EYE_DISTANCE;
    public static final BeautyMode EYE_HEIGHT;
    public static final BeautyMode EYE_LASHES;
    public static final BeautyMode EYE_LINES;
    public static final BeautyMode EYE_SHADOW;
    public static final BeautyMode EYE_SIZE;
    public static final BeautyMode EYE_SIZE_LEFT;
    public static final BeautyMode EYE_SIZE_RIGHT;
    public static final BeautyMode EYE_SLANT;
    public static final BeautyMode EYE_WEAR;
    public static final BeautyMode EYE_WIDTH;
    public static final BeautyMode FACE_ART;
    public static final BeautyMode FACE_ART_LAYER_2;
    public static final BeautyMode FACE_CHEEKBONE;
    public static final BeautyMode FACE_CONTOUR;
    public static final BeautyMode FACE_JAW;
    public static final BeautyMode FACE_RESHAPE;
    public static final BeautyMode FACE_RESHAPE_LEFT;
    public static final BeautyMode FACE_RESHAPE_RIGHT;
    public static final BeautyMode FACE_WIDTH;
    public static final BeautyMode HAIR_BAND;
    public static final BeautyMode HAIR_DYE;
    public static final BeautyMode JEWELRY;
    public static final BeautyMode LIP_HEIGHT;
    public static final BeautyMode LIP_HEIGHT_LOWER;
    public static final BeautyMode LIP_HEIGHT_UPPER;
    public static final BeautyMode LIP_LINER;
    public static final BeautyMode LIP_PEAK;
    public static final BeautyMode LIP_SIZE;
    public static final BeautyMode LIP_STICK;
    public static final BeautyMode LIP_WIDTH;
    public static final BeautyMode NAIL;
    public static final BeautyMode NECKLACE;
    public static final BeautyMode NOSE_BRIDGE;
    public static final BeautyMode NOSE_LENGTH;
    public static final BeautyMode NOSE_SIZE;
    public static final BeautyMode NOSE_TIP;
    public static final BeautyMode NOSE_WIDTH;
    public static final BeautyMode NOSE_WING;
    public static final BeautyMode REAL_3D_EYEWEAR;
    public static final BeautyMode RING;
    public static final BeautyMode SKIN_SMOOTHER;
    public static final BeautyMode SKIN_TONER;
    public static final BeautyMode TEETH_WHITENER;
    public static final BeautyMode UNDEFINED;
    public static final BeautyMode WATCH;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ BeautyMode[] f42023c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final YMKFeatures$EventFeature f42024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SkuBeautyMode$FeatureType f42025b;

    static {
        BeautyMode beautyMode = new BeautyMode("BLUSH", 0, SkuBeautyMode$FeatureType.BLUSH, YMKFeatures$EventFeature.Blush);
        BLUSH = beautyMode;
        BeautyMode beautyMode2 = new BeautyMode("SKIN_TONER", 1, SkuBeautyMode$FeatureType.SKIN_TONE, YMKFeatures$EventFeature.Foundation);
        SKIN_TONER = beautyMode2;
        SkuBeautyMode$FeatureType skuBeautyMode$FeatureType = SkuBeautyMode$FeatureType.UNDEFINED;
        BeautyMode beautyMode3 = new BeautyMode("SKIN_SMOOTHER", 2, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.SkinSmoothener);
        SKIN_SMOOTHER = beautyMode3;
        BeautyMode beautyMode4 = new BeautyMode("FACE_CONTOUR", 3, SkuBeautyMode$FeatureType.FACE_CONTOUR_PATTERN, YMKFeatures$EventFeature.HighlightContour);
        FACE_CONTOUR = beautyMode4;
        YMKFeatures$EventFeature yMKFeatures$EventFeature = YMKFeatures$EventFeature.FaceArt;
        BeautyMode beautyMode5 = new BeautyMode("FACE_ART", 4, skuBeautyMode$FeatureType, yMKFeatures$EventFeature);
        FACE_ART = beautyMode5;
        BeautyMode beautyMode6 = new BeautyMode("BRONZER", 5, SkuBeautyMode$FeatureType.BRONZER, YMKFeatures$EventFeature.Bronzer);
        BRONZER = beautyMode6;
        BeautyMode beautyMode7 = new BeautyMode("CONCEALER", 6, SkuBeautyMode$FeatureType.CONCEALER, YMKFeatures$EventFeature.Concealer);
        CONCEALER = beautyMode7;
        BeautyMode beautyMode8 = new BeautyMode("EYE_LINES", 7, SkuBeautyMode$FeatureType.EYE_LINE, YMKFeatures$EventFeature.EyeLiner);
        EYE_LINES = beautyMode8;
        BeautyMode beautyMode9 = new BeautyMode("EYE_LASHES", 8, SkuBeautyMode$FeatureType.EYE_LASH, YMKFeatures$EventFeature.Eyelashes);
        EYE_LASHES = beautyMode9;
        BeautyMode beautyMode10 = new BeautyMode("EYE_SHADOW", 9, SkuBeautyMode$FeatureType.EYE_SHADOW, YMKFeatures$EventFeature.EyeShadow);
        EYE_SHADOW = beautyMode10;
        BeautyMode beautyMode11 = new BeautyMode("EYE_BROW", 10, SkuBeautyMode$FeatureType.EYE_BROW, YMKFeatures$EventFeature.Eyebrows);
        EYE_BROW = beautyMode11;
        BeautyMode beautyMode12 = new BeautyMode("EYE_CONTACT", 11, SkuBeautyMode$FeatureType.EYE_CONTACT, YMKFeatures$EventFeature.EyeColor);
        EYE_CONTACT = beautyMode12;
        BeautyMode beautyMode13 = new BeautyMode("LIP_STICK", 12, SkuBeautyMode$FeatureType.LIPSTICK, YMKFeatures$EventFeature.LipColor);
        LIP_STICK = beautyMode13;
        BeautyMode beautyMode14 = new BeautyMode("TEETH_WHITENER", 13, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.TeethWhitener);
        TEETH_WHITENER = beautyMode14;
        BeautyMode beautyMode15 = new BeautyMode("LIP_LINER", 14, SkuBeautyMode$FeatureType.LIP_LINER, YMKFeatures$EventFeature.LipLiner);
        LIP_LINER = beautyMode15;
        BeautyMode beautyMode16 = new BeautyMode("FACE_RESHAPE", 15, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.FaceReshaper);
        FACE_RESHAPE = beautyMode16;
        BeautyMode beautyMode17 = new BeautyMode("FACE_RESHAPE_LEFT", 16, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.FaceReshaperLeft);
        FACE_RESHAPE_LEFT = beautyMode17;
        BeautyMode beautyMode18 = new BeautyMode("FACE_RESHAPE_RIGHT", 17, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.FaceReshaperRight);
        FACE_RESHAPE_RIGHT = beautyMode18;
        BeautyMode beautyMode19 = new BeautyMode("CHIN_RESHAPE", 18, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.ChinReshaper);
        CHIN_RESHAPE = beautyMode19;
        BeautyMode beautyMode20 = new BeautyMode("CHIN_RESHAPE_LEFT", 19, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.ChinReshaperLeft);
        CHIN_RESHAPE_LEFT = beautyMode20;
        BeautyMode beautyMode21 = new BeautyMode("CHIN_RESHAPE_RIGHT", 20, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.ChinReshaperRight);
        CHIN_RESHAPE_RIGHT = beautyMode21;
        BeautyMode beautyMode22 = new BeautyMode("CHIN_LENGTH", 21, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.ChinLength);
        CHIN_LENGTH = beautyMode22;
        BeautyMode beautyMode23 = new BeautyMode("FACE_WIDTH", 22, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.FaceWidth);
        FACE_WIDTH = beautyMode23;
        BeautyMode beautyMode24 = new BeautyMode("FACE_CHEEKBONE", 23, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.FaceCheekbone);
        FACE_CHEEKBONE = beautyMode24;
        BeautyMode beautyMode25 = new BeautyMode("FACE_JAW", 24, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.FaceJaw);
        FACE_JAW = beautyMode25;
        BeautyMode beautyMode26 = new BeautyMode("NOSE_SIZE", 25, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.NoseSize);
        NOSE_SIZE = beautyMode26;
        BeautyMode beautyMode27 = new BeautyMode("NOSE_LENGTH", 26, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.NoseLength);
        NOSE_LENGTH = beautyMode27;
        BeautyMode beautyMode28 = new BeautyMode("NOSE_BRIDGE", 27, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.NoseBridge);
        NOSE_BRIDGE = beautyMode28;
        BeautyMode beautyMode29 = new BeautyMode("NOSE_TIP", 28, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.NoseTip);
        NOSE_TIP = beautyMode29;
        BeautyMode beautyMode30 = new BeautyMode("NOSE_WING", 29, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.NoseWing);
        NOSE_WING = beautyMode30;
        BeautyMode beautyMode31 = new BeautyMode("NOSE_WIDTH", 30, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.NoseWidth);
        NOSE_WIDTH = beautyMode31;
        YMKFeatures$EventFeature yMKFeatures$EventFeature2 = YMKFeatures$EventFeature.EyeEnlarger;
        BeautyMode beautyMode32 = new BeautyMode("EYE_SIZE", 31, skuBeautyMode$FeatureType, yMKFeatures$EventFeature2);
        EYE_SIZE = beautyMode32;
        BeautyMode beautyMode33 = new BeautyMode("EYE_SIZE_LEFT", 32, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.EyeLeft);
        EYE_SIZE_LEFT = beautyMode33;
        BeautyMode beautyMode34 = new BeautyMode("EYE_SIZE_RIGHT", 33, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.EyeRight);
        EYE_SIZE_RIGHT = beautyMode34;
        BeautyMode beautyMode35 = new BeautyMode("EYE_WIDTH", 34, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.EyeWidth);
        EYE_WIDTH = beautyMode35;
        BeautyMode beautyMode36 = new BeautyMode("EYE_HEIGHT", 35, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.EyeHeight);
        EYE_HEIGHT = beautyMode36;
        BeautyMode beautyMode37 = new BeautyMode("EYE_DISTANCE", 36, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.EyeDistance);
        EYE_DISTANCE = beautyMode37;
        BeautyMode beautyMode38 = new BeautyMode("EYE_SLANT", 37, skuBeautyMode$FeatureType, yMKFeatures$EventFeature2);
        EYE_SLANT = beautyMode38;
        BeautyMode beautyMode39 = new BeautyMode("LIP_SIZE", 38, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.LipReshape);
        LIP_SIZE = beautyMode39;
        BeautyMode beautyMode40 = new BeautyMode("LIP_WIDTH", 39, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.LipWidth);
        LIP_WIDTH = beautyMode40;
        BeautyMode beautyMode41 = new BeautyMode("LIP_HEIGHT", 40, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.LipHeight);
        LIP_HEIGHT = beautyMode41;
        BeautyMode beautyMode42 = new BeautyMode("LIP_HEIGHT_UPPER", 41, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.LipHeightUpper);
        LIP_HEIGHT_UPPER = beautyMode42;
        BeautyMode beautyMode43 = new BeautyMode("LIP_HEIGHT_LOWER", 42, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.LipHeightLower);
        LIP_HEIGHT_LOWER = beautyMode43;
        BeautyMode beautyMode44 = new BeautyMode("LIP_PEAK", 43, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.LipPeak);
        LIP_PEAK = beautyMode44;
        BeautyMode beautyMode45 = new BeautyMode("HAIR_DYE", 44, SkuBeautyMode$FeatureType.HAIR_DYE, YMKFeatures$EventFeature.HairDye);
        HAIR_DYE = beautyMode45;
        SkuBeautyMode$FeatureType skuBeautyMode$FeatureType2 = SkuBeautyMode$FeatureType.EYE_WEAR;
        YMKFeatures$EventFeature yMKFeatures$EventFeature3 = YMKFeatures$EventFeature.EyeWear;
        BeautyMode beautyMode46 = new BeautyMode("EYE_WEAR", 45, skuBeautyMode$FeatureType2, yMKFeatures$EventFeature3);
        EYE_WEAR = beautyMode46;
        BeautyMode beautyMode47 = new BeautyMode("HAIR_BAND", 46, SkuBeautyMode$FeatureType.HAIR_BAND, YMKFeatures$EventFeature.HairBand);
        HAIR_BAND = beautyMode47;
        BeautyMode beautyMode48 = new BeautyMode("NECKLACE", 47, SkuBeautyMode$FeatureType.NECKLACE, YMKFeatures$EventFeature.Necklace);
        NECKLACE = beautyMode48;
        BeautyMode beautyMode49 = new BeautyMode("EARRINGS", 48, SkuBeautyMode$FeatureType.EARRINGS, YMKFeatures$EventFeature.Earrings);
        EARRINGS = beautyMode49;
        BeautyMode beautyMode50 = new BeautyMode("CUBE_EYEWEAR", 49, skuBeautyMode$FeatureType2, yMKFeatures$EventFeature3);
        CUBE_EYEWEAR = beautyMode50;
        BeautyMode beautyMode51 = new BeautyMode("REAL_3D_EYEWEAR", 50, skuBeautyMode$FeatureType2, yMKFeatures$EventFeature3);
        REAL_3D_EYEWEAR = beautyMode51;
        BeautyMode beautyMode52 = new BeautyMode("FACE_ART_LAYER_2", 51, skuBeautyMode$FeatureType, yMKFeatures$EventFeature);
        FACE_ART_LAYER_2 = beautyMode52;
        BeautyMode beautyMode53 = new BeautyMode("NAIL", 52, SkuBeautyMode$FeatureType.NAIL, YMKFeatures$EventFeature.Nails);
        NAIL = beautyMode53;
        BeautyMode beautyMode54 = new BeautyMode("WATCH", 53, SkuBeautyMode$FeatureType.WATCH, YMKFeatures$EventFeature.Watch);
        WATCH = beautyMode54;
        BeautyMode beautyMode55 = new BeautyMode("BRACELET", 54, SkuBeautyMode$FeatureType.BRACELET, YMKFeatures$EventFeature.Bracelet);
        BRACELET = beautyMode55;
        BeautyMode beautyMode56 = new BeautyMode("RING", 55, SkuBeautyMode$FeatureType.RING, YMKFeatures$EventFeature.Ring);
        RING = beautyMode56;
        BeautyMode beautyMode57 = new BeautyMode("JEWELRY", 56, SkuBeautyMode$FeatureType.JEWELRY, YMKFeatures$EventFeature.Jewelry);
        JEWELRY = beautyMode57;
        BeautyMode beautyMode58 = new BeautyMode("BACKGROUND", 57, SkuBeautyMode$FeatureType.BACKGROUND, YMKFeatures$EventFeature.Background);
        BACKGROUND = beautyMode58;
        BeautyMode beautyMode59 = new BeautyMode("UNDEFINED", 58, skuBeautyMode$FeatureType, YMKFeatures$EventFeature.UNDEFINED);
        UNDEFINED = beautyMode59;
        f42023c = new BeautyMode[]{beautyMode, beautyMode2, beautyMode3, beautyMode4, beautyMode5, beautyMode6, beautyMode7, beautyMode8, beautyMode9, beautyMode10, beautyMode11, beautyMode12, beautyMode13, beautyMode14, beautyMode15, beautyMode16, beautyMode17, beautyMode18, beautyMode19, beautyMode20, beautyMode21, beautyMode22, beautyMode23, beautyMode24, beautyMode25, beautyMode26, beautyMode27, beautyMode28, beautyMode29, beautyMode30, beautyMode31, beautyMode32, beautyMode33, beautyMode34, beautyMode35, beautyMode36, beautyMode37, beautyMode38, beautyMode39, beautyMode40, beautyMode41, beautyMode42, beautyMode43, beautyMode44, beautyMode45, beautyMode46, beautyMode47, beautyMode48, beautyMode49, beautyMode50, beautyMode51, beautyMode52, beautyMode53, beautyMode54, beautyMode55, beautyMode56, beautyMode57, beautyMode58, beautyMode59};
    }

    public BeautyMode(String str, int i2, SkuBeautyMode$FeatureType skuBeautyMode$FeatureType, YMKFeatures$EventFeature yMKFeatures$EventFeature) {
        super(str, i2);
        this.f42025b = skuBeautyMode$FeatureType;
        this.f42024a = yMKFeatures$EventFeature;
    }

    public static BeautyMode valueOf(String str) {
        return (BeautyMode) Enum.valueOf(BeautyMode.class, str);
    }

    public static BeautyMode valueOfSkuFeatureType(String str) {
        for (BeautyMode beautyMode : values()) {
            SkuBeautyMode$FeatureType skuBeautyMode$FeatureType = beautyMode.f42025b;
            if (skuBeautyMode$FeatureType != SkuBeautyMode$FeatureType.UNDEFINED && skuBeautyMode$FeatureType.toString().equalsIgnoreCase(str)) {
                return beautyMode;
            }
        }
        return UNDEFINED;
    }

    public static BeautyMode[] values() {
        return (BeautyMode[]) f42023c.clone();
    }

    public final YMKFeatures$EventFeature getEventFeature() {
        return this.f42024a;
    }

    public final SkuBeautyMode$FeatureType getFeatureType() {
        return this.f42025b;
    }

    public final boolean isAccessory() {
        switch (a.f42034a[ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                return true;
            default:
                return false;
        }
    }

    public final boolean isReshape() {
        switch (a.f42034a[ordinal()]) {
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
                return true;
            default:
                return false;
        }
    }
}
