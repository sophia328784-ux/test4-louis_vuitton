package com.perfectcorp.perfectlib.ph.template.idc;

import android.text.TextUtils;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.ColorInfo;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.template.m;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import defpackage.jy;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f41662a = new e();
    public final String attr_color;
    public final String attr_contrast;
    public final String attr_face_art_layer2;
    public final String attr_finish_type;
    public final String attr_fullness;
    public final String attr_hidden_in_room;
    public final String attr_light;
    public final String attr_lower_enlarge;
    public final String attr_ombre_line_offset;
    public final String attr_ombre_range;
    public final String attr_reflection;
    public final String attr_roughness;
    public final String attr_shimmer_granularity;
    public final String attr_shimmer_opacity;
    public final String attr_texture_mode;
    public final String attr_textured_granularity;
    public final String attr_tip_ratio_fore;
    public final String attr_tip_ratio_little;
    public final String attr_tip_ratio_middle;
    public final String attr_tip_ratio_ring;
    public final String attr_tip_ratio_thumb;
    public final String attr_transparency;
    public final String attr_type;
    public final String attr_upper_enlarge;
    public final String attr_width_enlarge;
    public final String attr_wig_coloring_mode;
    public final String attr_wig_model_mode;
    public final String attr_wrinkless;
    public final List<a> colored_mask;
    public final List<b> eyebrow_mode;
    public final List<c> eyebrow_mode_3d;
    public final List<d> lipstick_profile;
    public final List<com.perfectcorp.perfectlib.ph.template.idc.b> name;
    public final List<h> palettes;
    public final List<i> pattern_mask;
    public final List<j> pattern_mask_cube_eyewear;
    public final List<k> pattern_mask_real_3D;
    public final List<l> tattoo_mask;
    public final String attr_guid = "";
    public final String attr_patternGuid = "";
    public final String attr_itemZIP = "";
    public final String attr_thumbnail = "";
    public final String attr_sku_guid = "";
    public final String attr_supported_mode = "";
    public final String attr_texture_supported_mode = "";

    public static class a {
        public final List<C0184e> mask = Collections.EMPTY_LIST;

        private a() {
        }
    }

    public static class b {
        public final String attr_type = "";

        private b() {
        }
    }

    public static class c {
        public final String attr_type = "";

        private c() {
        }
    }

    public static class d {
        public final String attr_type = "";

        private d() {
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.template.idc.e$e, reason: collision with other inner class name */
    public static class C0184e {
        public final String attr_src = "";
        public final String attr_imagesrc = "";
        public final String attr_shapesrc = "";
        public final String attr_eyebottom = "";
        public final String attr_eyeleft = "";
        public final String attr_eyeright = "";
        public final String attr_eyetop = "";
        public final String attr_eyeshadowside = "";
        public final String attr_blend_mode = "";
        public final String attr_intensity = "";
        public final String attr_side = "";
        public final String attr_position = "";
        public final String attr_defaultcolorguid = "";
        public final String attr_modelanchorlefteye = "";
        public final String attr_modelanchorleftface = "";
        public final String attr_modelanchorrighteye = "";
        public final String attr_modelanchorrightface = "";
        public final String attr_wigshadowstrength = "";
        public final String attr_basicbrowhead = "";
        public final String attr_basicbrowtail = "";
        public final String attr_basicbrowtop = "";
        public final String attr_basiceyehead = "";
        public final String attr_basiceyetail = "";
        public final String attr_basiceyetop = "";
        public final String attr_browhead = "";
        public final String attr_browtail = "";
        public final String attr_browtop = "";
        public final String attr_modelanchorleft = "";
        public final String attr_modelanchorright = "";
        public final String attr_eyewearwidth = "";
        public final String attr_modelanchorlefttop = "";
        public final String attr_modelanchorleftbottom = "";
        public final String attr_modelanchorrighttop = "";
        public final String attr_modelanchorrightbottom = "";
        public final String attr_defaultcolor = "";
        public final String attr_secondsrc = "";
        public final String attr_thumbnail = "";
        public final List<String> color = Collections.EMPTY_LIST;
        public final String attr_hair_warping_strength = "";
        public final String attr_obb_path = "";
        public final String attr_obc_path = "";
        public final String attr_glpf_path = "";
        public final String attr_occluder_path = "";
        public final String attr_browpositionx = "";
        public final String attr_browpositiony = "";
        public final String attr_browthickness = "";
        public final String attr_browcurvature = "";
        public final String attr_browdefinition = "";
        public final String attr_shapesrc3d = "";
        public final String attr_browhead3d = "";
        public final String attr_browtop3d = "";
        public final String attr_browtail3d = "";
        public final String attr_basicbrowhead3d = "";
        public final String attr_basicbrowtop3d = "";
        public final String attr_basicbrowtail3d = "";
        public final String attr_basiceyehead3d = "";
        public final String attr_basiceyetop3d = "";
        public final String attr_basiceyetail3d = "";
        public final String attr_oversizedratio = "";
        public final String attr_upperhead3d = "";
        public final String attr_uppermiddle3d = "";
        public final String attr_uppertail3d = "";
        public final String attr_lowerhead3d = "";
        public final String attr_lowermiddle3d = "";
        public final String attr_lowertail3d = "";
        public final String attr_feathersrc3d = "";
        public final String attr_browgoldenratio = "";
        public final String attr_browmatchthickness = "";
        public final String attr_browheadlocation = "";
        public final String attr_browtaillocation = "";
        public final String attr_front_src = "";
        public final String attr_front_left_anchor = "";
        public final String attr_front_right_anchor = "";
        public final String attr_front_scale = "";
        public final String attr_left_src = "";
        public final String attr_left_ear_anchor = "";
        public final String attr_left_front_anchor = "";
        public final String attr_left_side_degree = "";
        public final String attr_left_scale = "";
        public final String attr_right_src = "";
        public final String attr_right_ear_anchor = "";
        public final String attr_right_front_anchor = "";
        public final String attr_right_side_degree = "";
        public final String attr_right_scale = "";
        public final String attr_env_region_src = "";
        public final String attr_env_map_src = "";
        public final String attr_env_mode = "";
        public final String attr_env_tile = "";
        public final String attr_env_intensity = "";
        public final String attr_env_frame_src = "";
        public final String attr_env_frame_mode = "";
        public final String attr_env_frame_tile = "";
        public final String attr_env_frame_intensity = "";
        public final String attr_depth = "";
        public final String attr_eyewear_scale = "";
        public final String attr_frame_length = "";
        public final String attr_bridge_length = "";
        public final String attr_temple_length = "";
        public final String attr_frame_total_width = "";
        public final String attr_len_color_1 = "";
        public final String attr_len_density_1 = "";
        public final String attr_len_color_2 = "";
        public final String attr_len_density_2 = "";
        public final String attr_len_color_3 = "";
        public final String attr_len_density_3 = "";
        public final String attr_len_gradient_1 = "";
        public final String attr_len_gradient_1_position = "";
        public final String attr_len_gradient_1_range = "";
        public final String attr_len_gradient_2 = "";
        public final String attr_len_gradient_2_position = "";
        public final String attr_len_gradient_2_range = "";
        public final String attr_frame_opacity = "";
        public final String attr_enable_frame_opacity = "";
        public final String attr_left_anchor_position = "";
        public final String attr_right_anchor_position = "";
        public final String attr_object_distance_ratio = "";
        public final String attr_is_rigid_body = "";
        public final String attr_object_distance_ratio_back = "";
        public final String attr_object_distance_ratio_palm = "";
        public final String attr_adaptive_rotate = "";

        private C0184e() {
        }
    }

    public static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final JsonObject f41663a = new JsonObject();

        public f(JsonObject jsonObject) {
            for (Map.Entry entry : jsonObject.f42454b.entrySet()) {
                String strSubstring = (String) entry.getKey();
                boolean zStartsWith = strSubstring.startsWith("attr_");
                JsonObject jsonObject2 = this.f41663a;
                if (zStartsWith) {
                    strSubstring = strSubstring.substring(5);
                }
                jsonObject2.o(strSubstring, ((JsonElement) entry.getValue()).h());
            }
        }

        public final String a(String str) {
            JsonElement jsonElementR = this.f41663a.r(str);
            return jsonElementR != null ? jsonElementR.n() : "";
        }

        public final void b(String str, String str2) {
            this.f41663a.p(str, str2);
        }

        public final String toString() {
            return GsonHelper.f39261b.k(this.f41663a);
        }
    }

    public static class g {
        public final String attr_color_intensities = "";
        public final String attr_radius = "";
        public final String inner_text = "";

        private g() {
        }
    }

    public static class h {
        public final List<g> palette_guid = Collections.EMPTY_LIST;

        private h() {
        }
    }

    public static class i {
        public final List<C0184e> mask = Collections.EMPTY_LIST;

        private i() {
        }
    }

    public static class j {
        public final List<JsonObject> mask = Collections.EMPTY_LIST;

        private j() {
        }
    }

    public static class k {
        public final List<JsonObject> mask = Collections.EMPTY_LIST;

        private k() {
        }
    }

    public static class l {
        public final List<C0184e> mask = Collections.EMPTY_LIST;

        private l() {
        }
    }

    private e() {
        List list = Collections.EMPTY_LIST;
        this.name = list;
        this.pattern_mask = list;
        this.pattern_mask_cube_eyewear = list;
        this.pattern_mask_real_3D = list;
        this.tattoo_mask = list;
        this.colored_mask = list;
        this.eyebrow_mode = list;
        this.eyebrow_mode_3d = list;
        this.lipstick_profile = list;
        this.attr_wig_model_mode = "";
        this.attr_wig_coloring_mode = "";
        this.attr_hidden_in_room = "";
        this.attr_face_art_layer2 = "";
        this.palettes = list;
        this.attr_type = "";
        this.attr_ombre_range = "";
        this.attr_ombre_line_offset = "";
        this.attr_width_enlarge = "";
        this.attr_upper_enlarge = "";
        this.attr_lower_enlarge = "";
        this.attr_transparency = "";
        this.attr_light = "";
        this.attr_reflection = "";
        this.attr_contrast = "";
        this.attr_roughness = "";
        this.attr_finish_type = "";
        this.attr_texture_mode = "";
        this.attr_color = "";
        this.attr_tip_ratio_thumb = "";
        this.attr_tip_ratio_fore = "";
        this.attr_tip_ratio_middle = "";
        this.attr_tip_ratio_ring = "";
        this.attr_tip_ratio_little = "";
        this.attr_shimmer_opacity = "";
        this.attr_textured_granularity = "";
        this.attr_shimmer_granularity = "";
        this.attr_fullness = "";
        this.attr_wrinkless = "";
    }

    public static TemplateUtils.b a(e eVar, TemplateUtils.b bVar, YMKPrimitiveData.SourceType sourceType, String str, float f2, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.i iVar) throws JSONException {
        boolean z;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        YMKPrimitiveData.SourceType sourceType2;
        Threads.b();
        TemplateUtils.b bVar2 = bVar == null ? new TemplateUtils.b() : bVar;
        HashMap map = bVar2.f41593a;
        if (!TextUtils.isEmpty(eVar.attr_sku_guid)) {
            bVar2.v.add(eVar.attr_sku_guid);
        }
        String str14 = eVar.attr_guid;
        String strName = (!TextUtils.isEmpty(eVar.attr_supported_mode) ? com.perfectcorp.perfectlib.ph.template.e.f.a(eVar.attr_supported_mode) : com.perfectcorp.perfectlib.ph.template.e.f.EDIT).name();
        Map map2 = iVar.f41492a;
        String strB = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(eVar.attr_thumbnail));
        String str15 = eVar.attr_texture_supported_mode;
        String str16 = eVar.attr_hidden_in_room;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String string = !MoreCollections.a(eVar.name) ? com.perfectcorp.perfectlib.ph.template.idc.b.a(eVar.name.get(0)).toString() : "";
        Iterator<i> it = eVar.pattern_mask.iterator();
        int iA = 0;
        String str17 = "";
        String str18 = str17;
        boolean z2 = true;
        while (true) {
            boolean zHasNext = it.hasNext();
            map = map;
            bVar2 = bVar2;
            str15 = str15;
            str16 = str16;
            arrayList2 = arrayList2;
            it = it;
            z = z2;
            arrayList = arrayList;
            str2 = "secondsrc";
            str3 = "eyewearwidth";
            String str19 = "browthickness";
            str4 = "browpositiony";
            str5 = "browpositionx";
            str6 = "browtail";
            str7 = "browtop";
            str8 = "lowertail3d";
            String str20 = "browhead";
            str9 = "lowermiddle3d";
            String str21 = "eyebottom";
            str10 = "eyeright";
            str11 = "eyetop";
            str12 = "eyeleft";
            str13 = "position";
            if (!zHasNext) {
                break;
            }
            i next = it.next();
            if (!z) {
                break;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= next.mask.size()) {
                    z2 = z;
                    break;
                }
                C0184e c0184e = next.mask.get(i2);
                i iVar2 = next;
                String str22 = c0184e.attr_src;
                String strB2 = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(str22));
                String str23 = c0184e.attr_imagesrc;
                String strB3 = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(str23));
                String strB4 = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(TextUtils.isEmpty(c0184e.attr_glpf_path) ? !TextUtils.isEmpty(c0184e.attr_obc_path) ? c0184e.attr_obc_path : c0184e.attr_obb_path : c0184e.attr_glpf_path));
                int i3 = i2;
                String str24 = str19;
                String str25 = str4;
                String strB5 = b(strB4, new jy(new File(c0184e.attr_occluder_path).getName(), 1));
                boolean zContainsKey = map2.containsKey(c0184e.attr_occluder_path);
                String str26 = c0184e.attr_occluder_path;
                String strB6 = zContainsKey ? com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(str26)) : TextUtils.isEmpty(str26) ? "" : b(strB4, new jy(new File(str26).getName(), 2));
                iA |= TemplateConsts.PatternPosition.c(c0184e.attr_position).a();
                if ((!TextUtils.isEmpty(str22) && !TemplateUtils.k(strB2)) || (!TextUtils.isEmpty(str23) && !TemplateUtils.k(strB3))) {
                    z2 = false;
                    break;
                }
                String str27 = c0184e.attr_defaultcolor;
                String str28 = c0184e.attr_defaultcolorguid;
                String str29 = strB6;
                int iB = TemplateConsts.b(-1, c0184e.attr_hair_warping_strength);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("position", c0184e.attr_position);
                jSONObject.put("eyeleft", c0184e.attr_eyeleft);
                jSONObject.put("eyetop", c0184e.attr_eyetop);
                jSONObject.put("eyeright", c0184e.attr_eyeright);
                jSONObject.put(str21, c0184e.attr_eyebottom);
                str17 = str27;
                jSONObject.put("eyeshadowside", c0184e.attr_eyeshadowside);
                jSONObject.put("shapesrc", TemplatePaths.c(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(c0184e.attr_shapesrc))));
                jSONObject.put(str20, c0184e.attr_browhead);
                jSONObject.put("browtop", c0184e.attr_browtop);
                jSONObject.put("browtail", c0184e.attr_browtail);
                jSONObject.put("basicbrowhead", c0184e.attr_basicbrowhead);
                jSONObject.put("basicbrowtop", c0184e.attr_basicbrowtop);
                jSONObject.put("basicbrowtail", c0184e.attr_basicbrowtail);
                jSONObject.put("basiceyehead", c0184e.attr_basiceyehead);
                jSONObject.put("basiceyetop", c0184e.attr_basiceyetop);
                jSONObject.put("basiceyetail", c0184e.attr_basiceyetail);
                jSONObject.put("shapesrc3d", TemplatePaths.c(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(c0184e.attr_shapesrc3d))));
                jSONObject.put("browhead3d", c0184e.attr_browhead3d);
                jSONObject.put("browtop3d", c0184e.attr_browtop3d);
                jSONObject.put("browtail3d", c0184e.attr_browtail3d);
                jSONObject.put("browpositionx", c0184e.attr_browpositionx);
                str4 = str25;
                jSONObject.put(str4, c0184e.attr_browpositiony);
                str18 = str28;
                jSONObject.put(str24, c0184e.attr_browthickness);
                jSONObject.put("browcurvature", c0184e.attr_browcurvature);
                jSONObject.put("browdefinition", c0184e.attr_browdefinition);
                jSONObject.put("oversizedratio", c0184e.attr_oversizedratio);
                jSONObject.put("upperhead3d", c0184e.attr_upperhead3d);
                jSONObject.put("uppermiddle3d", c0184e.attr_uppermiddle3d);
                jSONObject.put("uppertail3d", c0184e.attr_uppertail3d);
                jSONObject.put("lowerhead3d", c0184e.attr_lowerhead3d);
                jSONObject.put(str9, c0184e.attr_lowermiddle3d);
                jSONObject.put(str8, c0184e.attr_lowertail3d);
                jSONObject.put("feathersrc3d", TemplatePaths.c(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(c0184e.attr_feathersrc3d))));
                jSONObject.put("browgoldenratio", c0184e.attr_browgoldenratio);
                jSONObject.put("browmatchthickness", c0184e.attr_browmatchthickness);
                jSONObject.put("browheadlocation", c0184e.attr_browheadlocation);
                jSONObject.put("browtaillocation", c0184e.attr_browtaillocation);
                jSONObject.put("imagesrc", TemplatePaths.c(strB3));
                jSONObject.put("modelanchorleft", c0184e.attr_modelanchorleft);
                jSONObject.put("modelanchorright", c0184e.attr_modelanchorright);
                jSONObject.put("modelanchorlefttop", c0184e.attr_modelanchorlefttop);
                jSONObject.put("modelanchorleftbottom", c0184e.attr_modelanchorleftbottom);
                jSONObject.put("modelanchorrighttop", c0184e.attr_modelanchorrighttop);
                jSONObject.put("modelanchorrightbottom", c0184e.attr_modelanchorrightbottom);
                jSONObject.put(str3, c0184e.attr_eyewearwidth);
                jSONObject.put(str2, TemplatePaths.c(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(c0184e.attr_secondsrc))));
                jSONObject.put("modelanchorlefteye", c0184e.attr_modelanchorlefteye);
                jSONObject.put("modelanchorrighteye", c0184e.attr_modelanchorrighteye);
                jSONObject.put("modelanchorleftface", c0184e.attr_modelanchorleftface);
                jSONObject.put("modelanchorrightface", c0184e.attr_modelanchorrightface);
                jSONObject.put("wigshadowstrength", c0184e.attr_wigshadowstrength);
                jSONObject.put("object_distance_ratio", c0184e.attr_object_distance_ratio);
                jSONObject.put("is_rigid_body", c0184e.attr_is_rigid_body);
                jSONObject.put("object_distance_ratio_back", c0184e.attr_object_distance_ratio_back);
                jSONObject.put("object_distance_ratio_palm", c0184e.attr_object_distance_ratio_palm);
                jSONObject.put("adaptive_rotate", c0184e.attr_adaptive_rotate);
                int i4 = i3 + 1;
                arrayList.add(new com.perfectcorp.perfectlib.ph.template.c(str14, String.valueOf(i4), Collections.singletonList(strB2), jSONObject.toString(), Collections.singletonList(""), "", Collections.singletonList(strB5), Collections.singletonList(str29), iB));
                str21 = str21;
                str8 = str8;
                next = iVar2;
                str2 = str2;
                str19 = str24;
                str9 = str9;
                str20 = str20;
                i2 = i4;
            }
        }
        String str30 = "browhead";
        String str31 = "eyebottom";
        String str32 = str2;
        String str33 = str8;
        ArrayList arrayList3 = arrayList;
        e eVar2 = eVar;
        Iterator<j> it2 = eVar2.pattern_mask_cube_eyewear.iterator();
        while (it2.hasNext()) {
            j next2 = it2.next();
            if (!z) {
                break;
            }
            str33 = str33;
            str4 = str4;
            int i5 = 0;
            while (true) {
                if (i5 < next2.mask.size()) {
                    str5 = str5;
                    f fVar = new f(next2.mask.get(i5));
                    int i6 = i5;
                    if (!c(str14, fVar.a("front_src"), map2)) {
                        ArrayList arrayList4 = arrayList3;
                        if (!c(str14, fVar.a("left_src"), map2)) {
                            j jVar = next2;
                            if (!c(str14, fVar.a("right_src"), map2)) {
                                String str34 = str13;
                                if (c(str14, fVar.a("env_region_src"), map2)) {
                                    arrayList3 = arrayList4;
                                    str13 = str34;
                                } else {
                                    String str35 = str6;
                                    if (c(str14, fVar.a("env_map_src"), map2)) {
                                        arrayList3 = arrayList4;
                                        str13 = str34;
                                        str6 = str35;
                                    } else {
                                        String str36 = str7;
                                        if (c(str14, fVar.a("env_frame_src"), map2)) {
                                            arrayList3 = arrayList4;
                                            str13 = str34;
                                            str6 = str35;
                                            str7 = str36;
                                        } else {
                                            String strB7 = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(fVar.a("front_src")));
                                            fVar.b("front_src", strB7);
                                            fVar.b("left_src", com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(fVar.a("left_src"))));
                                            fVar.b("right_src", com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(fVar.a("right_src"))));
                                            fVar.b("env_region_src", com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(fVar.a("env_region_src"))));
                                            fVar.b("env_map_src", com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(fVar.a("env_map_src"))));
                                            fVar.b("env_frame_src", com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(fVar.a("env_frame_src"))));
                                            String string2 = fVar.toString();
                                            i5 = i6 + 1;
                                            String strValueOf = String.valueOf(i5);
                                            List listSingletonList = Collections.singletonList(strB7);
                                            List listSingletonList2 = Collections.singletonList("");
                                            List list = Collections.EMPTY_LIST;
                                            arrayList4.add(new com.perfectcorp.perfectlib.ph.template.c(str14, strValueOf, listSingletonList, string2, listSingletonList2, "", list, list, -1));
                                            arrayList3 = arrayList4;
                                            next2 = jVar;
                                            str5 = str5;
                                            str13 = str34;
                                            str6 = str35;
                                            str7 = str36;
                                        }
                                    }
                                }
                            }
                            z = false;
                        }
                        arrayList3 = arrayList4;
                    }
                    z = false;
                } else {
                    str33 = str33;
                    str4 = str4;
                }
            }
        }
        String str37 = str6;
        String str38 = str7;
        String str39 = str33;
        String str40 = str4;
        String str41 = str5;
        String str42 = str13;
        ArrayList arrayList5 = arrayList3;
        Iterator<l> it3 = eVar2.tattoo_mask.iterator();
        while (it3.hasNext()) {
            l next3 = it3.next();
            if (!z) {
                break;
            }
            int i7 = 0;
            while (true) {
                if (i7 >= next3.mask.size()) {
                    str14 = str14;
                    str30 = str30;
                    break;
                }
                C0184e c0184e2 = next3.mask.get(i7);
                String strB8 = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str14, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(c0184e2.attr_src));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(str12, c0184e2.attr_eyeleft);
                jSONObject2.put(str11, c0184e2.attr_eyetop);
                jSONObject2.put(str10, c0184e2.attr_eyeright);
                jSONObject2.put(str31, c0184e2.attr_eyebottom);
                jSONObject2.put(str30, c0184e2.attr_browhead);
                ArrayList arrayList6 = arrayList5;
                jSONObject2.put(str38, c0184e2.attr_browtop);
                jSONObject2.put(str37, c0184e2.attr_browtail);
                jSONObject2.put("side", c0184e2.attr_side);
                String str43 = str42;
                jSONObject2.put(str43, c0184e2.attr_position);
                String str44 = str11;
                jSONObject2.put("blend_mode", c0184e2.attr_blend_mode);
                jSONObject2.put("intensity", c0184e2.attr_intensity);
                String string3 = jSONObject2.toString();
                if (!TemplateUtils.k(strB8)) {
                    str42 = str43;
                    str11 = str44;
                    arrayList5 = arrayList6;
                    z = false;
                    break;
                }
                int i8 = i7 + 1;
                ArrayList arrayList7 = arrayList2;
                String str45 = str14;
                str42 = str43;
                arrayList7.add(new com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a(str45, String.valueOf(i8), Collections.singletonList(strB8), string3, "", ""));
                eVar2 = eVar;
                str11 = str44;
                arrayList5 = arrayList6;
                i7 = i8;
                str12 = str12;
                next3 = next3;
                str31 = str31;
                str10 = str10;
                it3 = it3;
                arrayList2 = arrayList7;
                str14 = str45;
                str30 = str30;
            }
        }
        ArrayList arrayList8 = arrayList5;
        e eVar3 = eVar2;
        String str46 = str14;
        ArrayList arrayList9 = arrayList2;
        String str47 = str39;
        String str48 = "modelanchorleftbottom";
        String str49 = "modelanchorlefttop";
        String str50 = "modelanchorright";
        String str51 = "modelanchorleft";
        String str52 = "browtaillocation";
        String str53 = "browheadlocation";
        String str54 = "browmatchthickness";
        String str55 = "browgoldenratio";
        String str56 = "feathersrc3d";
        String str57 = "lowerhead3d";
        String str58 = "uppertail3d";
        String str59 = "uppermiddle3d";
        String str60 = "upperhead3d";
        String str61 = "oversizedratio";
        String str62 = "browdefinition";
        String str63 = "browcurvature";
        String str64 = str40;
        String str65 = "browthickness";
        String str66 = str41;
        Iterator<a> it4 = eVar3.colored_mask.iterator();
        while (it4.hasNext()) {
            a next4 = it4.next();
            if (!z) {
                break;
            }
            int i9 = 0;
            while (true) {
                if (i9 >= next4.mask.size()) {
                    arrayList9 = arrayList9;
                    break;
                }
                C0184e c0184e3 = next4.mask.get(i9);
                String strB9 = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str46, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(c0184e3.attr_src));
                String str67 = c0184e3.attr_secondsrc;
                String strB10 = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str46, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(c0184e3.attr_thumbnail));
                String strB11 = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str46, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(str67));
                a aVar = next4;
                int iB2 = TemplateConsts.b(-1, c0184e3.attr_hair_warping_strength);
                if (!TemplateUtils.k(strB9) || (!TextUtils.isEmpty(str67) && !TemplateUtils.k(strB11))) {
                    z = false;
                    break;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(str51, c0184e3.attr_modelanchorleft);
                jSONObject3.put(str50, c0184e3.attr_modelanchorright);
                jSONObject3.put(str49, c0184e3.attr_modelanchorlefttop);
                jSONObject3.put(str48, c0184e3.attr_modelanchorleftbottom);
                jSONObject3.put("modelanchorrighttop", c0184e3.attr_modelanchorrighttop);
                jSONObject3.put("modelanchorrightbottom", c0184e3.attr_modelanchorrightbottom);
                String str68 = str51;
                String str69 = str3;
                jSONObject3.put(str69, c0184e3.attr_eyewearwidth);
                if (TextUtils.isEmpty(str67)) {
                    strB11 = "";
                }
                String str70 = str32;
                jSONObject3.put(str70, TemplatePaths.c(strB11));
                String str71 = str66;
                jSONObject3.put(str71, c0184e3.attr_browpositionx);
                str3 = str69;
                String str72 = str64;
                jSONObject3.put(str72, c0184e3.attr_browpositiony);
                String str73 = str65;
                jSONObject3.put(str73, c0184e3.attr_browthickness);
                String str74 = str63;
                jSONObject3.put(str74, c0184e3.attr_browcurvature);
                String str75 = str62;
                jSONObject3.put(str75, c0184e3.attr_browdefinition);
                String str76 = str61;
                jSONObject3.put(str76, c0184e3.attr_oversizedratio);
                String str77 = str60;
                jSONObject3.put(str77, c0184e3.attr_upperhead3d);
                String str78 = str59;
                jSONObject3.put(str78, c0184e3.attr_uppermiddle3d);
                String str79 = str58;
                jSONObject3.put(str79, c0184e3.attr_uppertail3d);
                String str80 = str57;
                jSONObject3.put(str80, c0184e3.attr_lowerhead3d);
                jSONObject3.put(str9, c0184e3.attr_lowermiddle3d);
                String str81 = str47;
                jSONObject3.put(str81, c0184e3.attr_lowertail3d);
                String str82 = str56;
                jSONObject3.put(str82, TemplatePaths.c(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str46, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map2.get(c0184e3.attr_feathersrc3d))));
                String str83 = str55;
                jSONObject3.put(str83, c0184e3.attr_browgoldenratio);
                String str84 = str54;
                jSONObject3.put(str84, c0184e3.attr_browmatchthickness);
                String str85 = str53;
                jSONObject3.put(str85, c0184e3.attr_browheadlocation);
                String str86 = str52;
                jSONObject3.put(str86, c0184e3.attr_browtaillocation);
                String string4 = jSONObject3.toString();
                String str87 = str49;
                String strG = TemplateUtils.g();
                Iterator<String> it5 = c0184e3.color.iterator();
                while (it5.hasNext()) {
                    bVar2.f41597f.add(new ColorInfo(strG, str, it5.next().trim(), "-1", sourceType.name(), YMKPrimitiveData.MakeupColor.ExtraData.c("", "", "-1", "-1", "", "-1", null, "", "", "", "-1", "-1", "-1", "-1", "-1", "-1", "-1", "").toString(), "", ""));
                    str46 = str46;
                    arrayList9 = arrayList9;
                    map2 = map2;
                    i9 = i9;
                    str87 = str87;
                    str70 = str70;
                    str71 = str71;
                }
                str32 = str70;
                ArrayList arrayList10 = arrayList9;
                String str88 = str46;
                i9++;
                ArrayList arrayList11 = arrayList8;
                arrayList11.add(new com.perfectcorp.perfectlib.ph.template.c(str88, String.valueOf(i9), Collections.singletonList(strB9), string4, Collections.singletonList(strB10), strG, Collections.singletonList(""), Collections.singletonList(""), iB2));
                str52 = str86;
                arrayList8 = arrayList11;
                str50 = str50;
                str48 = str48;
                str46 = str88;
                str47 = str81;
                map2 = map2;
                str49 = str87;
                str51 = str68;
                str53 = str85;
                str54 = str84;
                str55 = str83;
                str56 = str82;
                str57 = str80;
                str58 = str79;
                str59 = str78;
                str60 = str77;
                str61 = str76;
                str62 = str75;
                str63 = str74;
                str65 = str73;
                str64 = str72;
                str66 = str71;
                arrayList9 = arrayList10;
                next4 = aVar;
            }
        }
        ArrayList arrayList12 = arrayList9;
        ArrayList arrayList13 = arrayList8;
        String str89 = str46;
        Iterator<d> it6 = eVar3.lipstick_profile.iterator();
        String str90 = "";
        while (it6.hasNext()) {
            str90 = it6.next().attr_type;
        }
        Iterator<b> it7 = eVar3.eyebrow_mode.iterator();
        String str91 = "";
        while (it7.hasNext()) {
            str91 = it7.next().attr_type;
        }
        Iterator<c> it8 = eVar3.eyebrow_mode_3d.iterator();
        String str92 = "";
        while (it8.hasNext()) {
            str92 = it8.next().attr_type;
        }
        map.put(str89, new ArrayList());
        Iterator<h> it9 = eVar3.palettes.iterator();
        while (it9.hasNext()) {
            for (g gVar : it9.next().palette_guid) {
                String str93 = gVar.inner_text;
                String str94 = gVar.attr_color_intensities;
                ((List) map.get(str89)).add(new com.perfectcorp.perfectlib.ph.database.ymk.pattern.b(str89, str93, sourceType.name(), (str94.isEmpty() ? new String[0] : str94.split(",")).length, str94, gVar.attr_radius, "", com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.f41250j));
            }
        }
        m.b.a aVar2 = new m.b.a();
        aVar2.f41689a = str90;
        aVar2.f41690b = str91;
        aVar2.f41691c = str92;
        aVar2.d = eVar3.attr_wig_coloring_mode;
        aVar2.f41692e = eVar3.attr_face_art_layer2;
        aVar2.f41695i = eVar3.attr_type;
        aVar2.g = eVar3.attr_ombre_range;
        aVar2.f41694h = eVar3.attr_ombre_line_offset;
        aVar2.f41693f = eVar3.attr_wig_model_mode;
        aVar2.f41696j = eVar3.attr_width_enlarge;
        aVar2.f41697k = eVar3.attr_upper_enlarge;
        aVar2.l = eVar3.attr_lower_enlarge;
        aVar2.m = eVar3.attr_transparency;
        aVar2.n = eVar3.attr_light;
        aVar2.o = eVar3.attr_reflection;
        aVar2.p = eVar3.attr_contrast;
        aVar2.q = eVar3.attr_roughness;
        aVar2.r = eVar3.attr_finish_type;
        aVar2.s = eVar3.attr_texture_mode;
        aVar2.t = eVar3.attr_color;
        aVar2.u = eVar3.attr_tip_ratio_thumb;
        aVar2.v = eVar3.attr_tip_ratio_fore;
        aVar2.w = eVar3.attr_tip_ratio_middle;
        aVar2.x = eVar3.attr_tip_ratio_ring;
        aVar2.y = eVar3.attr_tip_ratio_little;
        aVar2.z = eVar3.attr_shimmer_opacity;
        aVar2.A = eVar3.attr_textured_granularity;
        aVar2.B = eVar3.attr_shimmer_granularity;
        aVar2.D = eVar3.attr_fullness;
        aVar2.E = eVar3.attr_wrinkless;
        m.b bVar3 = new m.b(aVar2);
        if (TextUtils.isEmpty(strB)) {
            strB = "-_-";
        }
        m mVar = new m(str89, str, string, Collections.singletonList(strB), sourceType.name(), strName, f2, sourceType == YMKPrimitiveData.SourceType.DOWNLOAD, eVar3.attr_sku_guid, bVar3, !TextUtils.isEmpty(str17) ? TemplateUtils.u(str17) : "", str18, !TextUtils.isEmpty(str15) ? str15 : "", !TextUtils.isEmpty(str16) ? str16 : "", iA);
        if (z && (TextUtils.isEmpty(mVar.a()) || TemplateUtils.k(mVar.a()))) {
            bVar2.f41598h.addAll(arrayList13);
            bVar2.f41599i.addAll(arrayList12);
            bVar2.d.add(mVar);
            sourceType2 = sourceType;
        } else {
            sourceType2 = sourceType;
            com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.f(bVar2, str89, str, sourceType2);
        }
        Iterator it10 = map.values().iterator();
        while (it10.hasNext()) {
            Iterator it11 = ((List) it10.next()).iterator();
            while (it11.hasNext()) {
                String str95 = ((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) it11.next()).f41252b;
                AtomicInteger atomicInteger = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.f41498a;
                if (!com.perfectcorp.perfectlib.ph.template.idc.d.d(str95, sourceType2) && !com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.g(bVar2, str95)) {
                    com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.h(bVar2, str95, str, sourceType2);
                }
            }
        }
        return bVar2;
    }

    public static String b(String str, FilenameFilter filenameFilter) {
        File[] fileArrListFiles;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        File file = new File(str);
        return (!file.isDirectory() || (fileArrListFiles = file.listFiles(filenameFilter)) == null || fileArrListFiles.length <= 0) ? "" : fileArrListFiles[0].getAbsolutePath();
    }

    public static boolean c(String str, String str2, Map map) {
        return (TextUtils.isEmpty(str2) || TemplateUtils.k(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map.get(str2)))) ? false : true;
    }
}
