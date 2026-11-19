package com.perfectcorp.perfectlib.ph.template;

import android.content.ContentValues;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.thirdparty.com.google.common.base.Predicates;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41673c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f41674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41675f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f41676h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f41677i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b f41678j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f41679k;
    public final String l;
    public final String m;
    public final String n;
    public final int o;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41680a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f41681b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f41682c;
        public List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f41683e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f41684f;
        public final float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f41685h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f41686i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final b f41687j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final String f41688k;
        public final String l;
        public final String m;
        public final String n;
        public final int o;

        public a(m mVar) {
            this.f41680a = mVar.f41671a;
            this.f41681b = mVar.f41672b;
            this.f41682c = mVar.f41673c;
            this.d = mVar.d;
            this.f41683e = mVar.f41674e;
            this.f41684f = mVar.f41675f;
            this.g = mVar.g;
            this.f41685h = mVar.f41676h;
            this.f41686i = mVar.f41677i;
            this.f41687j = mVar.f41678j;
            this.f41688k = mVar.f41679k;
            this.l = mVar.l;
            this.m = mVar.m;
            this.n = mVar.n;
            this.o = mVar.o;
        }

        public final m a() {
            return new m(this.f41680a, this.f41681b, this.f41682c, this.d, this.f41683e, this.f41684f, this.g, this.f41685h, this.f41686i, this.f41687j, this.f41688k, this.l, this.m, this.n, this.o);
        }
    }

    public m(String str, String str2, String str3, List<String> list, String str4, String str5, float f2, boolean z, String str6, b bVar, String str7, String str8, String str9, String str10, int i2) {
        this.f41671a = str;
        this.f41672b = str2;
        this.f41673c = str3;
        this.d = list != null ? ImmutableList.u(list) : Collections.EMPTY_LIST;
        this.f41674e = str4;
        this.f41675f = str5;
        this.g = f2;
        this.f41676h = z;
        this.f41677i = str6;
        this.f41678j = bVar;
        this.f41679k = str7;
        this.l = str8;
        this.m = str9;
        this.n = str10;
        this.o = i2;
    }

    public final String a() {
        return (String) FluentIterable.n(this.d).i(Predicates.f()).i(Predicates.e(Predicates.c())).m().f("");
    }

    public final ContentValues b() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("GUID", this.f41671a);
        contentValues.put("PatternType", this.f41672b);
        contentValues.put("Name", this.f41673c);
        contentValues.put("ThumbPath", TemplatePaths.d(this.d));
        contentValues.put("Source", this.f41674e);
        contentValues.put("SupportMode", this.f41675f);
        contentValues.put("Version", Float.valueOf(this.g));
        contentValues.put("ColorImagePath", "");
        contentValues.put("ToolImagePath", "");
        contentValues.put("IsNew", Boolean.valueOf(this.f41676h));
        contentValues.put("SkuGUID", this.f41677i);
        contentValues.put("ExtraData", GsonHelper.f39261b.l(this.f41678j, b.class));
        contentValues.put("ExtStr1", this.f41679k);
        contentValues.put("ExtStr2", this.l);
        contentValues.put("ExtStr3", "false");
        contentValues.put("ExtInt1", (Integer) 0);
        contentValues.put("ExtInt2", (Integer) 0);
        contentValues.put("ExtInt3", (Integer) 0);
        contentValues.put("TextureSupportedMode", this.m);
        contentValues.put("HiddenInRoom", this.n);
        contentValues.put("Positions", Integer.valueOf(this.o));
        return contentValues;
    }

    public static final class b {
        public final String color;
        public final String contrast;

        @SerializedName("eyebrow_mode")
        public final String eyebrowMode;

        @SerializedName("eyebrow_mode_3d")
        public final String eyebrowMode3D;

        @SerializedName("face_art_layer2")
        public final String faceArtLayer2;
        public final String finishType;
        public final String fullness;

        @SerializedName("type")
        public final String hairDyePatternType;
        public final String light;

        @SerializedName("lipstick_type")
        public final String lipstickType;

        @SerializedName("lower_enlarge")
        public final String lowerEnlarge;

        @SerializedName("ombre_line_offset")
        public final String ombreLineOffset;

        @SerializedName("ombre_range")
        public final String ombreRange;
        public final String position;
        public final String reflection;
        public final String roughness;

        @SerializedName("shimmer_granularity")
        public final String shimmerGranularity;

        @SerializedName("shimmer_opacity")
        public final String shimmerOpacity;

        @SerializedName("texture_mode")
        public final String textureMode;

        @SerializedName("textured_granularity")
        public final String texturedGranularity;

        @SerializedName("tip_ratio_fore")
        public final String tipRatioFore;

        @SerializedName("tip_ratio_little")
        public final String tipRatioLittle;

        @SerializedName("tip_ratio_middle")
        public final String tipRatioMiddle;

        @SerializedName("tip_ratio_ring")
        public final String tipRatioRing;

        @SerializedName("tip_ratio_thumb")
        public final String tipRatioThumb;
        public final String transparency;

        @SerializedName("upper_enlarge")
        public final String upperEnlarge;

        @SerializedName("width_enlarge")
        public final String widthEnlarge;

        @SerializedName("wig_coloring_mode")
        public final String wigColoringMode;

        @SerializedName("wig_model_mode")
        public final String wigModelMode;
        public final String wrinkless;

        public static class a {
            public String A;
            public String B;
            public String C;
            public String D;
            public String E;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f41689a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f41690b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f41691c;
            public String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f41692e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f41693f;
            public String g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public String f41694h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public String f41695i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public String f41696j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public String f41697k;
            public String l;
            public String m;
            public String n;
            public String o;
            public String p;
            public String q;
            public String r;
            public String s;
            public String t;
            public String u;
            public String v;
            public String w;
            public String x;
            public String y;
            public String z;
        }

        public b(a aVar) {
            this.lipstickType = aVar.f41689a;
            this.eyebrowMode = aVar.f41690b;
            this.eyebrowMode3D = aVar.f41691c;
            this.wigColoringMode = aVar.d;
            this.faceArtLayer2 = aVar.f41692e;
            this.wigModelMode = aVar.f41693f;
            this.ombreRange = aVar.g;
            this.ombreLineOffset = aVar.f41694h;
            this.hairDyePatternType = aVar.f41695i;
            this.widthEnlarge = aVar.f41696j;
            this.upperEnlarge = aVar.f41697k;
            this.lowerEnlarge = aVar.l;
            this.transparency = aVar.m;
            this.light = aVar.n;
            this.reflection = aVar.o;
            this.contrast = aVar.p;
            this.roughness = aVar.q;
            this.finishType = aVar.r;
            this.textureMode = aVar.s;
            this.color = aVar.t;
            this.tipRatioThumb = aVar.u;
            this.tipRatioFore = aVar.v;
            this.tipRatioMiddle = aVar.w;
            this.tipRatioRing = aVar.x;
            this.tipRatioLittle = aVar.y;
            this.shimmerOpacity = aVar.z;
            this.texturedGranularity = aVar.A;
            this.shimmerGranularity = aVar.B;
            this.position = aVar.C;
            this.fullness = aVar.D;
            this.wrinkless = aVar.E;
        }

        public /* synthetic */ b(int i2) {
            this();
        }

        private b() {
            this.lipstickType = "";
            this.eyebrowMode = "";
            this.eyebrowMode3D = "";
            this.wigColoringMode = "";
            this.faceArtLayer2 = "";
            this.wigModelMode = "";
            this.ombreRange = "";
            this.ombreLineOffset = "";
            this.hairDyePatternType = "";
            this.widthEnlarge = "";
            this.upperEnlarge = "";
            this.lowerEnlarge = "";
            this.transparency = "";
            this.light = "";
            this.reflection = "";
            this.contrast = "";
            this.roughness = "";
            this.finishType = "";
            this.textureMode = "";
            this.color = "";
            this.tipRatioThumb = "";
            this.tipRatioFore = "";
            this.tipRatioMiddle = "";
            this.tipRatioRing = "";
            this.tipRatioLittle = "";
            this.shimmerOpacity = "";
            this.texturedGranularity = "";
            this.shimmerGranularity = "";
            this.position = "";
            this.fullness = "";
            this.wrinkless = "";
        }
    }
}
