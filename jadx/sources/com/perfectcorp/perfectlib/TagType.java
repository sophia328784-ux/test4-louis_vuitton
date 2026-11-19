package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public abstract class TagType {
    public static final TagType BLUSH;
    public static final TagType CONTOUR;
    public static final TagType EYEBROW;
    public static final TagType EYELINER;
    public static final TagType EYESHADOW;
    public static final TagType FOUNDATION;
    public static final TagType HAIR_DYE;
    public static final TagType HIGHLIGHTER;
    public static final TagType HIGHLIGHTER_AND_CONTOUR;
    public static final TagType LIPSTICK;
    public static final TagType LOOK;
    public static final TagType MASCARA;
    private static final /* synthetic */ TagType[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f39993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f39994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f39995c;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$1, reason: invalid class name */
    final enum AnonymousClass1 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return (PerfectLib.d.contains(Functionality.MAKEUP) || PerfectLib.d.contains(Functionality.HAIR_COLOR)) ? false : true;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$10, reason: invalid class name */
    final enum AnonymousClass10 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.MAKEUP);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$11, reason: invalid class name */
    final enum AnonymousClass11 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.MAKEUP);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$12, reason: invalid class name */
    final enum AnonymousClass12 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.HAIR_COLOR);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$2, reason: invalid class name */
    final enum AnonymousClass2 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.MAKEUP);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$3, reason: invalid class name */
    final enum AnonymousClass3 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.MAKEUP);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$4, reason: invalid class name */
    final enum AnonymousClass4 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.MAKEUP);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$5, reason: invalid class name */
    final enum AnonymousClass5 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.MAKEUP);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$6, reason: invalid class name */
    final enum AnonymousClass6 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.MAKEUP);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$7, reason: invalid class name */
    final enum AnonymousClass7 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.MAKEUP);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$8, reason: invalid class name */
    final enum AnonymousClass8 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.MAKEUP);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.TagType$9, reason: invalid class name */
    final enum AnonymousClass9 extends TagType {
        @Override // com.perfectcorp.perfectlib.TagType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.MAKEUP);
        }
    }

    static {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(0, "LOOK", "look", "", false);
        LOOK = anonymousClass1;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(1, "BLUSH", SkuBeautyMode$FeatureType.BLUSH.toString(), "", true);
        BLUSH = anonymousClass2;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(2, "EYELINER", SkuBeautyMode$FeatureType.EYE_LINE.toString(), "", true);
        EYELINER = anonymousClass3;
        AnonymousClass4 anonymousClass4 = new AnonymousClass4(3, "EYESHADOW", SkuBeautyMode$FeatureType.EYE_SHADOW.toString(), "", true);
        EYESHADOW = anonymousClass4;
        AnonymousClass5 anonymousClass5 = new AnonymousClass5(4, "EYEBROW", SkuBeautyMode$FeatureType.EYE_BROW.toString(), "", true);
        EYEBROW = anonymousClass5;
        SkuBeautyMode$FeatureType skuBeautyMode$FeatureType = SkuBeautyMode$FeatureType.FACE_CONTOUR_PATTERN;
        AnonymousClass6 anonymousClass6 = new AnonymousClass6(5, "HIGHLIGHTER", skuBeautyMode$FeatureType.toString(), ItemSubType.HIGHLIGHT.b(), true);
        HIGHLIGHTER = anonymousClass6;
        AnonymousClass7 anonymousClass7 = new AnonymousClass7(6, "CONTOUR", skuBeautyMode$FeatureType.toString(), ItemSubType.CONTOUR.b(), true);
        CONTOUR = anonymousClass7;
        AnonymousClass8 anonymousClass8 = new AnonymousClass8(7, "HIGHLIGHTER_AND_CONTOUR", skuBeautyMode$FeatureType.toString(), ItemSubType.HIGHLIGHT_CONTOUR.b(), true);
        HIGHLIGHTER_AND_CONTOUR = anonymousClass8;
        AnonymousClass9 anonymousClass9 = new AnonymousClass9(8, "FOUNDATION", SkuBeautyMode$FeatureType.SKIN_TONE.toString(), "", true);
        FOUNDATION = anonymousClass9;
        AnonymousClass10 anonymousClass10 = new AnonymousClass10(9, "LIPSTICK", SkuBeautyMode$FeatureType.LIPSTICK.toString(), "", true);
        LIPSTICK = anonymousClass10;
        AnonymousClass11 anonymousClass11 = new AnonymousClass11(10, "MASCARA", SkuBeautyMode$FeatureType.EYE_LASH.toString(), "", true);
        MASCARA = anonymousClass11;
        AnonymousClass12 anonymousClass12 = new AnonymousClass12(11, "HAIR_DYE", SkuBeautyMode$FeatureType.HAIR_DYE.toString(), "", true);
        HAIR_DYE = anonymousClass12;
        d = new TagType[]{anonymousClass1, anonymousClass2, anonymousClass3, anonymousClass4, anonymousClass5, anonymousClass6, anonymousClass7, anonymousClass8, anonymousClass9, anonymousClass10, anonymousClass11, anonymousClass12};
    }

    public TagType(int i2, String str, String str2, String str3, boolean z) {
        super(str, i2);
        this.f39993a = str2;
        this.f39994b = str3;
        this.f39995c = z;
    }

    public static TagType valueOf(String str) {
        return (TagType) Enum.valueOf(TagType.class, str);
    }

    public static TagType[] values() {
        return (TagType[]) d.clone();
    }

    public abstract boolean a();
}
