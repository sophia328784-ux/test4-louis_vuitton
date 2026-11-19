package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import android.content.ContentValues;
import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.o;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.JsonArray;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f41294c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f41295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41296f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f41297h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f41298i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f41299j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f41300k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final String t;
    public b u;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41301a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41302b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f41303c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f41304e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f41305f;
        public String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f41306h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f41307i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f41308j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f41309k;
        public String l;
        public String m;
        public String n;
        public String o;
        public String p;
        public String q;
        public String r;
        public String s;
        public String t;
    }

    /* JADX WARN: Code duplicated, block: B:94:0x025c  */
    public e(String str, h.d dVar) {
        String str2;
        Gson gson;
        b bVar;
        String strK;
        b.c cVar;
        this.f41292a = dVar.itemGUID;
        this.f41293b = str;
        this.f41294c = dVar.hot ? 1 : 0;
        this.d = dVar.freeSampleURL;
        this.f41295e = dVar.shoppingURL;
        this.f41296f = dVar.moreInfoURL;
        this.f41299j = dVar.itemDescription;
        JsonElement jsonElement = dVar.customerInfo;
        String str3 = "";
        this.s = jsonElement == null ? "" : jsonElement.toString();
        this.f41298i = dVar.info.itemContent.a("item_palette_thumbnail");
        h.d.a.C0155a c0155a = dVar.info.itemContent;
        c0155a.getClass();
        try {
            Optional optionalM = FluentIterable.n(c0155a.display_color).m();
            str2 = optionalM.d() ? ((o.a) optionalM.c()).attr_color_list : "";
        } catch (Throwable th) {
            Log.c("SkuMetadata", "[getDisplayColor]", th);
        }
        this.f41300k = str2;
        this.l = MoreCollections.a(dVar.info.itemContent.palettes) ? "" : dVar.info.itemContent.palettes.get(0).attr_color_number;
        this.m = dVar.info.itemContent.b("item_name");
        this.n = dVar.info.itemContent.b("item_long_name");
        this.o = dVar.info.itemContent.c("item_intensity_slider");
        this.p = dVar.info.itemContent.c("item_radius_slider");
        this.q = dVar.info.itemContent.c("item_hidden_intensity_slider");
        this.r = dVar.info.itemContent.c("item_shine_intensity_slider");
        ArrayList arrayList = new ArrayList();
        h.d.a.C0155a c0155a2 = dVar.info.itemContent;
        if (c0155a2 == null || MoreCollections.a(c0155a2.palettes)) {
            h.d.a.C0155a c0155a3 = dVar.info.itemContent;
            if (c0155a3 != null && !MoreCollections.a(c0155a3.colors)) {
                for (com.perfectcorp.perfectlib.ph.template.idc.a aVar : dVar.info.itemContent.colors) {
                    if (!TextUtils.isEmpty(aVar.inner_text)) {
                        arrayList.add(aVar.inner_text);
                    }
                }
            }
        } else {
            for (com.perfectcorp.perfectlib.ph.template.idc.d dVar2 : dVar.info.itemContent.palettes) {
                if (!dVar2.colors.isEmpty()) {
                    for (com.perfectcorp.perfectlib.ph.template.idc.d.a aVar2 : dVar2.colors) {
                        if (!aVar2.color.isEmpty()) {
                            arrayList.addAll(aVar2.color);
                        } else if (!aVar2.level_color.isEmpty()) {
                            for (String str4 : aVar2.level_color) {
                                if (str4.length() == 12) {
                                    arrayList.add(str4.substring(str4.length() - 8));
                                }
                            }
                        }
                    }
                }
            }
        }
        h.d.a.C0155a c0155a4 = dVar.info.itemContent;
        if (c0155a4 == null || MoreCollections.a(c0155a4.patterns)) {
            if (MoreCollections.a(dVar.info.pattern) || dVar.info.wearingStyle != null) {
                gson = GsonHelper.f39261b;
                h.d.a aVar3 = dVar.info;
                bVar = new b(aVar3.pattern, aVar3.wearingStyle, arrayList);
            } else if (MoreCollections.a(arrayList)) {
                strK = null;
            } else {
                gson = GsonHelper.f39261b;
                bVar = new b(arrayList);
            }
            strK = gson.k(bVar);
        } else {
            Iterator<com.perfectcorp.perfectlib.ph.template.idc.e> it = dVar.info.itemContent.patterns.iterator();
            while (true) {
                if (it.hasNext()) {
                    com.perfectcorp.perfectlib.ph.template.idc.e next = it.next();
                    Optional optionalA = SkuDao.a(YMKDatabase.b(), next.attr_sku_guid, false);
                    optionalA = optionalA.d() ? optionalA : i.a(YMKDatabase.b(), next.attr_sku_guid);
                    if (optionalA.d()) {
                        String str5 = ((Sku) optionalA.c()).f41263b;
                        boolean z = str5.equals(SkuBeautyMode$FeatureType.BRACELET.toString()) || str5.equals(SkuBeautyMode$FeatureType.WATCH.toString()) || str5.equals(SkuBeautyMode$FeatureType.RING.toString());
                        if (this.f41292a.equals(next.attr_guid)) {
                            if (YMKPrimitiveData.TextureSupportedMode.c(next.attr_texture_supported_mode).contains(YMKPrimitiveData.TextureSupportedMode.REAL_3D) || z) {
                                Log.g(3, "SkuItem", "pattern mask for 3d object");
                                gson = GsonHelper.f39261b;
                                bVar = new b(next, z, arrayList);
                            } else {
                                Log.g(3, "SkuItem", "pattern mask for others");
                                gson = GsonHelper.f39261b;
                                bVar = new b(TextUtils.isEmpty(next.attr_patternGuid) ? next.attr_guid : next.attr_patternGuid, next.attr_thumbnail, arrayList);
                            }
                        }
                    }
                } else if (MoreCollections.a(dVar.info.pattern)) {
                    gson = GsonHelper.f39261b;
                    h.d.a aVar4 = dVar.info;
                    bVar = new b(aVar4.pattern, aVar4.wearingStyle, arrayList);
                } else {
                    gson = GsonHelper.f39261b;
                    h.d.a aVar5 = dVar.info;
                    bVar = new b(aVar5.pattern, aVar5.wearingStyle, arrayList);
                }
                strK = gson.k(bVar);
            }
        }
        this.t = strK;
        b bVarA = a();
        if (bVarA != null && (cVar = bVarA.patternGeneral) != null && !TextUtils.isEmpty(cVar.thumbnailPath)) {
            str3 = bVarA.patternGeneral.thumbnailPath;
        }
        this.g = TextUtils.isEmpty(dVar.info.itemContent.a("item_thumbnail")) ? str3 : dVar.info.itemContent.a("item_thumbnail");
        this.f41297h = TextUtils.isEmpty(dVar.info.itemContent.a("item_thumbnail_indexed")) ? str3 : dVar.info.itemContent.a("item_thumbnail_indexed");
    }

    public static a d() {
        a aVar = new a();
        aVar.f41301a = "";
        aVar.f41302b = "";
        aVar.f41303c = 0;
        aVar.d = "";
        aVar.f41304e = "";
        aVar.f41305f = "";
        aVar.g = "";
        aVar.f41306h = "";
        aVar.f41307i = "";
        aVar.f41308j = "";
        aVar.f41309k = "";
        aVar.l = "";
        aVar.m = "";
        aVar.n = "";
        aVar.o = "";
        aVar.p = "";
        aVar.q = "";
        aVar.r = "";
        aVar.s = "";
        return aVar;
    }

    public final synchronized b a() {
        try {
            if (this.u == null) {
                this.u = (b) GsonHelper.f39261b.i(this.t, b.class);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.u;
    }

    public final String b() {
        b.C0151b c0151b;
        b bVarA = a();
        return (bVarA == null || (c0151b = bVarA.pattern) == null) ? this.f41292a : c0151b.guid;
    }

    public final ContentValues c() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("itemGuid", this.f41292a);
        contentValues.put("skuGuid", this.f41293b);
        contentValues.put("isHot", Integer.valueOf(this.f41294c));
        contentValues.put("freeSampleUrl", this.d);
        contentValues.put("shoppingUrl", this.f41295e);
        contentValues.put("moreInfoUrl", this.f41296f);
        contentValues.put("itemDescription", this.f41299j);
        contentValues.put("customerInfo", this.s);
        contentValues.put("isDeleted", (Integer) 0);
        contentValues.put("itemThumbnailPath", this.g);
        contentValues.put("itemThumbnailIndexedPath", this.f41297h);
        contentValues.put("itemPaletteThumbnail", this.f41298i);
        contentValues.put("displayColorList", this.f41300k);
        contentValues.put("colorNumber", this.l);
        contentValues.put("itemName", this.m);
        contentValues.put("itemLongName", this.n);
        contentValues.put("isIntensitySliderHidden", this.o);
        contentValues.put("isRadiusSliderHidden", this.p);
        contentValues.put("isHiddenIntensitySliderHidden", this.q);
        contentValues.put("isShineIntensitySliderHidden", this.r);
        contentValues.put("extraData", this.t);
        return contentValues;
    }

    public static final class b {

        @SerializedName("earrings")
        public final a earringsOrNail;
        public final List<String> paletteColor;
        public final C0151b pattern;
        public final c patternGeneral;

        public b(com.perfectcorp.perfectlib.ph.template.idc.e eVar, boolean z, ArrayList arrayList) {
            c cVar;
            this.pattern = new C0151b(eVar, z);
            if (z) {
                cVar = new c(TextUtils.isEmpty(eVar.attr_patternGuid) ? eVar.attr_guid : eVar.attr_patternGuid, eVar.attr_thumbnail);
            } else {
                cVar = null;
            }
            this.patternGeneral = cVar;
            this.earringsOrNail = null;
            this.paletteColor = arrayList.isEmpty() ? null : arrayList;
        }

        public static final class c {
            public final String guid;
            public final String thumbnailPath;

            public c() {
                this.guid = "";
                this.thumbnailPath = "";
            }

            public c(String str, String str2) {
                this.guid = str;
                this.thumbnailPath = str2;
            }
        }

        public static final class a {
            public final List<String> patternGuids;
            public final JsonArray wearingStyles;

            public a() {
                this.patternGuids = Collections.EMPTY_LIST;
                this.wearingStyles = null;
            }

            public final List a() {
                return (List) GsonHelper.f39261b.h(this.wearingStyles, new f().f42556b);
            }

            public a(List list, JsonArray jsonArray) {
                this.patternGuids = list;
                this.wearingStyles = jsonArray;
            }
        }

        public b() {
            this.pattern = null;
            this.patternGeneral = null;
            this.earringsOrNail = null;
            this.paletteColor = null;
        }

        public b(String str, String str2, ArrayList arrayList) {
            this.pattern = null;
            this.patternGeneral = new c(str, str2);
            this.earringsOrNail = null;
            this.paletteColor = arrayList.isEmpty() ? null : arrayList;
        }

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.sku.e$b$b, reason: collision with other inner class name */
        public static final class C0151b {
            public final String guid;
            public final JsonObject mask;
            public final com.perfectcorp.perfectlib.ph.template.idc.e.C0184e patternMask;

            public C0151b(com.perfectcorp.perfectlib.ph.template.idc.e eVar, boolean z) {
                this.guid = eVar.attr_patternGuid;
                this.mask = !z ? eVar.pattern_mask_real_3D.get(0).mask.get(0) : null;
                this.patternMask = z ? eVar.pattern_mask.get(0).mask.get(0) : null;
            }

            public C0151b() {
                this.guid = "";
                this.mask = null;
                this.patternMask = null;
            }
        }

        public b(ArrayList arrayList) {
            this.pattern = null;
            this.patternGeneral = null;
            this.earringsOrNail = null;
            this.paletteColor = arrayList.isEmpty() ? null : arrayList;
        }

        public b(List list, JsonArray jsonArray, ArrayList arrayList) {
            this.pattern = null;
            this.patternGeneral = null;
            this.earringsOrNail = new a(list, jsonArray);
            this.paletteColor = arrayList.isEmpty() ? null : arrayList;
        }
    }

    public e(a aVar) {
        this.f41292a = aVar.f41301a;
        this.f41293b = aVar.f41302b;
        this.f41294c = aVar.f41303c;
        this.d = aVar.d;
        this.f41295e = aVar.f41304e;
        this.f41296f = aVar.f41305f;
        this.f41299j = aVar.f41308j;
        this.s = aVar.s;
        this.g = aVar.g;
        this.f41297h = aVar.f41306h;
        this.f41298i = aVar.f41307i;
        this.f41300k = aVar.f41309k;
        this.l = aVar.l;
        this.m = aVar.m;
        this.n = aVar.n;
        this.o = aVar.o;
        this.p = aVar.p;
        this.q = aVar.q;
        this.r = aVar.r;
        this.t = aVar.t;
    }
}
