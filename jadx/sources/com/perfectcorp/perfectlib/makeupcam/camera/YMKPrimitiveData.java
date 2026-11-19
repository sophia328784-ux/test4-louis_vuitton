package com.perfectcorp.perfectlib.makeupcam.camera;

import android.graphics.Color;
import android.graphics.Point;
import android.text.TextUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.jniproxy.UIShimmer;
import com.perfectcorp.perfectlib.jniproxy.VN_EyebrowMode;
import com.perfectcorp.perfectlib.jniproxy.VN_HairDyeMode;
import com.perfectcorp.perfectlib.makeupcam.template.EffectInfo;
import com.perfectcorp.perfectlib.makeupcam.template.LocalizedString;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import defpackage.a61;
import defpackage.d21;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class YMKPrimitiveData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UIShimmer f40756a = new UIShimmer(new MakeupColor(0).d, 50, 50, 50);

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'ORIGINAL' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class EyebrowMode {
        public static final EyebrowMode ART_DESIGN;
        public static final EyebrowMode NONE;
        public static final EyebrowMode ORIGINAL;
        private static final /* synthetic */ EyebrowMode[] d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f40763a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final VN_EyebrowMode f40764b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f40765c;

        static {
            VN_EyebrowMode vN_EyebrowMode = VN_EyebrowMode.EYEBROW_ORIGINAL_MODE;
            EyebrowMode eyebrowMode = new EyebrowMode("ORIGINAL", 0, "ORIGINAL", vN_EyebrowMode);
            ORIGINAL = eyebrowMode;
            EyebrowMode eyebrowMode2 = new EyebrowMode("ART_DESIGN", 1, "ART_DESIGN", VN_EyebrowMode.EYEBROW_ART_DESIGN_MODE);
            ART_DESIGN = eyebrowMode2;
            EyebrowMode eyebrowMode3 = new EyebrowMode("NONE", 2, "NONE", vN_EyebrowMode);
            NONE = eyebrowMode3;
            d = new EyebrowMode[]{eyebrowMode, eyebrowMode2, eyebrowMode3};
        }

        public EyebrowMode(String str, int i2, String str2, VN_EyebrowMode vN_EyebrowMode) {
            super(str, i2);
            this.f40763a = str2;
            this.f40764b = vN_EyebrowMode;
            this.f40765c = 50;
        }

        public static EyebrowMode c(String str) {
            for (EyebrowMode eyebrowMode : values()) {
                if (eyebrowMode.f40763a.equals(str)) {
                    return eyebrowMode;
                }
            }
            return NONE;
        }

        public static EyebrowMode valueOf(String str) {
            return (EyebrowMode) Enum.valueOf(EyebrowMode.class, str);
        }

        public static EyebrowMode[] values() {
            return (EyebrowMode[]) d.clone();
        }

        public final int a() {
            return this.f40765c;
        }

        public final VN_EyebrowMode b() {
            return this.f40764b;
        }
    }

    public enum FaceArtLayer2 {
        YES("1"),
        NO("");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f40767a;

        FaceArtLayer2(String str) {
            this.f40767a = str;
        }

        public static FaceArtLayer2 a(String str) {
            FaceArtLayer2 faceArtLayer2 = YES;
            return faceArtLayer2.f40767a.equalsIgnoreCase(str) ? faceArtLayer2 : NO;
        }
    }

    public enum HairDyePatternType {
        UPPER_LOWER("upper_lower"),
        ONE_COLOR("one_color"),
        ONE_COLOR_OMBRE("one_color_ombre"),
        NONE("");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f40769a;

        HairDyePatternType(String str) {
            this.f40769a = str;
        }

        public static HairDyePatternType a(String str) {
            for (HairDyePatternType hairDyePatternType : values()) {
                if (hairDyePatternType.f40769a.equalsIgnoreCase(str)) {
                    return hairDyePatternType;
                }
            }
            return NONE;
        }
    }

    public static class LipstickProfile {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LipstickType f40770a;

        public LipstickProfile(LipstickType lipstickType) {
            this.f40770a = lipstickType;
        }

        public final String toString() {
            return "type: " + this.f40770a.name();
        }
    }

    public static class LipstickStyle {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final LipstickStyle f40771e = new LipstickStyle("NULL", 50, 50);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40772a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f40773b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f40774c;
        public final Style d;

        public enum Style {
            OMBRE("style_lipstick_01"),
            UPPER_LOWER("upper_lower"),
            NONE("style_lipstick_01");


            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final String f40776a;

            Style(String str) {
                this.f40776a = str;
            }

            public static Style b(String str) {
                for (Style style : values()) {
                    if (style.f40776a.equalsIgnoreCase(str)) {
                        return style;
                    }
                }
                return NONE;
            }

            public final boolean a() {
                return UPPER_LOWER.f40776a.equalsIgnoreCase(this.f40776a);
            }
        }

        public LipstickStyle(String str, int i2, int i3) {
            this.f40772a = str;
            this.f40773b = i2;
            this.f40774c = i3;
            this.d = Style.b(str);
        }
    }

    public enum LipstickType {
        THICK("patten_lipstick_01", "thick"),
        BRIGHT("patten_lipstick_02", "bright"),
        GLOSS("patten_lipstick_03", "gloss"),
        ESTEE_HIGH_GLOSS("patten_lipstick_estee_high_gloss", "estee_high_gloss"),
        ESTEE_WET_PEARL("patten_lipstick_estee_wet_pearl", "estee_wet_pearl"),
        TOM_FORD_METALLIC("patten_lipstick_tom_ford_metallic", "tom_ford_metallic"),
        HOLOGRAPHIC("pattern_lipstick_holographic", "holographic"),
        NONE("none", "none");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f40778a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f40779b;

        LipstickType(String str, String str2) {
            this.f40778a = str;
            this.f40779b = str2;
        }

        public static LipstickType a(String str) {
            for (LipstickType lipstickType : values()) {
                if (lipstickType.f40778a.equals(str)) {
                    return lipstickType;
                }
            }
            md.n(tr.g("Can not get LipstickType by patternId=", str));
            return null;
        }

        public static LipstickType c(String str) {
            for (LipstickType lipstickType : values()) {
                if (lipstickType.f40779b.equalsIgnoreCase(str)) {
                    return lipstickType;
                }
            }
            return NONE;
        }

        public final String b() {
            return this.f40779b;
        }
    }

    public static final class Look {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Look f40780j = new Look("", "", 1.0f, new LocalizedString(), new LocalizedString(), SourceType.DEFAULT, "");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40781a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LocalizedString f40782b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final LocalizedString f40783c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f40784e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SourceType f40785f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ArrayList f40786h = new ArrayList();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f40787i = false;

        public Look(String str, String str2, float f2, LocalizedString localizedString, LocalizedString localizedString2, SourceType sourceType, String str3) {
            this.f40781a = str;
            this.d = str2;
            this.f40784e = f2;
            this.f40782b = localizedString;
            this.f40783c = localizedString2;
            this.f40785f = sourceType;
            this.g = str3;
        }

        public final List a() {
            return this.f40787i ? this.f40786h : Collections.EMPTY_LIST;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("id: ");
            sb.append(this.f40781a);
            sb.append(" thumbnail: ");
            sb.append(this.d);
            sb.append(" version: ");
            sb.append(this.f40784e);
            sb.append("\n");
            for (Effect effect : this.f40786h) {
                sb.append("effetType: ");
                BeautyMode beautyMode = effect.f40758b;
                EffectInfo.Intensities intensities = effect.f40760e;
                sb.append(beautyMode.name());
                sb.append(" externalPatternGUID: ");
                sb.append(effect.f40759c);
                sb.append("\n");
                for (MakeupColor makeupColor : effect.d) {
                    sb.append("color: ");
                    sb.append(String.format("FF%02X%02X%02X", Integer.valueOf(makeupColor.f40788a), Integer.valueOf(makeupColor.f40789b), Integer.valueOf(makeupColor.f40790c)));
                    sb.append(" intensity: ");
                    sb.append(makeupColor.f40791e);
                    sb.append("\n");
                }
                if (intensities != null) {
                    sb.append("intensities: ");
                    sb.append(intensities);
                    sb.append("\n");
                }
                sb.append("\n");
            }
            return sb.toString();
        }
    }

    public static final class Mask {
        public final String A;
        public final int B;
        public final String C;
        public final String D;
        public final String E;
        public final String F;
        public final String G;
        public final String H;
        public final int I;
        public final String J;
        public final Point K;
        public final Point L;
        public final Point M;
        public final int N;
        public final int O;
        public final int P;
        public final int Q;
        public final int R;
        public final int S;
        public final Point T;
        public final Point U;
        public final Point V;
        public final Point W;
        public final Point X;
        public final Point Y;
        public final String Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40802a;
        public final boolean a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40803b;
        public final boolean b0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40804c;
        public final int c0;
        public final String d;
        public final int d0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f40805e;
        public final String e0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Position f40806f;
        public final boolean f0;
        public final Point g;
        public final String g0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Point f40807h;
        public final String h0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Point f40808i;
        public final boolean i0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Point f40809j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final EyeShadowSide f40810k;
        public final Point l;
        public final Point m;
        public final Point n;
        public final Point o;
        public final Point p;
        public final Point q;
        public final Point r;
        public final Point s;
        public final Point t;
        public final Point u;
        public final Point v;
        public final Point w;
        public final Point x;
        public final Point y;
        public final Point z;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class EyeShadowSide {
            public static final EyeShadowSide BOTH;
            public static final EyeShadowSide LEFT;
            public static final EyeShadowSide RIGHT;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final /* synthetic */ EyeShadowSide[] f40811a;

            static {
                EyeShadowSide eyeShadowSide = new EyeShadowSide("BOTH", 0);
                BOTH = eyeShadowSide;
                EyeShadowSide eyeShadowSide2 = new EyeShadowSide("LEFT", 1);
                LEFT = eyeShadowSide2;
                EyeShadowSide eyeShadowSide3 = new EyeShadowSide("RIGHT", 2);
                RIGHT = eyeShadowSide3;
                f40811a = new EyeShadowSide[]{eyeShadowSide, eyeShadowSide2, eyeShadowSide3};
            }

            public static EyeShadowSide valueOf(String str) {
                return (EyeShadowSide) Enum.valueOf(EyeShadowSide.class, str);
            }

            public static EyeShadowSide[] values() {
                return (EyeShadowSide[]) f40811a.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class Position {
            public static final Position CONTOUR;
            public static final Position HIGHLIGHT;
            public static final Position LEFT;
            public static final Position LOWER;
            public static final Position NONE;
            public static final Position RIGHT;
            public static final Position UPPER;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final /* synthetic */ Position[] f40812a;

            static {
                Position position = new Position("LEFT", 0);
                LEFT = position;
                Position position2 = new Position("RIGHT", 1);
                RIGHT = position2;
                Position position3 = new Position("UPPER", 2);
                UPPER = position3;
                Position position4 = new Position("LOWER", 3);
                LOWER = position4;
                Position position5 = new Position("HIGHLIGHT", 4);
                HIGHLIGHT = position5;
                Position position6 = new Position("CONTOUR", 5);
                CONTOUR = position6;
                Position position7 = new Position("NONE", 6);
                NONE = position7;
                f40812a = new Position[]{position, position2, position3, position4, position5, position6, position7};
            }

            public static Position valueOf(String str) {
                return (Position) Enum.valueOf(Position.class, str);
            }

            public static Position[] values() {
                return (Position[]) f40812a.clone();
            }
        }

        public Mask(String str, String str2, String str3, String str4, String str5, Position position, Point point, Point point2, Point point3, Point point4, EyeShadowSide eyeShadowSide, Point point5, Point point6, Point point7, Point point8, Point point9, Point point10, Point point11, Point point12, Point point13, Point point14, Point point15, Point point16, Point point17, Point point18, Point point19, String str6, int i2, String str7, String str8, Point point20, Point point21, Point point22, Point point23, String str9, String str10, String str11, String str12, String str13, int i3, String str14, Point point24, Point point25, Point point26, int i4, int i5, int i6, int i7, int i8, int i9, Point point27, Point point28, Point point29, Point point30, Point point31, Point point32, String str15, boolean z, boolean z2, int i10, int i11, String str16, boolean z3, String str17, String str18, boolean z4) {
            this.f40802a = str;
            this.f40803b = str2;
            this.f40804c = str3;
            this.d = str4;
            this.f40805e = str5;
            this.f40806f = position;
            this.g = point;
            this.f40807h = point2;
            this.f40808i = point3;
            this.f40809j = point4;
            this.f40810k = eyeShadowSide;
            this.l = point5;
            this.m = point6;
            this.n = point7;
            this.o = point8;
            this.p = point9;
            this.q = point10;
            this.r = point11;
            this.s = point12;
            this.t = point13;
            this.u = point14;
            this.v = point15;
            this.w = point16;
            this.x = point17;
            this.y = point18;
            this.z = point19;
            this.A = str6;
            this.B = i2;
            this.C = str7;
            this.D = str8;
            this.E = str10;
            this.F = str11;
            this.G = str12;
            this.H = str13;
            this.I = i3;
            this.J = str14;
            this.K = point24;
            this.L = point25;
            this.M = point26;
            this.N = i4;
            this.O = i5;
            this.P = i6;
            this.Q = i7;
            this.R = i8;
            this.S = i9;
            this.T = point27;
            this.U = point28;
            this.V = point29;
            this.W = point30;
            this.X = point31;
            this.Y = point32;
            this.Z = str15;
            this.a0 = z;
            this.b0 = z2;
            this.c0 = i10;
            this.d0 = i11;
            this.e0 = str16;
            this.f0 = z3;
            this.g0 = str17;
            this.h0 = str18;
            this.i0 = z4;
        }

        public static Position a(String str) {
            Position position = Position.LEFT;
            if (str.equalsIgnoreCase(position.name())) {
                return position;
            }
            Position position2 = Position.RIGHT;
            if (str.equalsIgnoreCase(position2.name())) {
                return position2;
            }
            Position position3 = Position.UPPER;
            if (str.equalsIgnoreCase(position3.name())) {
                return position3;
            }
            Position position4 = Position.LOWER;
            if (str.equalsIgnoreCase(position4.name())) {
                return position4;
            }
            Position position5 = Position.HIGHLIGHT;
            if (str.equalsIgnoreCase(position5.name())) {
                return position5;
            }
            Position position6 = Position.CONTOUR;
            return str.equalsIgnoreCase(position6.name()) ? position6 : Position.NONE;
        }

        public final int b() {
            return this.Q;
        }

        public final int c() {
            return this.R;
        }

        public final int d() {
            return this.c0;
        }

        public final int e() {
            return this.N;
        }

        public final int f() {
            return this.O;
        }

        public final int g() {
            return this.d0;
        }

        public final int h() {
            return this.P;
        }

        public final Position i() {
            return this.f40806f;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Mask [anchorLeft=");
            sb.append(this.u);
            sb.append(", patternId='");
            sb.append(this.f40802a);
            sb.append("', src='");
            sb.append(this.f40803b);
            sb.append("', shapeSrc='");
            sb.append(this.f40804c);
            sb.append("', imageSrc='");
            sb.append(this.d);
            sb.append("', secondSrc='");
            sb.append(this.f40805e);
            sb.append("', position=");
            sb.append(this.f40806f);
            sb.append(", eyeleft=");
            sb.append(this.g);
            sb.append(", eyetop=");
            sb.append(this.f40807h);
            sb.append(", eyeright=");
            sb.append(this.f40808i);
            sb.append(", eyebottom=");
            sb.append(this.f40809j);
            sb.append(", eyeShadowSide=");
            sb.append(this.f40810k);
            sb.append(", browHead=");
            sb.append(this.l);
            sb.append(", browTop=");
            sb.append(this.m);
            sb.append(", browTail=");
            sb.append(this.n);
            sb.append(", basicBrowHead=");
            sb.append(this.o);
            sb.append(", basicBrowTop=");
            sb.append(this.p);
            sb.append(", basicBrowTail=");
            sb.append(this.q);
            sb.append(", basicEyeHead=");
            sb.append(this.r);
            sb.append(", basicEyeTop=");
            sb.append(this.s);
            sb.append(", basicEyeTail=");
            sb.append(this.t);
            sb.append(", anchorRight=");
            sb.append(this.v);
            sb.append(", anchorLeftTop=");
            sb.append(this.w);
            sb.append(", anchorLeftBottom=");
            sb.append(this.x);
            sb.append(", anchorRightTop=");
            sb.append(this.y);
            sb.append(", anchorRightBottom=");
            sb.append(this.z);
            sb.append(", maskWidth='");
            sb.append(this.A);
            sb.append("', order=");
            sb.append(this.B);
            sb.append(", thumbnail='");
            sb.append(this.C);
            sb.append("', colorSetGuid='");
            sb.append(this.D);
            sb.append("', obbPath=");
            sb.append(this.E);
            sb.append("', occluderPath=");
            sb.append(this.H);
            sb.append(", hairWarpStrength=");
            sb.append(this.I);
            sb.append(", browPositionX=");
            sb.append(this.N);
            sb.append(", browPositionY=");
            sb.append(this.O);
            sb.append(", browThickness=");
            sb.append(this.P);
            sb.append(", browCurvature=");
            sb.append(this.Q);
            sb.append(", browDefinition=");
            sb.append(this.R);
            sb.append(", browOversizedRatio=");
            sb.append(this.S);
            sb.append(", upperHead3d=");
            sb.append(this.T);
            sb.append(", upperMiddle3d=");
            sb.append(this.U);
            sb.append(", upperTail3d=");
            sb.append(this.V);
            sb.append(", lowerHead3d=");
            sb.append(this.W);
            sb.append(", lowerMiddle3d=");
            sb.append(this.X);
            sb.append(", lowerTail3d=");
            sb.append(this.Y);
            sb.append(", featherSrc3d='");
            sb.append(this.Z);
            sb.append("', browGoldenRatio=");
            sb.append(this.a0);
            sb.append(", browMatchThickness=");
            sb.append(this.b0);
            sb.append(", browHeadLocation=");
            sb.append(this.c0);
            sb.append(", browTailLocation=");
            sb.append(this.d0);
            sb.append(", objectDistanceRatio=");
            sb.append(this.e0);
            sb.append(", isRigidBody=");
            sb.append(this.f0);
            sb.append(", objectDistanceRatioBack=");
            sb.append(this.g0);
            sb.append(", objectDistanceRatioPalm=");
            sb.append(this.h0);
            sb.append(", adaptiveRotate=");
            return d21.q(sb, this.i0, ']');
        }
    }

    public static final class Palette {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40813a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40814b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f40815c;
        public final SourceType d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f40816e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f40817f;
        public ArrayList g;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f40818a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f40819b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f40820c;
            public SourceType d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f40821e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f40822f;
        }

        public Palette(Builder builder) {
            this.f40813a = builder.f40818a;
            this.f40814b = builder.f40819b;
            this.f40815c = builder.f40820c;
            this.d = builder.d;
            this.f40816e = builder.f40821e;
            this.f40817f = builder.f40822f;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Palette [paletteGUID='");
            sb.append(this.f40813a);
            sb.append("', colorSetGUID='");
            sb.append(this.f40814b);
            sb.append("', colorCount=");
            sb.append(this.f40815c);
            sb.append(", sourceType=");
            sb.append(this.d);
            sb.append(", skuGUID='");
            return n00.r(this.f40816e, "']", sb);
        }
    }

    public static final class Pattern {
        public static final Pattern D;
        public static final Pattern E;
        public final int A;
        public final int B;
        public final int C;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40823a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40824b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40825c;
        public final LipstickProfile d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final LocalizedString f40826e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final EyebrowMode f40827f;
        public final TextureSupportedMode g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final FaceArtLayer2 f40828h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f40829i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f40830j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f40831k;
        public final HairDyePatternType l;
        public final float m;
        public final float n;
        public final int o;
        public final int p;
        public final int q;
        public final int r;
        public final String s;
        public final String t;
        public final String u;
        public final float v;
        public final float w;
        public final float x;
        public final float y;
        public final float z;

        public static final class Builder {
            public int A;
            public int B;
            public int C;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f40832a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f40833b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f40834c;
            public LipstickProfile d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public LocalizedString f40835e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public EyebrowMode f40836f;
            public TextureSupportedMode g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public FaceArtLayer2 f40837h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f40838i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f40839j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f40840k;
            public HairDyePatternType l;
            public float m;
            public float n;
            public int o;
            public int p;
            public int q;
            public int r;
            public String s;
            public String t;
            public String u;
            public float v;
            public float w;
            public float x;
            public float y;
            public float z;
        }

        static {
            Builder builder = new Builder();
            builder.f40832a = "hairdye_pattern_one_color_ombre";
            builder.l = HairDyePatternType.ONE_COLOR_OMBRE;
            builder.m = -1.0f;
            builder.n = -1.0f;
            D = new Pattern(builder);
            Builder builder2 = new Builder();
            builder2.f40832a = "hairdye_pattern_one_color_full";
            builder2.l = HairDyePatternType.ONE_COLOR;
            builder2.m = -1.0f;
            builder2.n = -1.0f;
            E = new Pattern(builder2);
        }

        public Pattern(Builder builder) {
            this.f40823a = builder.f40832a;
            this.f40824b = builder.f40833b;
            this.f40825c = builder.f40834c;
            this.d = builder.d;
            this.f40826e = builder.f40835e;
            this.g = builder.g;
            this.f40828h = builder.f40837h;
            this.f40827f = builder.f40836f;
            this.f40829i = builder.f40838i;
            this.f40830j = builder.f40839j;
            this.f40831k = builder.f40840k;
            this.l = builder.l;
            this.m = builder.m;
            this.n = builder.n;
            this.o = builder.o;
            this.p = builder.p;
            this.q = builder.q;
            this.r = builder.r;
            this.s = builder.s;
            this.t = builder.t;
            this.u = builder.u;
            this.v = builder.v;
            this.w = builder.w;
            this.x = builder.x;
            this.y = builder.y;
            this.z = builder.z;
            this.A = builder.A;
            this.B = builder.B;
            this.C = builder.C;
        }

        public final HairDyePatternType a() {
            return this.l;
        }

        public final int b() {
            return this.f40831k;
        }

        public final int c() {
            return this.f40830j;
        }

        public final int d() {
            return this.f40829i;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Pattern [patternID='");
            sb.append(this.f40823a);
            sb.append("', skuGuid='");
            return n00.r(this.f40825c, "']", sb);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SourceType {
        public static final SourceType CUSTOM;
        public static final SourceType DEFAULT;
        public static final SourceType DOWNLOAD;
        public static final SourceType SKU;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ SourceType[] f40841a;

        static {
            SourceType sourceType = new SourceType("DEFAULT", 0);
            DEFAULT = sourceType;
            SourceType sourceType2 = new SourceType("DOWNLOAD", 1);
            DOWNLOAD = sourceType2;
            SourceType sourceType3 = new SourceType("CUSTOM", 2);
            CUSTOM = sourceType3;
            SourceType sourceType4 = new SourceType("SKU", 3);
            SKU = sourceType4;
            f40841a = new SourceType[]{sourceType, sourceType2, sourceType3, sourceType4};
        }

        public static SourceType valueOf(String str) {
            return (SourceType) Enum.valueOf(SourceType.class, str);
        }

        public static SourceType[] values() {
            return (SourceType[]) f40841a.clone();
        }
    }

    public enum TextureSupportedMode {
        TWO_D("2D", false),
        THREE_D("3D", true),
        CUBE_EYEWEAR("cube_eyewear", true),
        REAL_3D("real_3D", true),
        ALL("All", true),
        NONE("", false);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f40843a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f40844b;

        TextureSupportedMode(String str, boolean z) {
            this.f40843a = str;
            this.f40844b = z;
        }

        public static TextureSupportedMode a(String str) {
            for (TextureSupportedMode textureSupportedMode : values()) {
                if (textureSupportedMode.f40843a.equalsIgnoreCase(str)) {
                    return textureSupportedMode;
                }
            }
            return TWO_D;
        }

        public static Set c(String str) {
            return (Set) Observable.fromArray(str.split(",")).map(new a61(7)).map(new a61(8)).collectInto(EnumSet.noneOf(TextureSupportedMode.class), new a61(9)).c();
        }

        public final boolean b() {
            return this.f40844b;
        }
    }

    public static final class Effect {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40757a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyMode f40758b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40759c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final EffectInfo.Intensities f40760e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f40761f;
        public final EffectInfo.Extras g;

        public enum Position {
            LEFT("left"),
            RIGHT("right"),
            BOTH("both"),
            THUMB_FINGER("thumb"),
            FOREFINGER("fore"),
            MIDDLE_FINGER("middle"),
            RING_FINGER("ring"),
            LITTLE_FINGER("little"),
            UNDEFINED("");

            public final String name;

            Position(String str) {
                this.name = str;
            }
        }

        public Effect(Effect effect, BeautyMode beautyMode) {
            this("", beautyMode, effect.f40759c, effect.d, effect.f40760e, effect.f40761f, effect.g);
        }

        public final List a() {
            return this.d;
        }

        public final BeautyMode b() {
            return this.f40758b;
        }

        public final EffectInfo.Extras c() {
            return this.g;
        }

        public final int d() {
            return this.g.f40956h;
        }

        public final EffectInfo.Intensities e() {
            return this.f40760e;
        }

        public final String f() {
            return this.g.f40953c;
        }

        public final int g() {
            return this.g.m;
        }

        public final String h() {
            return this.g.f40951a;
        }

        public final String i() {
            return this.f40759c;
        }

        public final int j() {
            return this.g.l;
        }

        public final Position k() {
            String str = this.g.f40958j;
            for (Position position : Position.values()) {
                if (position.name.equalsIgnoreCase(str)) {
                    return position;
                }
            }
            return Position.UNDEFINED;
        }

        public Effect(String str, BeautyMode beautyMode, String str2, List<MakeupColor> list, EffectInfo.Intensities intensities, String str3, EffectInfo.Extras extras) {
            this.f40757a = str;
            this.f40758b = beautyMode;
            this.f40759c = str2;
            this.d = list;
            this.f40760e = intensities;
            this.f40761f = str3;
            this.g = extras;
        }
    }

    public static final class MakeupColor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f40788a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f40789b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f40790c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f40791e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f40792f;
        public final ExtraData g;

        public static class ExtraData {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f40795c;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int[] f40797f;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public String f40798h;
            public String r;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f40793a = -1;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f40794b = -1;
            public int d = -1;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f40796e = -1;
            public int g = -1;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f40799i = -1000;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f40800j = -1;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f40801k = -1000;
            public int l = -1;
            public int m = -1;
            public int n = -1;
            public int o = -1;
            public int p = -1;
            public int q = -1;

            public static String a(String str) {
                int i2;
                if (str == null) {
                    Log.g(2, "YMKPrimitiveData", "formatEngineColorString(), Info. engineColorString is null");
                    return "";
                }
                if (str.isEmpty()) {
                    return "";
                }
                String[] strArrSplit = str.split(",");
                int[] iArr = new int[8];
                for (int i3 = 0; i3 < 8; i3++) {
                    if (i3 < strArrSplit.length) {
                        String str2 = strArrSplit[i3];
                        if (str2 == null || str2.isEmpty()) {
                            iArr[i3] = -1;
                        } else {
                            iArr[i3] = Integer.parseInt(strArrSplit[i3]);
                        }
                    } else {
                        iArr[i3] = -1;
                    }
                }
                StringBuilder sb = new StringBuilder();
                for (int i4 = 0; i4 < 8; i4++) {
                    if (i4 < 8 && (i2 = iArr[i4]) != -1) {
                        sb.append(i2);
                    }
                    if (i4 != 7) {
                        sb.append(",");
                    }
                }
                return ",,,,,,,".equals(sb.toString()) ? "" : sb.toString();
            }

            public static JSONObject b(int i2, int i3, boolean z, int i4, int i5, int i6, int i7, int i8, int i9, int i10, String str) {
                return c(i2 > 0 ? String.valueOf(i2) : "", i3 > 0 ? String.valueOf(i3) : "", String.valueOf(z), String.valueOf(i4), a(""), String.valueOf(0), "", "", "", String.valueOf(-1000), i5 != -1 ? String.valueOf(i5) : "", i6 != -1 ? String.valueOf(i6) : "", String.valueOf(0), i7 != -1 ? String.valueOf(i7) : "", i8 != -1 ? String.valueOf(i8) : "", i9 != -1 ? String.valueOf(i9) : "", i10 != -1 ? String.valueOf(i10) : "", str);
            }

            public static JSONObject c(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18) {
                JSONObject jSONObject = new JSONObject();
                try {
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("level_max", str);
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("level_default", str2);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        jSONObject.put("is_shimmer", str3);
                    }
                    if (!TextUtils.isEmpty(str4)) {
                        jSONObject.put("shimmer_intensity", str4);
                    }
                    if (!TextUtils.isEmpty(str5)) {
                        jSONObject.put("engine_color", str5);
                    }
                    if (!TextUtils.isEmpty(str6)) {
                        jSONObject.put("shine_intensity", str6);
                    }
                    if (!TextUtils.isEmpty(str7)) {
                        jSONObject.put("hair_dye_mode", str7);
                    }
                    if (!TextUtils.isEmpty(str8)) {
                        jSONObject.put("glow_intensity", str8);
                    }
                    if (!TextUtils.isEmpty(str9)) {
                        jSONObject.put("coverage_intensity", str9);
                    }
                    if (!TextUtils.isEmpty(str10)) {
                        jSONObject.put("skin_smooth_intensity", str10);
                    }
                    if (!TextUtils.isEmpty(str11)) {
                        jSONObject.put("shimmer_density", str11);
                    }
                    if (!TextUtils.isEmpty(str12)) {
                        jSONObject.put("shimmer_granularity", str12);
                    }
                    if (!TextUtils.isEmpty(str13)) {
                        jSONObject.put("metallic_intensity", str13);
                    }
                    if (!TextUtils.isEmpty(str14)) {
                        jSONObject.put("shimmer_color", str14);
                    }
                    if (!TextUtils.isEmpty(str15)) {
                        jSONObject.put("color_intensity", str15);
                    }
                    if (!TextUtils.isEmpty(str16)) {
                        jSONObject.put("gloss", str16);
                    }
                    if (!TextUtils.isEmpty(str17)) {
                        jSONObject.put("transparency", str17);
                    }
                    if (!TextUtils.isEmpty(str18)) {
                        jSONObject.put("inner_text", str18);
                    }
                    return jSONObject;
                } catch (JSONException e2) {
                    Log.e("YMKPrimitiveData", "", e2);
                    return jSONObject;
                }
            }
        }

        public MakeupColor(MakeupColor makeupColor) {
            this(0);
            if (makeupColor != null) {
                this.f40791e = makeupColor.f40791e;
                int i2 = makeupColor.d;
                this.d = i2;
                this.f40792f = makeupColor.f40792f;
                ExtraData extraData = this.g;
                ExtraData extraData2 = makeupColor.g;
                extraData.f40793a = extraData2.f40793a;
                extraData.f40794b = extraData2.f40794b;
                extraData.f40795c = extraData2.f40795c;
                extraData.d = makeupColor.l();
                ExtraData extraData3 = this.g;
                ExtraData extraData4 = makeupColor.g;
                extraData3.f40797f = extraData4.f40797f;
                extraData3.g = extraData4.g;
                extraData3.f40798h = extraData4.f40798h;
                extraData3.f40799i = extraData4.f40799i;
                extraData3.f40800j = extraData4.f40800j;
                extraData3.f40801k = extraData4.f40801k;
                extraData3.l = extraData4.l;
                extraData3.m = extraData4.m;
                extraData3.f40796e = makeupColor.i();
                ExtraData extraData5 = this.g;
                ExtraData extraData6 = makeupColor.g;
                extraData5.n = extraData6.n;
                int i3 = extraData6.o;
                extraData5.o = i3 == -1 ? 0 : i3;
                int i4 = extraData6.p;
                extraData5.p = i4 == -1 ? 0 : i4;
                int i5 = extraData6.q;
                extraData5.q = i5 != -1 ? i5 : 0;
                extraData5.r = extraData6.r;
                a(i2);
            }
        }

        public final void a(int i2) {
            int iRed = Color.red(i2);
            int iGreen = Color.green(i2);
            int iBlue = Color.blue(i2);
            if (iRed < 0 || iRed >= 256) {
                iRed = 0;
            }
            this.f40788a = iRed;
            if (iGreen < 0 || iGreen >= 256) {
                iGreen = 0;
            }
            this.f40789b = iGreen;
            if (iBlue < 0 || iBlue >= 256) {
                iBlue = 0;
            }
            this.f40790c = iBlue;
        }

        public final int b() {
            return this.d;
        }

        public final String c() {
            return String.format("%08X", Integer.valueOf(this.d));
        }

        public final int d() {
            return this.g.f40800j;
        }

        public final int[] e() {
            return this.g.f40797f;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MakeupColor)) {
                return false;
            }
            MakeupColor makeupColor = (MakeupColor) obj;
            if (this.d == makeupColor.d) {
                ExtraData extraData = this.g;
                int i2 = extraData.f40794b;
                ExtraData extraData2 = makeupColor.g;
                if (i2 == extraData2.f40794b && extraData.f40793a == extraData2.f40793a) {
                    return true;
                }
            }
            return false;
        }

        public final VN_HairDyeMode f() {
            return "salon".equalsIgnoreCase(this.g.f40798h) ? VN_HairDyeMode.HAIR_DYE_SALON_MODE : VN_HairDyeMode.HAIR_DYE_GENERIC_MODE;
        }

        public final int g() {
            return this.g.f40794b;
        }

        public final int h() {
            return this.g.f40793a;
        }

        public final int hashCode() {
            return this.d;
        }

        public final int i() {
            int i2 = this.g.f40796e;
            if (i2 == -1) {
                return 0;
            }
            return i2;
        }

        public final String j() {
            return this.f40792f;
        }

        public final int k() {
            return this.g.n;
        }

        public final int l() {
            int i2 = this.g.d;
            if (i2 == -1) {
                return 0;
            }
            return i2;
        }

        public final String m() {
            return this.g.r;
        }

        public final boolean n() {
            return this.g.f40795c;
        }

        public MakeupColor(int i2, int i3, String str, int i4, int i5, boolean z, int i6, int[] iArr, int i7, String str2, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, String str3) {
            this(i2);
            this.f40791e = i3;
            this.f40792f = str;
            ExtraData extraData = this.g;
            extraData.f40793a = i4;
            extraData.f40794b = i5;
            extraData.f40795c = z;
            extraData.d = i6;
            extraData.f40797f = iArr;
            extraData.g = i7;
            extraData.f40798h = str2;
            extraData.f40799i = i8;
            extraData.f40800j = i9;
            extraData.f40801k = i10;
            extraData.l = i11;
            extraData.m = i12;
            extraData.f40796e = i13;
            extraData.n = i14;
            extraData.o = i15;
            extraData.p = i16;
            extraData.q = i17;
            extraData.r = str3;
        }

        public MakeupColor(int i2) {
            this.g = new ExtraData();
            this.f40791e = -1;
            this.d = i2;
            a(i2);
        }

        public MakeupColor(MakeupColor makeupColor, int i2) {
            this(makeupColor);
            if (makeupColor != null) {
                this.d = i2;
                a(i2);
            }
        }
    }
}
