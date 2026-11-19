package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ProductInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PerfectEffect f39796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BeautyMode f39797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Configuration.ImageSource f39798c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f39799e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f39800f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f39801h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f39802i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f39803j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b.a f39804k;

    public ProductInfo(PerfectEffect perfectEffect, String str, Sku sku, Configuration.ImageSource imageSource) {
        com.perfectcorp.perfectlib.ph.template.o.e eVar;
        this.f39802i = Collections.synchronizedList(new LinkedList());
        this.f39796a = perfectEffect;
        this.f39797b = perfectEffect.beautyMode;
        this.d = str;
        this.f39798c = imageSource;
        String str2 = sku.f41266f;
        int i2 = Nulls.f42040a;
        this.f39799e = Strings.b(str2);
        this.f39800f = Strings.b(sku.d);
        this.g = Strings.b(sku.f41265e);
        this.f39801h = Strings.b(sku.g);
        try {
            eVar = ((com.perfectcorp.perfectlib.ph.database.ymk.sku.h.c) GsonHelper.f39260a.i(sku.l, com.perfectcorp.perfectlib.ph.database.ymk.sku.h.c.class)).room.skus.get(0).sku.get(0);
        } catch (Throwable unused) {
            Log.d("ProductInfo", "this SKU without room info, id=" + sku.f41266f);
            eVar = com.perfectcorp.perfectlib.ph.template.o.e.f41701a;
        }
        String strB = DownloadImageHelper.b(imageSource, eVar.a(sku, eVar.b("sku_thumbnail")));
        String strB2 = DownloadImageHelper.b(imageSource, eVar.a(sku, eVar.b("menu_popup_n")));
        String strB3 = DownloadImageHelper.b(imageSource, eVar.a(sku, eVar.b("menu")));
        if (!TextUtils.isEmpty(strB)) {
            this.f39803j = strB;
        } else if (TextUtils.isEmpty(strB2)) {
            this.f39803j = strB3;
        } else {
            this.f39803j = strB2;
        }
        com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b) GsonHelper.f39260a.i(sku.m, com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b.class);
        this.f39804k = bVar == null ? null : bVar.eyewearInfo;
    }

    public final String getGuid() {
        return this.d;
    }

    public final String getLongName() {
        return this.g;
    }

    public final String getName() {
        return this.f39800f;
    }

    public final PerfectEffect getPerfectEffect() {
        return this.f39796a;
    }

    public final List<SkuInfo> getSkus() {
        return Collections.unmodifiableList(this.f39802i);
    }

    public final String getThumbnailUrl() {
        return this.f39803j;
    }

    public final String getVendor() {
        return this.f39801h;
    }

    public final String toString() {
        return "guid:" + this.f39799e + ", mappedID:" + this.d + ", items:" + this.f39802i;
    }

    public ProductInfo(BeautyMode beautyMode, String str, Sku sku, Configuration.ImageSource imageSource) {
        this(PerfectEffect.of(beautyMode, ItemSubType.d(beautyMode, sku.f41264c)), str, sku, imageSource);
    }

    public ProductInfo(String str, com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar, Configuration.ImageSource imageSource) {
        String strC;
        this.f39802i = Collections.synchronizedList(new LinkedList());
        PerfectEffect perfectEffect = PerfectEffect.BACKGROUND;
        this.f39796a = perfectEffect;
        this.f39797b = perfectEffect.beautyMode;
        this.d = str;
        this.f39798c = imageSource;
        String str2 = aVar.guid;
        int i2 = Nulls.f42040a;
        this.f39799e = Strings.b(str2);
        com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a c0173aA = aVar.a();
        if (c0173aA != null) {
            this.f39800f = Strings.b(c0173aA.data.name);
            this.g = Strings.b(c0173aA.data.description);
            strC = DownloadImageHelper.b(imageSource, c0173aA.data.thumbnail);
        } else {
            this.f39800f = "";
            this.g = "";
            strC = aVar.c();
        }
        this.f39803j = strC;
        this.f39801h = "";
        this.f39804k = null;
    }
}
