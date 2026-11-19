package com.perfectcorp.perfectlib;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class Functionality {
    public static final Functionality BACKGROUND;
    public static final Functionality BRACELET;
    public static final Functionality EARRINGS;
    public static final Functionality EYEWEAR;
    public static final Functionality EYEWEAR_3D;
    public static final Functionality FACE_ATTRIBUTE;
    public static final Functionality FUN_STICKER;
    public static final Functionality HAIR_COLOR;
    public static final Functionality HAIR_STYLIST;
    public static final Functionality JEWELRY;
    public static final Functionality MAKEUP;
    public static final Functionality NAIL;
    public static final Functionality NECKLACE;
    public static final Functionality RESHAPE;
    public static final Functionality RING;
    public static final Functionality SHADE_FINDER;
    public static final Functionality SKIN_CARE;
    public static final Functionality SKIN_CARE_HD;
    public static final Functionality TUTORIAL;
    public static final Functionality WATCH;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ Functionality[] f39618a;

    static {
        Functionality functionality = new Functionality("MAKEUP", 0);
        MAKEUP = functionality;
        Functionality functionality2 = new Functionality("HAIR_COLOR", 1);
        HAIR_COLOR = functionality2;
        Functionality functionality3 = new Functionality("SKIN_CARE", 2);
        SKIN_CARE = functionality3;
        Functionality functionality4 = new Functionality("SKIN_CARE_HD", 3);
        SKIN_CARE_HD = functionality4;
        Functionality functionality5 = new Functionality("SHADE_FINDER", 4);
        SHADE_FINDER = functionality5;
        Functionality functionality6 = new Functionality("FUN_STICKER", 5);
        FUN_STICKER = functionality6;
        Functionality functionality7 = new Functionality("RESHAPE", 6);
        RESHAPE = functionality7;
        Functionality functionality8 = new Functionality("EYEWEAR", 7);
        EYEWEAR = functionality8;
        Functionality functionality9 = new Functionality("EYEWEAR_3D", 8);
        EYEWEAR_3D = functionality9;
        Functionality functionality10 = new Functionality("FACE_ATTRIBUTE", 9);
        FACE_ATTRIBUTE = functionality10;
        Functionality functionality11 = new Functionality("EARRINGS", 10);
        EARRINGS = functionality11;
        Functionality functionality12 = new Functionality("NAIL", 11);
        NAIL = functionality12;
        Functionality functionality13 = new Functionality("RING", 12);
        RING = functionality13;
        Functionality functionality14 = new Functionality("WATCH", 13);
        WATCH = functionality14;
        Functionality functionality15 = new Functionality("BRACELET", 14);
        BRACELET = functionality15;
        Functionality functionality16 = new Functionality("JEWELRY", 15);
        JEWELRY = functionality16;
        Functionality functionality17 = new Functionality("BACKGROUND", 16);
        BACKGROUND = functionality17;
        Functionality functionality18 = new Functionality("HAIR_STYLIST", 17);
        HAIR_STYLIST = functionality18;
        Functionality functionality19 = new Functionality("TUTORIAL", 18);
        TUTORIAL = functionality19;
        Functionality functionality20 = new Functionality("NECKLACE", 19);
        NECKLACE = functionality20;
        f39618a = new Functionality[]{functionality, functionality2, functionality3, functionality4, functionality5, functionality6, functionality7, functionality8, functionality9, functionality10, functionality11, functionality12, functionality13, functionality14, functionality15, functionality16, functionality17, functionality18, functionality19, functionality20};
    }

    public static Functionality valueOf(String str) {
        return (Functionality) Enum.valueOf(Functionality.class, str);
    }

    public static Functionality[] values() {
        return (Functionality[]) f39618a.clone();
    }
}
