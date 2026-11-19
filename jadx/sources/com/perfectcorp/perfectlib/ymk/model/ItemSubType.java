package com.perfectcorp.perfectlib.ymk.model;

import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import java.util.Iterator;
import java.util.Set;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EYELASHES' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class ItemSubType {
    public static final ItemSubType CONTOUR;
    public static final ItemSubType EYELASHES;
    public static final ItemSubType EYEWEAR_3D;
    public static final ItemSubType EYEWEAR_CUBE;
    public static final ItemSubType HIGHLIGHT;
    public static final ItemSubType HIGHLIGHT_CONTOUR;
    public static final ItemSubType MASCARA;
    public static final ItemSubType NAIL_POLISH;
    public static final ItemSubType NAIL_TIP;
    public static final ItemSubType NONE;
    private static final /* synthetic */ ItemSubType[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final YMKFeatures$EventFeature f42026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f42027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<String> f42028c;
    public final BeautyMode primaryType;

    static {
        ItemSubType itemSubType = new ItemSubType("NONE", 0, BeautyMode.UNDEFINED, null, "none");
        NONE = itemSubType;
        BeautyMode beautyMode = BeautyMode.EYE_LASHES;
        ItemSubType itemSubType2 = new ItemSubType("EYELASHES", 1, beautyMode, YMKFeatures$EventFeature.FakeEyelashes, "eyelashes");
        EYELASHES = itemSubType2;
        ItemSubType itemSubType3 = new ItemSubType("MASCARA", 2, beautyMode, YMKFeatures$EventFeature.Eyelashes, "mascara", "");
        MASCARA = itemSubType3;
        BeautyMode beautyMode2 = BeautyMode.FACE_CONTOUR;
        ItemSubType itemSubType4 = new ItemSubType("HIGHLIGHT", 3, beautyMode2, YMKFeatures$EventFeature.FaceHighlight, "highlight");
        HIGHLIGHT = itemSubType4;
        ItemSubType itemSubType5 = new ItemSubType("CONTOUR", 4, beautyMode2, YMKFeatures$EventFeature.FaceContourPattern, "contour", "");
        CONTOUR = itemSubType5;
        ItemSubType itemSubType6 = new ItemSubType("HIGHLIGHT_CONTOUR", 5, beautyMode2, YMKFeatures$EventFeature.HighlightContour, "highlight_contour");
        HIGHLIGHT_CONTOUR = itemSubType6;
        BeautyMode beautyMode3 = BeautyMode.EYE_WEAR;
        ItemSubType itemSubType7 = new ItemSubType("EYEWEAR_CUBE", 6, beautyMode3, null, "cubeEyewear");
        EYEWEAR_CUBE = itemSubType7;
        ItemSubType itemSubType8 = new ItemSubType("EYEWEAR_3D", 7, beautyMode3, null, "real3DEyewear");
        EYEWEAR_3D = itemSubType8;
        BeautyMode beautyMode4 = BeautyMode.NAIL;
        ItemSubType itemSubType9 = new ItemSubType("NAIL_POLISH", 8, beautyMode4, null, "polishNail", "");
        NAIL_POLISH = itemSubType9;
        ItemSubType itemSubType10 = new ItemSubType("NAIL_TIP", 9, beautyMode4, null, "pressOnNail");
        NAIL_TIP = itemSubType10;
        d = new ItemSubType[]{itemSubType, itemSubType2, itemSubType3, itemSubType4, itemSubType5, itemSubType6, itemSubType7, itemSubType8, itemSubType9, itemSubType10};
    }

    public ItemSubType(String str, int i2, BeautyMode beautyMode, YMKFeatures$EventFeature yMKFeatures$EventFeature, String... strArr) {
        super(str, i2);
        this.primaryType = beautyMode;
        this.f42026a = yMKFeatures$EventFeature;
        this.f42027b = strArr[0];
        this.f42028c = ImmutableSet.u(strArr);
    }

    public static ItemSubType d(BeautyMode beautyMode, String str) {
        for (ItemSubType itemSubType : values()) {
            if (itemSubType.primaryType == beautyMode) {
                Iterator<String> it = itemSubType.f42028c.iterator();
                while (it.hasNext()) {
                    if (it.next().equals(str)) {
                        return itemSubType;
                    }
                }
            }
        }
        return NONE;
    }

    public static ItemSubType valueOf(String str) {
        return (ItemSubType) Enum.valueOf(ItemSubType.class, str);
    }

    public static ItemSubType[] values() {
        return (ItemSubType[]) d.clone();
    }

    public final YMKFeatures$EventFeature a() {
        return this.f42026a;
    }

    public final String b() {
        return this.f42027b;
    }

    public final Set c() {
        return this.f42028c;
    }
}
