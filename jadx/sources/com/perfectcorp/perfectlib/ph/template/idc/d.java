package com.perfectcorp.perfectlib.ph.template.idc;

import android.database.Cursor;
import android.text.TextUtils;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.ColorInfo;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.i;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import defpackage.fc;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f41655a = new d();
    public final List<b> color_is_shimmers;
    public final List<a> colors;
    public final List<e> engine_colors;
    public final List<g> glow_intensities;
    public final List<h> metallic_intensities;
    public final List<com.perfectcorp.perfectlib.ph.template.idc.b> name;
    public final List<j> patterns;
    public final List<k> shapes;
    public final List<l> shimmer_densities;
    public final List<m> shimmer_granularities;
    public final List<n> shimmer_intensities;
    public final List<o> styles;
    public final List<r> supported_patterns;
    public final List<t> textures;
    public final String attr_sku_guid = "";
    public final String attr_guid = "";
    public final String attr_thumbnail = "";
    public final String attr_color_number = "";
    public final String attr_subtype = "";
    public final String attr_color_intensities = "";
    public final String attr_shine_intensities = "";
    public final String attr_hair_dye_mode = "";
    public final String attr_transparency = "";
    public final String attr_light = "";
    public final String attr_diffuse = "";
    public final String attr_reflection = "";
    public final String attr_contrast = "";
    public final String attr_roughness = "";
    public final String attr_finish_type = "";

    public static class a {
        public final List<String> color;
        public final List<String> level_color;

        private a() {
            List<String> list = Collections.EMPTY_LIST;
            this.level_color = list;
            this.color = list;
        }
    }

    public static class b {
        public final List<String> color_is_shimmer = Collections.EMPTY_LIST;

        private b() {
        }
    }

    public static class c {
        public final String attr_palette_color_index = "";
        public final String attr_color_intensity = "";
        public final String attr_shine_intensity = "";
        public final String attr_ombre_range = "";
        public final String attr_ombre_line_offset = "";
        public final String attr_coloring_section = "";
        public final String attr_color_under_eye_intensity = "";
        public final String attr_coverage_level = "";

        private c() {
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.template.idc.d$d, reason: collision with other inner class name */
    public static class C0183d {
        private final List<c> color_reference = Collections.EMPTY_LIST;
    }

    public static class e {
        public final List<String> engine_color = Collections.EMPTY_LIST;

        private e() {
        }
    }

    public static class g {
        public final List<String> glow_intensity = Collections.EMPTY_LIST;

        private g() {
        }
    }

    public static class h {
        public final List<String> metallic_intensity = Collections.EMPTY_LIST;

        private h() {
        }
    }

    public static class j {
        public final List<JsonObject> pattern_guid = Collections.EMPTY_LIST;

        private j() {
        }
    }

    public static class k {
        public final List<String> shape = Collections.EMPTY_LIST;

        private k() {
        }
    }

    public static class l {
        public final List<String> shimmer_density = Collections.EMPTY_LIST;

        private l() {
        }
    }

    public static class m {
        public final List<String> shimmer_granularity = Collections.EMPTY_LIST;

        private m() {
        }
    }

    public static class n {
        public final List<String> shimmer_intensity = Collections.EMPTY_LIST;

        private n() {
        }
    }

    public static class o {
        public final List<p> style_guid = Collections.EMPTY_LIST;

        private o() {
        }
    }

    public static class p {
        public final String attr_inner_ratio = "";
        public final String attr_feather_strength = "";
        public final String inner_text = "";
        public final String attr_pattern1_idx = "-1";
        public final String attr_pattern2_idx = "-1";

        private p() {
        }
    }

    public static class q {
        public final String attr_pattern_guid = "";
        public final String attr_thickness = "";
        public final String attr_smoothness = "";
        public final List<C0183d> color_references = Collections.EMPTY_LIST;

        private q() {
        }
    }

    public static class r {
        public final List<q> pattern = Collections.EMPTY_LIST;

        private r() {
        }
    }

    public static class t {
        public final List<JsonElement> texture = Collections.EMPTY_LIST;

        private t() {
        }
    }

    private d() {
        List list = Collections.EMPTY_LIST;
        this.name = list;
        this.patterns = list;
        this.colors = list;
        this.engine_colors = list;
        this.shimmer_intensities = list;
        this.color_is_shimmers = list;
        this.glow_intensities = list;
        this.shimmer_densities = list;
        this.shimmer_granularities = list;
        this.metallic_intensities = list;
        this.styles = list;
        this.supported_patterns = list;
        this.textures = list;
        this.shapes = list;
    }

    public static void b(TemplateUtils.b bVar, String str, String str2, YMKPrimitiveData.SourceType sourceType) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        bVar.t.put(str, new TemplateUtils.a(str, TemplateUtils.a.EnumC0180a.f41592a, TemplateConsts.d(str2), sourceType));
    }

    public static boolean c(int i2, List list) {
        if (!MoreCollections.a(list) && i2 < ((b) list.get(0)).color_is_shimmer.size()) {
            String str = ((b) list.get(0)).color_is_shimmer.get(i2);
            float f2 = TemplateUtils.f41580a;
            if ("1".equalsIgnoreCase(str.trim())) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(String str, YMKPrimitiveData.SourceType sourceType) {
        Cursor cursorQuery;
        String string;
        Threads.b();
        Threads.b();
        if (!TextUtils.isEmpty(str) && com.perfectcorp.perfectlib.ph.database.ymk.palette.a.d(YMKDatabase.b(), str, false)) {
            try {
                cursorQuery = YMKDatabase.b().query("PaletteInfo", new String[]{"Source"}, "GUID=?", new String[]{str}, null, null, null, null);
                try {
                    if (DBUtility.f(cursorQuery)) {
                        string = cursorQuery.getString(cursorQuery.getColumnIndex("Source"));
                        IO.b(cursorQuery);
                    } else {
                        IO.b(cursorQuery);
                        string = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        Log.e("PaletteInfoDao", th.getMessage(), th);
                    } catch (Throwable th2) {
                        IO.b(cursorQuery);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cursorQuery = null;
            }
            if ((TextUtils.isEmpty(string) ? null : YMKPrimitiveData.SourceType.valueOf(string)) == YMKPrimitiveData.SourceType.DEFAULT || sourceType != YMKPrimitiveData.SourceType.SKU) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:62:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:64:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:65:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:69:0x01da  */
    /* JADX WARN: Code duplicated, block: B:71:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:72:0x0203  */
    /* JADX WARN: Code duplicated, block: B:76:0x020e  */
    /* JADX WARN: Code duplicated, block: B:78:0x0221  */
    /* JADX WARN: Code duplicated, block: B:80:0x0239  */
    /* JADX WARN: Code duplicated, block: B:84:0x0241  */
    /* JADX WARN: Code duplicated, block: B:96:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:99:0x02d9  */
    public final Optional a(TemplateUtils.b bVar, String str, YMKPrimitiveData.SourceType sourceType, i iVar) {
        String str2;
        String str3;
        char c2;
        int i2;
        boolean z;
        char c3;
        String str4;
        int i3;
        int iB;
        int i4;
        int iB2;
        int iA;
        List<t> list;
        String strN;
        int i5;
        int i6;
        String str5;
        int iA2;
        Threads.b();
        TemplateUtils.b bVar2 = bVar == null ? new TemplateUtils.b() : bVar;
        ArrayList arrayList = bVar2.g;
        if (!TextUtils.isEmpty(this.attr_sku_guid)) {
            bVar2.v.add(this.attr_sku_guid);
        }
        if (TextUtils.isEmpty(this.attr_guid)) {
            Log.d("IDC-Palette", "[toProcessData] palette guid is empty");
            return com.perfectcorp.perfectlib.ph.template.b.a(bVar2);
        }
        if (d(this.attr_guid, sourceType)) {
            Log.g(3, "IDC-Palette", "[toProcessData] skip add palette guid=" + this.attr_guid);
            return com.perfectcorp.perfectlib.ph.template.b.a(bVar2);
        }
        String strG = TemplateUtils.g();
        ArrayList arrayList2 = !MoreCollections.a(this.engine_colors) ? new ArrayList(this.engine_colors.get(0).engine_color) : null;
        String str6 = "inner_text";
        char c4 = 5;
        String string = "";
        if (MoreCollections.a(this.colors)) {
            str2 = strG;
            str3 = "inner_text";
            c2 = 5;
            i2 = 0;
        } else {
            int iMax = Math.max(this.colors.get(0).color.size(), this.colors.get(0).level_color.size());
            String str7 = this.attr_color_intensities;
            String[] strArrSplit = TextUtils.isEmpty(str7) ? new String[0] : str7.split(",");
            String str8 = this.attr_shine_intensities;
            String[] strArrSplit2 = TextUtils.isEmpty(str8) ? new String[0] : str8.split(",");
            if (!MoreCollections.a(this.color_is_shimmers) && this.color_is_shimmers.get(0).color_is_shimmer.size() != iMax) {
                StringBuilder sbQ = fc.q(iMax, "parse() warning. colorCount(", ") != isShimmerCount(");
                sbQ.append(this.color_is_shimmers.get(0).color_is_shimmer.size());
                sbQ.append(") (paletteGuid=");
                sbQ.append(this.attr_guid);
                sbQ.append(")");
                Log.g(5, "IDC-Palette", sbQ.toString());
            }
            int i7 = 0;
            for (int i8 = 0; i7 < this.colors.get(i8).color.size(); i8 = 0) {
                boolean zC = c(i7, this.color_is_shimmers);
                int iB3 = (MoreCollections.a(this.shimmer_intensities) || i7 >= this.shimmer_intensities.get(i8).shimmer_intensity.size()) ? -1 : TemplateConsts.b(-1, this.shimmer_intensities.get(i8).shimmer_intensity.get(i7));
                int iB4 = i7 < strArrSplit.length ? TemplateConsts.b(-1, strArrSplit[i7]) : -1;
                int iB5 = strArrSplit2.length > i7 ? TemplateConsts.b(-1, strArrSplit2[i7]) : -1;
                if (MoreCollections.a(this.glow_intensities)) {
                    str4 = strG;
                } else {
                    str4 = strG;
                    int iB6 = i7 < this.glow_intensities.get(0).glow_intensity.size() ? TemplateConsts.b(-1, this.glow_intensities.get(0).glow_intensity.get(i7)) : -1;
                    if (MoreCollections.a(this.shimmer_densities)) {
                        i3 = iMax;
                    } else {
                        i3 = iMax;
                        iB = i7 < this.shimmer_densities.get(0).shimmer_density.size() ? TemplateConsts.b(-1, this.shimmer_densities.get(0).shimmer_density.get(i7)) : -1;
                        if (MoreCollections.a(this.shimmer_granularities)) {
                            i4 = iB;
                        } else {
                            i4 = iB;
                            iB2 = i7 < this.shimmer_granularities.get(0).shimmer_granularity.size() ? TemplateConsts.b(-1, this.shimmer_granularities.get(0).shimmer_granularity.get(i7)) : -1;
                            if (MoreCollections.a(this.metallic_intensities)) {
                                iA = iB2;
                            } else {
                                iA = iB2;
                                int iB7 = i7 < this.metallic_intensities.get(0).metallic_intensity.size() ? TemplateConsts.b(-1, this.metallic_intensities.get(0).metallic_intensity.get(i7)) : -1;
                                list = this.textures;
                                if (list == null && !list.isEmpty()) {
                                    List<JsonElement> list2 = this.textures.get(0).texture;
                                    if (i7 < list2.size()) {
                                        JsonElement jsonElement = list2.get(i7);
                                        jsonElement.getClass();
                                        if (jsonElement instanceof JsonObject) {
                                            s sVar = new s(jsonElement.m());
                                            com.perfectcorp.perfectlib.ph.database.ymk.palette.f.a aVarA = sVar.a();
                                            JsonObject jsonObject = aVarA.f41249a;
                                            int iA3 = GsonHelper.a(jsonObject, "shimmer_intensity", 0);
                                            int iA4 = GsonHelper.a(jsonObject, "metallic_intensity", 0);
                                            int iA5 = GsonHelper.a(jsonObject, "glow_strength", 0);
                                            iA2 = GsonHelper.a(jsonObject, "shimmer_density", 0);
                                            int iA6 = aVarA.a();
                                            iA = GsonHelper.a(jsonObject, "shimmer_granularity", 0);
                                            iB7 = iA4;
                                            i6 = iA6;
                                            strN = GsonHelper.b(sVar.f41661a, str6);
                                            iB3 = iA3;
                                            zC = true;
                                            iB6 = iA5;
                                        } else {
                                            strN = jsonElement instanceof JsonPrimitive ? jsonElement.n() : "";
                                            i5 = i4;
                                            zC = false;
                                            iB3 = 0;
                                            i6 = -1;
                                            iB7 = 0;
                                        }
                                    }
                                    if (arrayList2 != null || arrayList2.size() <= i7) {
                                        i5 = iA2;
                                        i5 = iA2;
                                        str5 = null;
                                    } else {
                                        i5 = iA2;
                                        str5 = (String) arrayList2.get(i7);
                                    }
                                    String string2 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                                    int i9 = i7;
                                    String str9 = str4;
                                    arrayList.add(new ColorInfo(str9, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string2, "", ""));
                                    i7 = i9 + 1;
                                    strG = str9;
                                    strArrSplit = strArrSplit;
                                    str6 = str6;
                                    c4 = 5;
                                    strArrSplit2 = strArrSplit2;
                                    iMax = i3;
                                }
                                strN = "";
                                i5 = i4;
                                i6 = -1;
                                if (arrayList2 != null) {
                                    i5 = iA2;
                                    i5 = iA2;
                                    str5 = null;
                                } else {
                                    i5 = iA2;
                                    i5 = iA2;
                                    str5 = null;
                                }
                                String string3 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                                int i10 = i7;
                                String str10 = str4;
                                arrayList.add(new ColorInfo(str10, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string3, "", ""));
                                i7 = i10 + 1;
                                strG = str10;
                                strArrSplit = strArrSplit;
                                str6 = str6;
                                c4 = 5;
                                strArrSplit2 = strArrSplit2;
                                iMax = i3;
                            }
                            list = this.textures;
                            if (list == null) {
                                strN = "";
                                i5 = i4;
                                i6 = -1;
                            } else {
                                strN = "";
                                i5 = i4;
                                i6 = -1;
                            }
                            if (arrayList2 != null) {
                                i5 = iA2;
                                i5 = iA2;
                                str5 = null;
                            } else {
                                i5 = iA2;
                                i5 = iA2;
                                str5 = null;
                            }
                            String string4 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                            int i11 = i7;
                            String str11 = str4;
                            arrayList.add(new ColorInfo(str11, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string4, "", ""));
                            i7 = i11 + 1;
                            strG = str11;
                            strArrSplit = strArrSplit;
                            str6 = str6;
                            c4 = 5;
                            strArrSplit2 = strArrSplit2;
                            iMax = i3;
                        }
                        if (MoreCollections.a(this.metallic_intensities)) {
                            iA = iB2;
                            if (i7 < this.metallic_intensities.get(0).metallic_intensity.size()) {
                            }
                            list = this.textures;
                            if (list == null) {
                                strN = "";
                                i5 = i4;
                                i6 = -1;
                            } else {
                                strN = "";
                                i5 = i4;
                                i6 = -1;
                            }
                            if (arrayList2 != null) {
                                i5 = iA2;
                                i5 = iA2;
                                str5 = null;
                            } else {
                                i5 = iA2;
                                i5 = iA2;
                                str5 = null;
                            }
                            String string5 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                            int i12 = i7;
                            String str12 = str4;
                            arrayList.add(new ColorInfo(str12, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string5, "", ""));
                            i7 = i12 + 1;
                            strG = str12;
                            strArrSplit = strArrSplit;
                            str6 = str6;
                            c4 = 5;
                            strArrSplit2 = strArrSplit2;
                            iMax = i3;
                        } else {
                            iA = iB2;
                        }
                        list = this.textures;
                        if (list == null) {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        } else {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        }
                        if (arrayList2 != null) {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        } else {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        }
                        String string6 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                        int i13 = i7;
                        String str13 = str4;
                        arrayList.add(new ColorInfo(str13, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string6, "", ""));
                        i7 = i13 + 1;
                        strG = str13;
                        strArrSplit = strArrSplit;
                        str6 = str6;
                        c4 = 5;
                        strArrSplit2 = strArrSplit2;
                        iMax = i3;
                    }
                    if (MoreCollections.a(this.shimmer_granularities)) {
                        i4 = iB;
                        if (i7 < this.shimmer_granularities.get(0).shimmer_granularity.size()) {
                        }
                        if (MoreCollections.a(this.metallic_intensities)) {
                            iA = iB2;
                            if (i7 < this.metallic_intensities.get(0).metallic_intensity.size()) {
                            }
                            list = this.textures;
                            if (list == null) {
                                strN = "";
                                i5 = i4;
                                i6 = -1;
                            } else {
                                strN = "";
                                i5 = i4;
                                i6 = -1;
                            }
                            if (arrayList2 != null) {
                                i5 = iA2;
                                i5 = iA2;
                                str5 = null;
                            } else {
                                i5 = iA2;
                                i5 = iA2;
                                str5 = null;
                            }
                            String string7 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                            int i14 = i7;
                            String str14 = str4;
                            arrayList.add(new ColorInfo(str14, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string7, "", ""));
                            i7 = i14 + 1;
                            strG = str14;
                            strArrSplit = strArrSplit;
                            str6 = str6;
                            c4 = 5;
                            strArrSplit2 = strArrSplit2;
                            iMax = i3;
                        } else {
                            iA = iB2;
                        }
                        list = this.textures;
                        if (list == null) {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        } else {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        }
                        if (arrayList2 != null) {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        } else {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        }
                        String string8 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                        int i15 = i7;
                        String str15 = str4;
                        arrayList.add(new ColorInfo(str15, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string8, "", ""));
                        i7 = i15 + 1;
                        strG = str15;
                        strArrSplit = strArrSplit;
                        str6 = str6;
                        c4 = 5;
                        strArrSplit2 = strArrSplit2;
                        iMax = i3;
                    } else {
                        i4 = iB;
                    }
                    if (MoreCollections.a(this.metallic_intensities)) {
                        iA = iB2;
                        if (i7 < this.metallic_intensities.get(0).metallic_intensity.size()) {
                        }
                        list = this.textures;
                        if (list == null) {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        } else {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        }
                        if (arrayList2 != null) {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        } else {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        }
                        String string9 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                        int i16 = i7;
                        String str16 = str4;
                        arrayList.add(new ColorInfo(str16, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string9, "", ""));
                        i7 = i16 + 1;
                        strG = str16;
                        strArrSplit = strArrSplit;
                        str6 = str6;
                        c4 = 5;
                        strArrSplit2 = strArrSplit2;
                        iMax = i3;
                    } else {
                        iA = iB2;
                    }
                    list = this.textures;
                    if (list == null) {
                        strN = "";
                        i5 = i4;
                        i6 = -1;
                    } else {
                        strN = "";
                        i5 = i4;
                        i6 = -1;
                    }
                    if (arrayList2 != null) {
                        i5 = iA2;
                        i5 = iA2;
                        str5 = null;
                    } else {
                        i5 = iA2;
                        i5 = iA2;
                        str5 = null;
                    }
                    String string10 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                    int i17 = i7;
                    String str17 = str4;
                    arrayList.add(new ColorInfo(str17, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string10, "", ""));
                    i7 = i17 + 1;
                    strG = str17;
                    strArrSplit = strArrSplit;
                    str6 = str6;
                    c4 = 5;
                    strArrSplit2 = strArrSplit2;
                    iMax = i3;
                }
                if (MoreCollections.a(this.shimmer_densities)) {
                    i3 = iMax;
                    if (i7 < this.shimmer_densities.get(0).shimmer_density.size()) {
                    }
                    if (MoreCollections.a(this.shimmer_granularities)) {
                        i4 = iB;
                        if (i7 < this.shimmer_granularities.get(0).shimmer_granularity.size()) {
                        }
                        if (MoreCollections.a(this.metallic_intensities)) {
                            iA = iB2;
                            if (i7 < this.metallic_intensities.get(0).metallic_intensity.size()) {
                            }
                            list = this.textures;
                            if (list == null) {
                                strN = "";
                                i5 = i4;
                                i6 = -1;
                            } else {
                                strN = "";
                                i5 = i4;
                                i6 = -1;
                            }
                            if (arrayList2 != null) {
                                i5 = iA2;
                                i5 = iA2;
                                str5 = null;
                            } else {
                                i5 = iA2;
                                i5 = iA2;
                                str5 = null;
                            }
                            String string11 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                            int i18 = i7;
                            String str18 = str4;
                            arrayList.add(new ColorInfo(str18, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string11, "", ""));
                            i7 = i18 + 1;
                            strG = str18;
                            strArrSplit = strArrSplit;
                            str6 = str6;
                            c4 = 5;
                            strArrSplit2 = strArrSplit2;
                            iMax = i3;
                        } else {
                            iA = iB2;
                        }
                        list = this.textures;
                        if (list == null) {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        } else {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        }
                        if (arrayList2 != null) {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        } else {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        }
                        String string12 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                        int i19 = i7;
                        String str19 = str4;
                        arrayList.add(new ColorInfo(str19, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string12, "", ""));
                        i7 = i19 + 1;
                        strG = str19;
                        strArrSplit = strArrSplit;
                        str6 = str6;
                        c4 = 5;
                        strArrSplit2 = strArrSplit2;
                        iMax = i3;
                    } else {
                        i4 = iB;
                    }
                    if (MoreCollections.a(this.metallic_intensities)) {
                        iA = iB2;
                        if (i7 < this.metallic_intensities.get(0).metallic_intensity.size()) {
                        }
                        list = this.textures;
                        if (list == null) {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        } else {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        }
                        if (arrayList2 != null) {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        } else {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        }
                        String string13 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                        int i110 = i7;
                        String str110 = str4;
                        arrayList.add(new ColorInfo(str110, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string13, "", ""));
                        i7 = i110 + 1;
                        strG = str110;
                        strArrSplit = strArrSplit;
                        str6 = str6;
                        c4 = 5;
                        strArrSplit2 = strArrSplit2;
                        iMax = i3;
                    } else {
                        iA = iB2;
                    }
                    list = this.textures;
                    if (list == null) {
                        strN = "";
                        i5 = i4;
                        i6 = -1;
                    } else {
                        strN = "";
                        i5 = i4;
                        i6 = -1;
                    }
                    if (arrayList2 != null) {
                        i5 = iA2;
                        i5 = iA2;
                        str5 = null;
                    } else {
                        i5 = iA2;
                        i5 = iA2;
                        str5 = null;
                    }
                    String string14 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                    int i111 = i7;
                    String str111 = str4;
                    arrayList.add(new ColorInfo(str111, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string14, "", ""));
                    i7 = i111 + 1;
                    strG = str111;
                    strArrSplit = strArrSplit;
                    str6 = str6;
                    c4 = 5;
                    strArrSplit2 = strArrSplit2;
                    iMax = i3;
                } else {
                    i3 = iMax;
                }
                if (MoreCollections.a(this.shimmer_granularities)) {
                    i4 = iB;
                    if (i7 < this.shimmer_granularities.get(0).shimmer_granularity.size()) {
                    }
                    if (MoreCollections.a(this.metallic_intensities)) {
                        iA = iB2;
                        if (i7 < this.metallic_intensities.get(0).metallic_intensity.size()) {
                        }
                        list = this.textures;
                        if (list == null) {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        } else {
                            strN = "";
                            i5 = i4;
                            i6 = -1;
                        }
                        if (arrayList2 != null) {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        } else {
                            i5 = iA2;
                            i5 = iA2;
                            str5 = null;
                        }
                        String string15 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                        int i112 = i7;
                        String str112 = str4;
                        arrayList.add(new ColorInfo(str112, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string15, "", ""));
                        i7 = i112 + 1;
                        strG = str112;
                        strArrSplit = strArrSplit;
                        str6 = str6;
                        c4 = 5;
                        strArrSplit2 = strArrSplit2;
                        iMax = i3;
                    } else {
                        iA = iB2;
                    }
                    list = this.textures;
                    if (list == null) {
                        strN = "";
                        i5 = i4;
                        i6 = -1;
                    } else {
                        strN = "";
                        i5 = i4;
                        i6 = -1;
                    }
                    if (arrayList2 != null) {
                        i5 = iA2;
                        i5 = iA2;
                        str5 = null;
                    } else {
                        i5 = iA2;
                        i5 = iA2;
                        str5 = null;
                    }
                    String string16 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                    int i113 = i7;
                    String str113 = str4;
                    arrayList.add(new ColorInfo(str113, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string16, "", ""));
                    i7 = i113 + 1;
                    strG = str113;
                    strArrSplit = strArrSplit;
                    str6 = str6;
                    c4 = 5;
                    strArrSplit2 = strArrSplit2;
                    iMax = i3;
                } else {
                    i4 = iB;
                }
                if (MoreCollections.a(this.metallic_intensities)) {
                    iA = iB2;
                    if (i7 < this.metallic_intensities.get(0).metallic_intensity.size()) {
                    }
                    list = this.textures;
                    if (list == null) {
                        strN = "";
                        i5 = i4;
                        i6 = -1;
                    } else {
                        strN = "";
                        i5 = i4;
                        i6 = -1;
                    }
                    if (arrayList2 != null) {
                        i5 = iA2;
                        i5 = iA2;
                        str5 = null;
                    } else {
                        i5 = iA2;
                        i5 = iA2;
                        str5 = null;
                    }
                    String string17 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                    int i114 = i7;
                    String str114 = str4;
                    arrayList.add(new ColorInfo(str114, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string17, "", ""));
                    i7 = i114 + 1;
                    strG = str114;
                    strArrSplit = strArrSplit;
                    str6 = str6;
                    c4 = 5;
                    strArrSplit2 = strArrSplit2;
                    iMax = i3;
                } else {
                    iA = iB2;
                }
                list = this.textures;
                if (list == null) {
                    strN = "";
                    i5 = i4;
                    i6 = -1;
                } else {
                    strN = "";
                    i5 = i4;
                    i6 = -1;
                }
                if (arrayList2 != null) {
                    i5 = iA2;
                    i5 = iA2;
                    str5 = null;
                } else {
                    i5 = iA2;
                    i5 = iA2;
                    str5 = null;
                }
                String string18 = YMKPrimitiveData.MakeupColor.ExtraData.c("", "", String.valueOf(zC), String.valueOf(iB3), YMKPrimitiveData.MakeupColor.ExtraData.a(str5), String.valueOf(iB5), this.attr_hair_dye_mode, String.valueOf(iB6), "", "", String.valueOf(i5), String.valueOf(iA), String.valueOf(iB7), String.valueOf(i6), "", "", "", strN).toString();
                int i115 = i7;
                String str115 = str4;
                arrayList.add(new ColorInfo(str115, str, TemplateUtils.u(this.colors.get(0).color.get(i7).trim()), String.valueOf(iB4), sourceType.name(), string18, "", ""));
                i7 = i115 + 1;
                strG = str115;
                strArrSplit = strArrSplit;
                str6 = str6;
                c4 = 5;
                strArrSplit2 = strArrSplit2;
                iMax = i3;
            }
            str2 = strG;
            int i20 = iMax;
            str3 = str6;
            c2 = c4;
            for (int i21 = 0; i21 < this.colors.get(0).level_color.size(); i21++) {
                String strTrim = this.colors.get(0).level_color.get(i21).trim();
                arrayList.add(strTrim.length() != 12 ? new ColorInfo(str2, str, "000000", "-1", sourceType.name(), "{}", "", "") : new ColorInfo(str2, str, strTrim.substring(6).toUpperCase(Locale.getDefault()), "-1", sourceType.name(), YMKPrimitiveData.MakeupColor.ExtraData.b(Integer.parseInt(strTrim.substring(0, 2), 16), Integer.parseInt(strTrim.substring(2, 4), 16), c(i21, this.color_is_shimmers), 0, -1, -1, -1, -1, -1, -1, "").toString(), "", ""));
            }
            i2 = i20;
        }
        if (!MoreCollections.a(this.styles)) {
            for (p pVar : this.styles.get(0).style_guid) {
                bVar2.q.add(new com.perfectcorp.perfectlib.ph.database.ymk.palette.d(this.attr_guid, pVar.inner_text.trim(), (int) Float.parseFloat(pVar.attr_inner_ratio), (int) Float.parseFloat(pVar.attr_feather_strength), (int) Float.parseFloat("100")));
            }
        }
        ArrayList arrayList3 = new ArrayList();
        if (!MoreCollections.a(this.shapes)) {
            Iterator<k> it = this.shapes.iterator();
            while (it.hasNext()) {
                for (String str20 : it.next().shape) {
                    if (!TextUtils.isEmpty(str20)) {
                        com.perfectcorp.perfectlib.ph.database.ymk.palette.b bVar3 = new com.perfectcorp.perfectlib.ph.database.ymk.palette.b(this.attr_guid, str20.trim());
                        arrayList3.add(bVar3);
                        bVar2.r.add(bVar3);
                    }
                }
            }
        }
        ArrayList<com.perfectcorp.perfectlib.ph.database.ymk.palette.f> arrayList4 = new ArrayList();
        if (!MoreCollections.a(this.textures)) {
            for (JsonElement jsonElement2 : this.textures.get(0).texture) {
                jsonElement2.getClass();
                s sVar2 = jsonElement2 instanceof JsonObject ? new s(jsonElement2.m()) : new s(jsonElement2.n());
                com.perfectcorp.perfectlib.ph.database.ymk.palette.f fVar = new com.perfectcorp.perfectlib.ph.database.ymk.palette.f(this.attr_guid, GsonHelper.b(sVar2.f41661a, str3), sVar2.a());
                arrayList4.add(fVar);
                bVar2.s.add(fVar);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        bVar2.f41594b.put(this.attr_guid, arrayList5);
        if (!MoreCollections.a(this.patterns)) {
            for (JsonObject jsonObject2 : this.patterns.get(0).pattern_guid) {
                String strB = GsonHelper.b(jsonObject2, str3);
                int i22 = i2;
                String strB2 = GsonHelper.b(jsonObject2, "attr_color_intensities");
                String strB3 = GsonHelper.b(jsonObject2, "attr_hidden_intensity");
                String str21 = this.attr_guid;
                String strName = sourceType.name();
                JsonObject jsonObject3 = new JsonObject();
                for (Map.Entry entry : jsonObject2.f42454b.entrySet()) {
                    String strSubstring = (String) entry.getKey();
                    if (str3.equals(strSubstring) || "attr_color_intensities".equals(strSubstring) || "attr_hidden_intensity".equals(strSubstring)) {
                        c2 = 5;
                    } else {
                        ArrayList arrayList6 = arrayList3;
                        if (strSubstring.startsWith("attr_")) {
                            c3 = 5;
                            strSubstring = strSubstring.substring(5);
                        } else {
                            c3 = 5;
                        }
                        jsonObject3.o(strSubstring, ((JsonElement) entry.getValue()).h());
                        c2 = c3;
                        arrayList3 = arrayList6;
                    }
                }
                arrayList5.add(new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(strB, str21, strName, i22, strB2, "", strB3, new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b(jsonObject3, false)));
                arrayList3 = arrayList3;
                i2 = i22;
            }
        }
        ArrayList<com.perfectcorp.perfectlib.ph.database.ymk.palette.b> arrayList7 = arrayList3;
        int i23 = i2;
        if (!MoreCollections.a(this.supported_patterns)) {
            Iterator<q> it2 = this.supported_patterns.get(0).pattern.iterator();
            while (it2.hasNext()) {
                q next = it2.next();
                if (!TextUtils.isEmpty(next.attr_pattern_guid)) {
                    if (MoreCollections.a(next.color_references)) {
                        int i24 = i23;
                        i23 = i24;
                        arrayList5.add(new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(next.attr_pattern_guid, this.attr_guid, "", sourceType.name(), i24, "", "", "", new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b(new JsonObject(), false)));
                    } else {
                        String string19 = "";
                        String string20 = string19;
                        String string21 = string20;
                        String string22 = string21;
                        String string23 = string22;
                        String string24 = string23;
                        String string25 = string24;
                        String string26 = string25;
                        for (c cVar : next.color_references.get(0).color_reference) {
                            Iterator<q> it3 = it2;
                            StringBuilder sbT = n00.t(string25);
                            sbT.append(TextUtils.isEmpty(string25) ? "" : ", ");
                            sbT.append(cVar.attr_palette_color_index);
                            string25 = sbT.toString();
                            StringBuilder sbT2 = n00.t(string26);
                            sbT2.append(TextUtils.isEmpty(string26) ? "" : ", ");
                            sbT2.append(cVar.attr_color_intensity);
                            string26 = sbT2.toString();
                            StringBuilder sbT3 = n00.t(string19);
                            sbT3.append(TextUtils.isEmpty(string19) ? "" : ", ");
                            sbT3.append(cVar.attr_shine_intensity);
                            string19 = sbT3.toString();
                            StringBuilder sbT4 = n00.t(string20);
                            sbT4.append(TextUtils.isEmpty(string20) ? "" : ", ");
                            sbT4.append(cVar.attr_ombre_range);
                            string20 = sbT4.toString();
                            StringBuilder sbT5 = n00.t(string21);
                            sbT5.append(TextUtils.isEmpty(string21) ? "" : ", ");
                            sbT5.append(cVar.attr_ombre_line_offset);
                            string21 = sbT5.toString();
                            StringBuilder sbT6 = n00.t(string22);
                            sbT6.append(TextUtils.isEmpty(string22) ? "" : ", ");
                            sbT6.append(cVar.attr_coloring_section);
                            string22 = sbT6.toString();
                            StringBuilder sbT7 = n00.t(string23);
                            sbT7.append(TextUtils.isEmpty(string23) ? "" : ", ");
                            sbT7.append(cVar.attr_color_under_eye_intensity);
                            string23 = sbT7.toString();
                            StringBuilder sbT8 = n00.t(string24);
                            sbT8.append(TextUtils.isEmpty(string24) ? "" : ", ");
                            sbT8.append(cVar.attr_coverage_level);
                            string24 = sbT8.toString();
                            it2 = it3;
                            str2 = str2;
                        }
                        Iterator<q> it4 = it2;
                        JsonObject jsonObject4 = new JsonObject();
                        jsonObject4.p("thickness", next.attr_thickness);
                        jsonObject4.p("smoothness", next.attr_smoothness);
                        jsonObject4.p("shine_intensities", string19);
                        jsonObject4.p("ombre_range", string20);
                        jsonObject4.p("ombre_line_offset", string21);
                        jsonObject4.p("coloring_section", string22);
                        jsonObject4.p("color_under_eye_intensity", string23);
                        jsonObject4.p("coverage_level", string24);
                        int i25 = i23;
                        i23 = i25;
                        arrayList5.add(new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(next.attr_pattern_guid, this.attr_guid, string25, sourceType.name(), i25, string26, "", "", new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b(jsonObject4, false)));
                        it2 = it4;
                        str2 = str2;
                    }
                }
            }
        }
        String str22 = str2;
        String strB4 = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(this.attr_guid, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) iVar.f41492a.get(this.attr_thumbnail));
        f.a aVar = new f.a();
        aVar.f41656a = this.attr_transparency;
        aVar.f41657b = this.attr_light;
        aVar.f41658c = this.attr_diffuse;
        aVar.f41659e = this.attr_contrast;
        aVar.g = this.attr_finish_type;
        aVar.d = this.attr_reflection;
        aVar.f41660f = this.attr_roughness;
        f fVar2 = new f(aVar);
        String str23 = this.attr_guid;
        if (MoreCollections.a(this.name)) {
            z = false;
        } else {
            z = false;
            string = com.perfectcorp.perfectlib.ph.template.idc.b.a(this.name.get(0)).toString();
        }
        bVar2.f41596e.add(new com.perfectcorp.perfectlib.ph.template.d(str23, str22, i23, string, strB4, sourceType.name(), TemplateUtils.f41580a, sourceType == YMKPrimitiveData.SourceType.DOWNLOAD ? true : z, this.attr_sku_guid, str, this.attr_color_number, this.attr_subtype, GsonHelper.f39261b.k(fVar2)));
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            b(bVar2, ((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) it5.next()).f41251a, str, sourceType);
        }
        for (com.perfectcorp.perfectlib.ph.database.ymk.palette.f fVar3 : arrayList4) {
            BeautyMode beautyModeD = TemplateConsts.d(str);
            if (beautyModeD != BeautyMode.BLUSH && beautyModeD != BeautyMode.EYE_SHADOW && beautyModeD != BeautyMode.EYE_BROW && beautyModeD != BeautyMode.EYE_LINES) {
                b(bVar2, fVar3.f41247b, str, sourceType);
            }
        }
        for (com.perfectcorp.perfectlib.ph.database.ymk.palette.b bVar4 : arrayList7) {
            if (TemplateConsts.d(str) == BeautyMode.LIP_STICK && !TextUtils.equals(bVar4.f41241b, "shape_lipstick_original")) {
                b(bVar2, bVar4.f41241b, str, sourceType);
            }
        }
        return com.perfectcorp.perfectlib.ph.template.b.a(bVar2);
    }

    public static class s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final JsonObject f41661a;

        public s(String str) {
            JsonObject jsonObject = new JsonObject();
            this.f41661a = jsonObject;
            jsonObject.p("inner_text", str);
        }

        public final com.perfectcorp.perfectlib.ph.database.ymk.palette.f.a a() {
            JsonObject jsonObject = new JsonObject();
            for (Map.Entry entry : this.f41661a.f42454b.entrySet()) {
                String strSubstring = (String) entry.getKey();
                if (!"inner_text".equals(strSubstring)) {
                    if (strSubstring.startsWith("attr_")) {
                        strSubstring = strSubstring.substring(5);
                    }
                    jsonObject.o(strSubstring, ((JsonElement) entry.getValue()).h());
                }
            }
            return new com.perfectcorp.perfectlib.ph.database.ymk.palette.f.a(jsonObject, false);
        }

        public s(JsonObject jsonObject) {
            this.f41661a = jsonObject;
        }
    }

    public static class f {
        public final String contrast;
        public final String diffuse;
        public final String finishType;
        public final String light;
        public final String reflection;
        public final String roughness;
        public final String transparency;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f41656a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f41657b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f41658c;
            public String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f41659e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f41660f;
            public String g;
        }

        public f(a aVar) {
            this.transparency = aVar.f41656a;
            this.light = aVar.f41657b;
            this.diffuse = aVar.f41658c;
            this.reflection = aVar.d;
            this.contrast = aVar.f41659e;
            this.roughness = aVar.f41660f;
            this.finishType = aVar.g;
        }

        private f() {
            this.transparency = null;
            this.light = null;
            this.diffuse = null;
            this.reflection = null;
            this.contrast = null;
            this.roughness = null;
            this.finishType = null;
        }
    }
}
