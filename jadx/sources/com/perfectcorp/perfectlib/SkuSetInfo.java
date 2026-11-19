package com.perfectcorp.perfectlib;

import android.util.Pair;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import defpackage.mt;
import defpackage.tr;
import defpackage.zy0;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class SkuSetInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f39954c;

    public SkuSetInfo(com.perfectcorp.perfectlib.ph.database.ymk.skuset.a aVar, String str, List list) {
        PerfectEffect.of(TemplateConsts.d(aVar.f41329b), ItemSubType.NONE);
        int i2 = Nulls.f42040a;
        this.f39952a = Strings.b(str);
        this.f39953b = Strings.b(aVar.g.name);
        this.f39954c = list;
    }

    public static Pair a(Map map, com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar) {
        SkuInfo next;
        String str;
        String str2 = cVar.f41341b;
        String str3 = cVar.f41342c;
        ProductInfo productInfo = (ProductInfo) map.get(str2);
        if (productInfo == null) {
            str = "[getInfoPair] sku guid=" + cVar.f41341b + " doesn't exist in DB or masked.";
        } else {
            Iterator<SkuInfo> it = productInfo.getSkus().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!str3.equals(next.f39943c));
            if (next != null) {
                return Pair.create(productInfo, next);
            }
            str = "[getInfoPair] sku guid=" + productInfo.f39799e + " without skuItem guid=" + str3;
        }
        Log.d("SkuSetInfo", str);
        return null;
    }

    public static List b(com.perfectcorp.perfectlib.ph.database.ymk.skuset.a aVar, boolean z) {
        Threads.b();
        String str = aVar.f41328a;
        String str2 = aVar.f41329b;
        BeautyMode beautyModeValueOfSkuFeatureType = BeautyMode.valueOfSkuFeatureType(str2);
        if (com.perfectcorp.perfectlib.ph.unit.sku.a.e(beautyModeValueOfSkuFeatureType)) {
            List<Pair> listA = com.perfectcorp.perfectlib.ph.template.e.C0182e.a(str, false);
            Collection collection = (Collection) Observable.fromIterable(listA).map(new zy0(11)).flatMapIterable(Functions.f42605a).map(new zy0(15)).collectInto(new HashSet(), new zy0(16)).c();
            SkuHandler skuHandler = SkuHandler.getInstance();
            Objects.requireNonNull(skuHandler);
            Map mapG = skuHandler.g(collection, z);
            bz bzVar = ImmutableList.f42200c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (Pair pair : listA) {
                ImmutableList.Builder builder2 = new ImmutableList.Builder();
                for (Pair pair2 : (List) pair.second) {
                    Pair pairA = a(mapG, (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) pair2.first);
                    if (pairA == null) {
                        return Collections.EMPTY_LIST;
                    }
                    builder2.f(new SkuSetItemInfo((ProductInfo) pairA.first, (SkuInfo) pairA.second, (com.perfectcorp.perfectlib.ph.database.ymk.skuset.i.a) pair2.second));
                }
                builder.f(Pair.create((String) pair.first, builder2.i()));
            }
            return builder.i();
        }
        if (com.perfectcorp.perfectlib.ph.unit.sku.a.h(beautyModeValueOfSkuFeatureType)) {
            List<Pair> listC = com.perfectcorp.perfectlib.ph.template.e.C0182e.c(str, false);
            Collection collection2 = (Collection) Observable.fromIterable(listC).map(new zy0(13)).flatMapIterable(Functions.f42605a).map(new zy0(14)).collectInto(new HashSet(), new zy0(16)).c();
            SkuHandler skuHandler2 = SkuHandler.getInstance();
            Objects.requireNonNull(skuHandler2);
            Map mapG2 = skuHandler2.g(collection2, z);
            bz bzVar2 = ImmutableList.f42200c;
            ImmutableList.Builder builder3 = new ImmutableList.Builder();
            for (Pair pair3 : listC) {
                ImmutableList.Builder builder4 = new ImmutableList.Builder();
                for (Pair pair4 : (List) pair3.second) {
                    Pair pairA2 = a(mapG2, (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) pair4.first);
                    if (pairA2 == null) {
                        return Collections.EMPTY_LIST;
                    }
                    builder4.f(new SkuSetItemInfo((ProductInfo) pairA2.first, (SkuInfo) pairA2.second, (com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.a) pair4.second));
                }
                builder3.f(Pair.create((String) pair3.first, builder4.i()));
            }
            return builder3.i();
        }
        if (!com.perfectcorp.perfectlib.ph.unit.sku.a.j(beautyModeValueOfSkuFeatureType)) {
            mt.i(tr.g("unsupported SKU set type ", str2));
            return null;
        }
        List<Pair> listF = com.perfectcorp.perfectlib.ph.template.e.C0182e.f(str, false);
        Collection collection3 = (Collection) Observable.fromIterable(listF).map(new zy0(21)).flatMapIterable(Functions.f42605a).map(new zy0(22)).collectInto(new HashSet(), new zy0(16)).c();
        SkuHandler skuHandler3 = SkuHandler.getInstance();
        Objects.requireNonNull(skuHandler3);
        Map mapG3 = skuHandler3.g(collection3, z);
        bz bzVar3 = ImmutableList.f42200c;
        ImmutableList.Builder builder5 = new ImmutableList.Builder();
        for (Pair pair5 : listF) {
            ImmutableList.Builder builder6 = new ImmutableList.Builder();
            for (Pair pair6 : (List) pair5.second) {
                Pair pairA3 = a(mapG3, (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) pair6.first);
                if (pairA3 == null) {
                    return Collections.EMPTY_LIST;
                }
                builder6.f(new SkuSetItemInfo((ProductInfo) pairA3.first, (SkuInfo) pairA3.second, (com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.b) pair6.second));
            }
            builder5.f(Pair.create((String) pair5.first, builder6.i()));
        }
        return builder5.i();
    }

    public final String getGuid() {
        return this.f39952a;
    }

    public final List<SkuSetItemInfo> getItems() {
        return this.f39954c;
    }

    public final String getName() {
        return this.f39953b;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("SkuSetInfo");
        toStringHelper.b("guid", this.f39952a);
        toStringHelper.b("name", this.f39953b);
        return toStringHelper.toString();
    }
}
