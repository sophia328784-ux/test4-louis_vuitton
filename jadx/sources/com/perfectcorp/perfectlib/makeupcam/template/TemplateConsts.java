package com.perfectcorp.perfectlib.makeupcam.template;

import android.graphics.Point;
import android.text.TextUtils;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import defpackage.ct0;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TemplateConsts {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static float f40987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Point f40988b = new Point(-1, -1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f40989c = {"eye_brow", "eye_shadow", "eye_line", "eye_lash", "eye_contact", "eye_lid", "lipstick", "blush", "skin_toner", "wig", "eye_wear", "hair_band", "necklace", "earrings", "hat", "hair_dye", "face_art", "mustache", "face_contour_pattern", "lip_liner", "nail", "bracelet", "watch", "ring", "bronzer", "concealer"};
    public static final ImmutableSet d;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts$1, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f40990a;

        static {
            int[] iArr = new int[BeautyMode.values().length];
            f40990a = iArr;
            try {
                iArr[BeautyMode.EYE_LASHES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40990a[BeautyMode.EYE_LINES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40990a[BeautyMode.EYE_SHADOW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f40990a[BeautyMode.EYE_BROW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f40990a[BeautyMode.EYE_CONTACT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f40990a[BeautyMode.BLUSH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f40990a[BeautyMode.SKIN_TONER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f40990a[BeautyMode.LIP_STICK.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f40990a[BeautyMode.EYE_SIZE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f40990a[BeautyMode.SKIN_SMOOTHER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f40990a[BeautyMode.FACE_RESHAPE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f40990a[BeautyMode.TEETH_WHITENER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f40990a[BeautyMode.EYE_WEAR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f40990a[BeautyMode.HAIR_BAND.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f40990a[BeautyMode.NECKLACE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f40990a[BeautyMode.EARRINGS.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f40990a[BeautyMode.HAIR_DYE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f40990a[BeautyMode.FACE_ART.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f40990a[BeautyMode.FACE_CONTOUR.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f40990a[BeautyMode.LIP_LINER.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f40990a[BeautyMode.BRONZER.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f40990a[BeautyMode.CONCEALER.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f40990a[BeautyMode.RING.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f40990a[BeautyMode.BRACELET.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f40990a[BeautyMode.WATCH.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LocaleEnum {
        public static final Map<String, LocaleEnum> LOCALE_TO_ENUM;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ LocaleEnum[] f40991a;
        public static final LocaleEnum chs;
        public static final LocaleEnum cht;
        public static final LocaleEnum def;
        public static final LocaleEnum deu;
        public static final LocaleEnum enu;
        public static final LocaleEnum esp;
        public static final LocaleEnum fas;
        public static final LocaleEnum fra;
        public static final LocaleEnum idn;
        public static final LocaleEnum ita;
        public static final LocaleEnum jpn;
        public static final LocaleEnum kor;
        public static final LocaleEnum mys;
        public static final LocaleEnum nld;
        public static final LocaleEnum plk;
        public static final LocaleEnum prt;
        public static final LocaleEnum ptb;
        public static final LocaleEnum ptg;
        public static final LocaleEnum rus;
        public static final LocaleEnum tha;
        public static final LocaleEnum tur;

        static {
            LocaleEnum localeEnum = new LocaleEnum("enu", 0);
            enu = localeEnum;
            LocaleEnum localeEnum2 = new LocaleEnum("cht", 1);
            cht = localeEnum2;
            LocaleEnum localeEnum3 = new LocaleEnum("chs", 2);
            chs = localeEnum3;
            LocaleEnum localeEnum4 = new LocaleEnum("jpn", 3);
            jpn = localeEnum4;
            LocaleEnum localeEnum5 = new LocaleEnum("kor", 4);
            kor = localeEnum5;
            LocaleEnum localeEnum6 = new LocaleEnum("deu", 5);
            deu = localeEnum6;
            LocaleEnum localeEnum7 = new LocaleEnum("esp", 6);
            esp = localeEnum7;
            LocaleEnum localeEnum8 = new LocaleEnum("fra", 7);
            fra = localeEnum8;
            LocaleEnum localeEnum9 = new LocaleEnum("ita", 8);
            ita = localeEnum9;
            LocaleEnum localeEnum10 = new LocaleEnum("plk", 9);
            plk = localeEnum10;
            LocaleEnum localeEnum11 = new LocaleEnum("ptb", 10);
            ptb = localeEnum11;
            LocaleEnum localeEnum12 = new LocaleEnum("ptg", 11);
            ptg = localeEnum12;
            LocaleEnum localeEnum13 = new LocaleEnum("prt", 12);
            prt = localeEnum13;
            LocaleEnum localeEnum14 = new LocaleEnum("rus", 13);
            rus = localeEnum14;
            LocaleEnum localeEnum15 = new LocaleEnum("nld", 14);
            nld = localeEnum15;
            LocaleEnum localeEnum16 = new LocaleEnum("idn", 15);
            idn = localeEnum16;
            LocaleEnum localeEnum17 = new LocaleEnum("mys", 16);
            mys = localeEnum17;
            LocaleEnum localeEnum18 = new LocaleEnum("tha", 17);
            tha = localeEnum18;
            LocaleEnum localeEnum19 = new LocaleEnum("tur", 18);
            tur = localeEnum19;
            LocaleEnum localeEnum20 = new LocaleEnum("fas", 19);
            fas = localeEnum20;
            LocaleEnum localeEnum21 = new LocaleEnum("def", 20);
            def = localeEnum21;
            f40991a = new LocaleEnum[]{localeEnum, localeEnum2, localeEnum3, localeEnum4, localeEnum5, localeEnum6, localeEnum7, localeEnum8, localeEnum9, localeEnum10, localeEnum11, localeEnum12, localeEnum13, localeEnum14, localeEnum15, localeEnum16, localeEnum17, localeEnum18, localeEnum19, localeEnum20, localeEnum21};
            HashMap map = new HashMap();
            map.put("en", localeEnum);
            map.put("zh_TW", localeEnum2);
            map.put("zh_CN", localeEnum3);
            map.put("ja", localeEnum4);
            map.put("ko", localeEnum5);
            map.put("de", localeEnum6);
            map.put("es", localeEnum7);
            map.put("fr", localeEnum8);
            map.put("it", localeEnum9);
            map.put("pl", localeEnum10);
            map.put("pt_BR", localeEnum11);
            map.put("pt_PT", localeEnum12);
            map.put("pt", localeEnum13);
            map.put("ru", localeEnum14);
            map.put("nl", localeEnum15);
            map.put("in", localeEnum16);
            map.put(NBSSpanMetricUnit.Millisecond, localeEnum17);
            map.put("th", localeEnum18);
            map.put("tr", localeEnum19);
            map.put("fa", localeEnum20);
            LOCALE_TO_ENUM = Collections.unmodifiableMap(map);
        }

        public static LocaleEnum valueOf(String str) {
            return (LocaleEnum) Enum.valueOf(LocaleEnum.class, str);
        }

        public static LocaleEnum[] values() {
            return (LocaleEnum[]) f40991a.clone();
        }
    }

    public enum PatternPosition {
        NONE("", 0),
        LEFT("left", 1),
        RIGHT("right", 2),
        UP("upper", 4),
        DOWN("lower", 8),
        HIGHLIGHT("highlight", 16),
        CONTOUR("contour", 32);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f40993a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f40994b;

        PatternPosition(String str, int i2) {
            this.f40993a = str;
            this.f40994b = i2;
        }

        public static PatternPosition c(String str) {
            for (PatternPosition patternPosition : values()) {
                if (patternPosition.f40993a.equals(str)) {
                    return patternPosition;
                }
            }
            ct0.c();
            return null;
        }

        public final int a() {
            return this.f40994b;
        }

        public final boolean b(int i2) {
            return (this.f40994b & i2) != 0;
        }
    }

    static {
        int i2 = ImmutableSet.d;
        ImmutableSet.Builder builder = new ImmutableSet.Builder();
        builder.h("eye_wear");
        builder.h("hair_band");
        builder.h("necklace");
        builder.h("earrings");
        builder.h("hat");
        builder.h("face_art");
        builder.h("ring");
        builder.h("bracelet");
        builder.h("watch");
        d = builder.j();
    }

    public static float a(String str, float f2) {
        try {
            String strTrim = str.trim();
            return TextUtils.isEmpty(strTrim) ? f2 : Float.parseFloat(strTrim);
        } catch (Throwable th) {
            Log.e("TemplateConsts", "[atof] failed.", th);
            return f2;
        }
    }

    public static int b(int i2, String str) {
        try {
            String strTrim = str.trim();
            return TextUtils.isEmpty(strTrim) ? i2 : (int) Double.parseDouble(strTrim);
        } catch (Throwable th) {
            Log.e("TemplateConsts", "[atoi] failed.", th);
            return i2;
        }
    }

    public static String c(BeautyMode beautyMode) {
        switch (AnonymousClass1.f40990a[beautyMode.ordinal()]) {
            case 1:
                return "eye_lash";
            case 2:
                return "eye_line";
            case 3:
                return "eye_shadow";
            case 4:
                return "eye_brow";
            case 5:
                return "eye_contact";
            case 6:
                return "blush";
            case 7:
                return "skin_toner";
            case 8:
                return "lipstick";
            case 9:
                return "eye_enlarge";
            case 10:
                return "skin_smooth";
            case 11:
                return "face_reshaper";
            case 12:
                return "teeth_whitener";
            case 13:
                return "eye_wear";
            case 14:
                return "hair_band";
            case 15:
                return "necklace";
            case 16:
                return "earrings";
            case 17:
                return "hair_dye";
            case 18:
                return "face_art";
            case 19:
                return "face_contour_pattern";
            case 20:
                return "lip_liner";
            case 21:
                return "bronzer";
            case 22:
                return "concealer";
            case 23:
                return "ring";
            case 24:
                return "bracelet";
            case 25:
                return "watch";
            default:
                return "";
        }
    }

    public static BeautyMode d(String str) {
        str.getClass();
        switch (str) {
            case "eye_brow":
                return BeautyMode.EYE_BROW;
            case "eye_lash":
                return BeautyMode.EYE_LASHES;
            case "eye_line":
                return BeautyMode.EYE_LINES;
            case "eye_wear":
                return BeautyMode.EYE_WEAR;
            case "skin_toner":
                return BeautyMode.SKIN_TONER;
            case "teeth_whitener":
                return BeautyMode.TEETH_WHITENER;
            case "background_filter":
                return BeautyMode.BACKGROUND;
            case "concealer":
                return BeautyMode.CONCEALER;
            case "earrings":
                return BeautyMode.EARRINGS;
            case "face_reshaper":
                return BeautyMode.FACE_RESHAPE;
            case "skin_smooth":
                return BeautyMode.SKIN_SMOOTHER;
            case "eye_shadow":
                return BeautyMode.EYE_SHADOW;
            case "eye_enlarge":
                return BeautyMode.EYE_SIZE;
            case "lip_liner":
                return BeautyMode.LIP_LINER;
            case "hair_dye":
                return BeautyMode.HAIR_DYE;
            case "bracelet":
                return BeautyMode.BRACELET;
            case "ring":
                return BeautyMode.RING;
            case "face_contour_pattern":
                return BeautyMode.FACE_CONTOUR;
            case "blush":
                return BeautyMode.BLUSH;
            case "watch":
                return BeautyMode.WATCH;
            case "bronzer":
                return BeautyMode.BRONZER;
            case "hair_band":
                return BeautyMode.HAIR_BAND;
            case "face_art":
                return BeautyMode.FACE_ART;
            case "necklace":
                return BeautyMode.NECKLACE;
            case "lipstick":
                return BeautyMode.LIP_STICK;
            case "eye_contact":
                return BeautyMode.EYE_CONTACT;
            default:
                return BeautyMode.UNDEFINED;
        }
    }
}
