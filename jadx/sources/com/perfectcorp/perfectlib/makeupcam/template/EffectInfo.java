package com.perfectcorp.perfectlib.makeupcam.template;

import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class EffectInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f40936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f40937c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f40938e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f40939f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f40940h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f40941i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f40942j;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40943a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40944b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40945c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f40946e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f40947f;
        public String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f40948h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f40949i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f40950j;

        public Builder(String str, String str2, String str3, String str4) {
            this.f40943a = str;
            this.f40944b = str2;
            this.f40945c = str3;
            this.d = str4;
        }
    }

    public static final class Extras {
        public final String A;
        public final String B;
        public final String C;
        public final String D;
        public final String E;
        public final String F;
        public final String G;
        public final String H;
        public final String I;
        public final List J;
        public final String K;
        public final String L;
        public final String M;
        public final String N;
        public final String O;
        public final String P;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40951a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40952b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40953c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f40954e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f40955f;
        public final float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f40956h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f40957i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f40958j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final String f40959k;
        public final int l;
        public final int m;
        public final String n;
        public final String o;
        public final String p;
        public final String q;
        public final List r;
        public final int s;
        public final int t;
        public final String u;
        public final String v;
        public final String w;
        public final String x;
        public final String y;
        public final String z;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.makeupcam.template.EffectInfo$Extras$1, reason: invalid class name */
        class AnonymousClass1 extends TypeToken<List<ColorReferences>> {
        }

        public static final class Builder {
            public String B;
            public String C;
            public String D;
            public String E;
            public String F;
            public String G;
            public int H;
            public int I;
            public List J;
            public String K;
            public String L;
            public String M;
            public String N;
            public String O;
            public String P;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f40960a;
            public int d;
            public String t;
            public String u;
            public String v;
            public String w;
            public String x;
            public String y;
            public String z;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public float f40961b = TemplateConsts.f40987a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f40962c = -1;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f40963e = "";

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f40964f = "";
            public int g = -1;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f40965h = -1;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public List f40966i = Collections.EMPTY_LIST;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public String f40967j = "";

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public String f40968k = "";
            public String l = "";
            public String m = "";
            public String n = "";
            public int o = -1;
            public int p = -1;
            public String q = "";
            public String r = "";
            public String s = "";
            public String A = "";
        }

        public static final class ColorReferences {
            public final List<ColorReference> color_reference = Collections.EMPTY_LIST;

            public static final class ColorReference {

                @SerializedName("attr_palette_guid")
                public final String paletteGuid = "";

                @SerializedName("attr_sku_guid")
                public final String skuGuid = "";

                @SerializedName("attr_item_guid")
                public final String itemGuid = "";

                @SerializedName("attr_palette_color_index")
                public final String paletteColorIndex = "";

                @SerializedName("attr_pattern_guid")
                public final String patternGuid = "";
            }

            private ColorReferences() {
            }
        }

        public Extras(Builder builder) {
            this.f40951a = builder.f40960a;
            this.f40952b = builder.f40967j;
            this.f40953c = builder.F;
            this.d = builder.G;
            this.g = builder.f40961b;
            this.f40954e = builder.H;
            this.f40955f = builder.I;
            this.f40956h = builder.f40962c;
            this.f40957i = builder.d;
            this.f40958j = builder.f40963e;
            this.f40959k = builder.f40964f;
            this.l = builder.g;
            this.m = builder.f40965h;
            this.n = builder.f40968k;
            this.o = builder.l;
            this.p = builder.m;
            this.q = builder.n;
            this.r = builder.f40966i;
            this.s = builder.o;
            this.t = builder.p;
            this.u = builder.A;
            this.v = builder.q;
            this.w = builder.r;
            this.x = builder.s;
            this.y = builder.t;
            this.z = builder.u;
            this.A = builder.v;
            this.B = builder.w;
            this.C = builder.x;
            this.D = builder.y;
            this.E = builder.z;
            this.F = builder.B;
            this.G = builder.C;
            this.H = builder.D;
            this.I = builder.E;
            this.J = builder.J;
            this.K = builder.K;
            this.L = builder.L;
            this.M = builder.M;
            this.N = builder.N;
            this.O = builder.O;
            this.P = builder.P;
        }

        public static Extras a(String str) {
            JSONObject jSONObject = new JSONObject(str);
            Builder builder = new Builder();
            String strOptString = jSONObject.optString("palette_guid");
            if (strOptString == null) {
                strOptString = "";
            }
            builder.f40960a = strOptString;
            String strOptString2 = jSONObject.optString("sku_guid");
            if (strOptString2 == null) {
                strOptString2 = "";
            }
            builder.f40967j = strOptString2;
            String strOptString3 = jSONObject.optString("item_guid");
            if (strOptString3 == null) {
                strOptString3 = "";
            }
            builder.F = strOptString3;
            String strOptString4 = jSONObject.optString("style_guid");
            if (strOptString4 == null) {
                strOptString4 = "";
            }
            builder.G = strOptString4;
            String strOptString5 = jSONObject.optString("shape_guid");
            builder.P = strOptString5 != null ? strOptString5 : "";
            builder.H = jSONObject.optInt("inner_ratio");
            builder.I = jSONObject.optInt("feather_strength");
            builder.f40961b = TemplateConsts.a(jSONObject.optString("version"), -1.0f);
            builder.f40962c = jSONObject.optInt("global_intensity");
            builder.d = jSONObject.optInt("colored_mask_index");
            builder.f40963e = jSONObject.optString("position");
            builder.f40964f = jSONObject.optString("foundation_intensity_mode");
            builder.g = jSONObject.optInt("pattern_mask_index");
            builder.f40965h = jSONObject.optInt("palette_color_index");
            builder.f40968k = jSONObject.optString("sku_set");
            builder.l = jSONObject.optString("ombre_range");
            builder.m = jSONObject.optString("ombre_line_offset");
            builder.n = jSONObject.optString("coloring_section");
            builder.f40966i = TemplatePaths.a(jSONObject.optString("texture"));
            builder.o = jSONObject.optInt("thickness");
            builder.p = jSONObject.optInt("smoothness");
            builder.A = jSONObject.optString("nail_position");
            builder.q = jSONObject.optString("transparency");
            builder.r = jSONObject.optString("light");
            builder.s = jSONObject.optString("diffuse");
            builder.t = jSONObject.optString("reflection");
            builder.u = jSONObject.optString("contrast");
            builder.v = jSONObject.optString("roughness");
            builder.w = jSONObject.optString("finish_type");
            builder.x = jSONObject.optString("shimmer_opacity");
            builder.y = jSONObject.optString("textured_granularity");
            builder.z = jSONObject.optString("shimmer_granularity");
            builder.B = jSONObject.optString("texture_type");
            builder.C = jSONObject.optString("glow_strength");
            builder.D = jSONObject.optString("shimmer_color");
            builder.E = jSONObject.optString("shimmer_density");
            builder.J = (List) GsonHelper.f39260a.j(jSONObject.optString("color_references"), new AnonymousClass1().f42556b);
            builder.K = jSONObject.optString("object_distance_ratio");
            builder.L = jSONObject.optString("is_rigid_body");
            builder.M = jSONObject.optString("object_distance_ratio_back");
            builder.N = jSONObject.optString("object_distance_ratio_palm");
            builder.O = jSONObject.optString("adaptive_rotate");
            jSONObject.optString("fullness");
            jSONObject.optString("wrinkless");
            return new Extras(builder);
        }

        public final String b() {
            return this.q;
        }

        public final float c() {
            return TemplateConsts.a(this.p, -1000.0f);
        }

        public final float d() {
            return TemplateConsts.a(this.o, -1000.0f);
        }

        public final String e() {
            return this.n;
        }

        public final int f() {
            return this.t;
        }

        public final List g() {
            return this.r;
        }

        public final int h() {
            return this.s;
        }

        public final JSONObject i() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("palette_guid", this.f40951a);
            jSONObject.put("sku_guid", this.f40952b);
            jSONObject.put("item_guid", this.f40953c);
            jSONObject.put("style_guid", this.d);
            jSONObject.put("shape_guid", this.P);
            jSONObject.put("inner_ratio", this.f40954e);
            jSONObject.put("feather_strength", this.f40955f);
            jSONObject.put("version", this.g);
            jSONObject.put("global_intensity", this.f40956h);
            jSONObject.put("colored_mask_index", this.f40957i);
            jSONObject.put("position", this.f40958j);
            jSONObject.put("foundation_intensity_mode", this.f40959k);
            jSONObject.put("pattern_mask_index", this.l);
            jSONObject.put("palette_color_index", this.m);
            jSONObject.put("sku_set", this.n);
            jSONObject.put("ombre_range", this.o);
            jSONObject.put("ombre_line_offset", this.p);
            jSONObject.put("coloring_section", this.q);
            jSONObject.put("texture", TemplatePaths.d(this.r));
            jSONObject.put("thickness", this.s);
            jSONObject.put("smoothness", this.t);
            jSONObject.put("nail_position", this.u);
            jSONObject.put("transparency", this.v);
            jSONObject.put("light", this.w);
            jSONObject.put("diffuse", this.x);
            jSONObject.put("reflection", this.y);
            jSONObject.put("contrast", this.z);
            jSONObject.put("roughness", this.A);
            jSONObject.put("finish_type", this.B);
            jSONObject.put("shimmer_opacity", this.C);
            jSONObject.put("textured_granularity", this.D);
            jSONObject.put("shimmer_granularity", this.E);
            jSONObject.put("texture_type", this.F);
            jSONObject.put("glow_strength", this.G);
            jSONObject.put("shimmer_color", this.H);
            jSONObject.put("shimmer_density", this.I);
            jSONObject.put("color_references", GsonHelper.f39260a.k(this.J));
            jSONObject.put("object_distance_ratio", this.K);
            jSONObject.put("is_rigid_body", this.L);
            jSONObject.put("object_distance_ratio_back", this.M);
            jSONObject.put("object_distance_ratio_palm", this.N);
            jSONObject.put("adaptive_rotate", this.O);
            return jSONObject;
        }
    }

    public static final class Intensities {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f40969a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f40970b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f40971c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f40972e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f40973f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f40974h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f40975i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f40976j;

        public static class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f40977a = -1;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f40978b = -1;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f40979c = -1;
            public int d = -1;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f40980e = -1000;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f40981f = -1000;
            public int g = -1000;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f40982h = -1000;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f40983i = -1000;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f40984j = -1000;

            public final Intensities a() {
                return new Intensities(this.f40977a, this.f40978b, this.f40979c, this.d, this.f40980e, this.f40981f, this.g, this.f40982h, this.f40983i, this.f40984j);
            }
        }

        public Intensities(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
            this.f40969a = i2;
            this.f40970b = i3;
            this.f40971c = i4;
            this.d = i5;
            this.f40972e = i6;
            this.f40973f = i7;
            this.g = i8;
            this.f40974h = i9;
            this.f40975i = i10;
            this.f40976j = i11;
        }

        public final JSONObject a() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("intensity", this.f40969a);
            jSONObject.put("hidden_intensity", this.f40970b);
            jSONObject.put("radius", this.f40971c);
            int i2 = this.d;
            if (i2 != -1) {
                jSONObject.put("browdefinition", i2);
            }
            int i3 = this.f40972e;
            if (i3 != -1000) {
                jSONObject.put("browcurvature", i3);
            }
            int i4 = this.f40973f;
            if (i4 != -1000) {
                jSONObject.put("browthickness", i4);
            }
            int i5 = this.g;
            if (i5 != -1000) {
                jSONObject.put("browpositionx", i5);
            }
            int i6 = this.f40974h;
            if (i6 != -1000) {
                jSONObject.put("browpositiony", i6);
            }
            int i7 = this.f40975i;
            if (i7 != -1000) {
                jSONObject.put("browheadlocation", i7);
            }
            int i8 = this.f40976j;
            if (i8 != -1000) {
                jSONObject.put("browtaillocation", i8);
            }
            return jSONObject;
        }
    }

    public EffectInfo(Builder builder) {
        this.f40935a = builder.f40943a;
        this.f40936b = builder.f40944b;
        this.f40937c = builder.f40945c;
        this.d = builder.d;
        this.f40938e = builder.f40946e;
        this.f40939f = builder.f40947f;
        this.g = builder.g;
        this.f40940h = builder.f40948h;
        this.f40941i = builder.f40949i;
        this.f40942j = builder.f40950j;
    }
}
