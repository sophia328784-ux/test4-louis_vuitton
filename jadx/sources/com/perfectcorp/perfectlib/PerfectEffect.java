package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import defpackage.b21;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EYESHADOW' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class PerfectEffect {
    public static final PerfectEffect BACKGROUND;
    public static final PerfectEffect BLUSH;
    public static final PerfectEffect BRACELET;
    public static final PerfectEffect BRONZER;
    public static final PerfectEffect CONCEALER;
    public static final PerfectEffect CONTOUR;
    public static final PerfectEffect EARRINGS;
    public static final PerfectEffect EYEBROW;
    public static final PerfectEffect EYELASHES;
    public static final PerfectEffect EYELINER;
    public static final PerfectEffect EYESHADOW;
    public static final PerfectEffect EYEWEAR;
    public static final PerfectEffect EYEWEAR_3D;
    public static final PerfectEffect EYE_COLOR;
    public static final PerfectEffect FACE_ART;
    public static final PerfectEffect FOUNDATION;
    public static final PerfectEffect FUN_STICKER;
    public static final PerfectEffect HAIR_COLOR;
    public static final PerfectEffect HEADBAND;
    public static final PerfectEffect HIGHLIGHTER;
    public static final PerfectEffect HIGHLIGHTER_AND_CONTOUR;
    public static final PerfectEffect JEWELRY;
    public static final PerfectEffect LIPSTICK;
    public static final PerfectEffect LIP_LINER;
    public static final PerfectEffect MASCARA;
    public static final PerfectEffect NAIL;
    public static final PerfectEffect NAIL_TIP;
    public static final PerfectEffect NECKLACE;
    public static final PerfectEffect RING;
    public static final PerfectEffect SKIN_SMOOTH;
    public static final PerfectEffect TEETH_WHITENING;
    public static final PerfectEffect WATCH;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ PerfectEffect[] f39737a;
    public final BeautyMode beautyMode;
    public final YMKFeatures$EventFeature eventFeature;
    final ItemSubType itemSubType;

    static {
        BeautyMode beautyMode = BeautyMode.EYE_SHADOW;
        ItemSubType itemSubType = ItemSubType.NONE;
        PerfectEffect perfectEffect = new PerfectEffect("EYESHADOW", 0, beautyMode, itemSubType);
        EYESHADOW = perfectEffect;
        BeautyMode beautyMode2 = BeautyMode.EYE_LASHES;
        PerfectEffect perfectEffect2 = new PerfectEffect("EYELASHES", 1, beautyMode2, ItemSubType.EYELASHES);
        EYELASHES = perfectEffect2;
        PerfectEffect perfectEffect3 = new PerfectEffect("MASCARA", 2, beautyMode2, ItemSubType.MASCARA);
        MASCARA = perfectEffect3;
        PerfectEffect perfectEffect4 = new PerfectEffect("EYELINER", 3, BeautyMode.EYE_LINES, itemSubType);
        EYELINER = perfectEffect4;
        PerfectEffect perfectEffect5 = new PerfectEffect("BLUSH", 4, BeautyMode.BLUSH, itemSubType);
        BLUSH = perfectEffect5;
        PerfectEffect perfectEffect6 = new PerfectEffect("FOUNDATION", 5, BeautyMode.SKIN_TONER, itemSubType);
        FOUNDATION = perfectEffect6;
        PerfectEffect perfectEffect7 = new PerfectEffect("LIPSTICK", 6, BeautyMode.LIP_STICK, itemSubType);
        LIPSTICK = perfectEffect7;
        PerfectEffect perfectEffect8 = new PerfectEffect("HAIR_COLOR", 7, BeautyMode.HAIR_DYE, itemSubType);
        HAIR_COLOR = perfectEffect8;
        PerfectEffect perfectEffect9 = new PerfectEffect("EYE_COLOR", 8, BeautyMode.EYE_CONTACT, itemSubType);
        EYE_COLOR = perfectEffect9;
        PerfectEffect perfectEffect10 = new PerfectEffect("EYEBROW", 9, BeautyMode.EYE_BROW, itemSubType);
        EYEBROW = perfectEffect10;
        PerfectEffect perfectEffect11 = new PerfectEffect("FACE_ART", 10, BeautyMode.FACE_ART, itemSubType);
        FACE_ART = perfectEffect11;
        PerfectEffect perfectEffect12 = new PerfectEffect("EYEWEAR", 11, BeautyMode.CUBE_EYEWEAR, ItemSubType.EYEWEAR_CUBE);
        EYEWEAR = perfectEffect12;
        PerfectEffect perfectEffect13 = new PerfectEffect("EYEWEAR_3D", 12, BeautyMode.REAL_3D_EYEWEAR, ItemSubType.EYEWEAR_3D);
        EYEWEAR_3D = perfectEffect13;
        PerfectEffect perfectEffect14 = new PerfectEffect("EARRINGS", 13, BeautyMode.EARRINGS, itemSubType);
        EARRINGS = perfectEffect14;
        PerfectEffect perfectEffect15 = new PerfectEffect("HEADBAND", 14, BeautyMode.HAIR_BAND, itemSubType);
        HEADBAND = perfectEffect15;
        BeautyMode beautyMode3 = BeautyMode.FACE_CONTOUR;
        PerfectEffect perfectEffect16 = new PerfectEffect("HIGHLIGHTER", 15, beautyMode3, ItemSubType.HIGHLIGHT, YMKFeatures$EventFeature.FaceHighlight);
        HIGHLIGHTER = perfectEffect16;
        PerfectEffect perfectEffect17 = new PerfectEffect("CONTOUR", 16, beautyMode3, ItemSubType.CONTOUR, YMKFeatures$EventFeature.FaceContourPattern);
        CONTOUR = perfectEffect17;
        PerfectEffect perfectEffect18 = new PerfectEffect("HIGHLIGHTER_AND_CONTOUR", 17, beautyMode3, ItemSubType.HIGHLIGHT_CONTOUR, YMKFeatures$EventFeature.HighlightContour);
        HIGHLIGHTER_AND_CONTOUR = perfectEffect18;
        PerfectEffect perfectEffect19 = new PerfectEffect("LIP_LINER", 18, BeautyMode.LIP_LINER, itemSubType, YMKFeatures$EventFeature.LipLiner);
        LIP_LINER = perfectEffect19;
        PerfectEffect perfectEffect20 = new PerfectEffect("FUN_STICKER", 19, BeautyMode.UNDEFINED, itemSubType, YMKFeatures$EventFeature.UNDEFINED);
        FUN_STICKER = perfectEffect20;
        PerfectEffect perfectEffect21 = new PerfectEffect("BACKGROUND", 20, BeautyMode.BACKGROUND, itemSubType, YMKFeatures$EventFeature.Background);
        BACKGROUND = perfectEffect21;
        PerfectEffect perfectEffect22 = new PerfectEffect("BRONZER", 21, BeautyMode.BRONZER, itemSubType, YMKFeatures$EventFeature.Bronzer);
        BRONZER = perfectEffect22;
        PerfectEffect perfectEffect23 = new PerfectEffect("CONCEALER", 22, BeautyMode.CONCEALER, itemSubType, YMKFeatures$EventFeature.Concealer);
        CONCEALER = perfectEffect23;
        PerfectEffect perfectEffect24 = new PerfectEffect("SKIN_SMOOTH", 23, BeautyMode.SKIN_SMOOTHER, itemSubType);
        SKIN_SMOOTH = perfectEffect24;
        PerfectEffect perfectEffect25 = new PerfectEffect("TEETH_WHITENING", 24, BeautyMode.TEETH_WHITENER, itemSubType);
        TEETH_WHITENING = perfectEffect25;
        BeautyMode beautyMode4 = BeautyMode.NAIL;
        ItemSubType itemSubType2 = ItemSubType.NAIL_POLISH;
        YMKFeatures$EventFeature yMKFeatures$EventFeature = YMKFeatures$EventFeature.Nails;
        PerfectEffect perfectEffect26 = new PerfectEffect("NAIL", 25, beautyMode4, itemSubType2, yMKFeatures$EventFeature);
        NAIL = perfectEffect26;
        PerfectEffect perfectEffect27 = new PerfectEffect("NAIL_TIP", 26, beautyMode4, ItemSubType.NAIL_TIP, yMKFeatures$EventFeature);
        NAIL_TIP = perfectEffect27;
        PerfectEffect perfectEffect28 = new PerfectEffect("WATCH", 27, BeautyMode.WATCH, itemSubType, YMKFeatures$EventFeature.Watch);
        WATCH = perfectEffect28;
        PerfectEffect perfectEffect29 = new PerfectEffect("BRACELET", 28, BeautyMode.BRACELET, itemSubType, YMKFeatures$EventFeature.Bracelet);
        BRACELET = perfectEffect29;
        PerfectEffect perfectEffect30 = new PerfectEffect("RING", 29, BeautyMode.RING, itemSubType, YMKFeatures$EventFeature.Ring);
        RING = perfectEffect30;
        PerfectEffect perfectEffect31 = new PerfectEffect("JEWELRY", 30, BeautyMode.JEWELRY, itemSubType, YMKFeatures$EventFeature.Jewelry);
        JEWELRY = perfectEffect31;
        PerfectEffect perfectEffect32 = new PerfectEffect("NECKLACE", 31, BeautyMode.NECKLACE, itemSubType, YMKFeatures$EventFeature.Necklace);
        NECKLACE = perfectEffect32;
        f39737a = new PerfectEffect[]{perfectEffect, perfectEffect2, perfectEffect3, perfectEffect4, perfectEffect5, perfectEffect6, perfectEffect7, perfectEffect8, perfectEffect9, perfectEffect10, perfectEffect11, perfectEffect12, perfectEffect13, perfectEffect14, perfectEffect15, perfectEffect16, perfectEffect17, perfectEffect18, perfectEffect19, perfectEffect20, perfectEffect21, perfectEffect22, perfectEffect23, perfectEffect24, perfectEffect25, perfectEffect26, perfectEffect27, perfectEffect28, perfectEffect29, perfectEffect30, perfectEffect31, perfectEffect32};
    }

    public PerfectEffect(String str, int i2, BeautyMode beautyMode, ItemSubType itemSubType) {
        this(str, i2, beautyMode, itemSubType, beautyMode.getEventFeature());
    }

    public static PerfectEffect of(BeautyMode beautyMode, ItemSubType itemSubType) {
        if (beautyMode == BeautyMode.EYE_LASHES) {
            return itemSubType == ItemSubType.EYELASHES ? EYELASHES : MASCARA;
        }
        if (beautyMode == BeautyMode.FACE_ART_LAYER_2) {
            return FACE_ART;
        }
        if (beautyMode == BeautyMode.EYE_WEAR) {
            for (PerfectEffect perfectEffect : values()) {
                if (perfectEffect.itemSubType == itemSubType) {
                    return perfectEffect;
                }
            }
        }
        for (PerfectEffect perfectEffect2 : values()) {
            if (perfectEffect2.beautyMode == beautyMode && perfectEffect2.itemSubType == itemSubType) {
                return perfectEffect2;
            }
        }
        b21.s("Unsupported mode=", beautyMode, ", itemSubType=", itemSubType);
        return null;
    }

    public static PerfectEffect valueOf(String str) {
        return (PerfectEffect) Enum.valueOf(PerfectEffect.class, str);
    }

    public static PerfectEffect[] values() {
        return (PerfectEffect[]) f39737a.clone();
    }

    public PerfectEffect(String str, int i2, BeautyMode beautyMode, ItemSubType itemSubType, YMKFeatures$EventFeature yMKFeatures$EventFeature) {
        super(str, i2);
        this.beautyMode = beautyMode;
        this.itemSubType = itemSubType;
        this.eventFeature = yMKFeatures$EventFeature;
    }
}
