package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import defpackage.md;
import defpackage.r81;
import defpackage.tr;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c4 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40061b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f40062c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Serializable f40063e;

    public /* synthetic */ c4(SkinCare3RecommendationHandler skinCare3RecommendationHandler, boolean z, Configuration.ImageSource imageSource, String str) {
        this.f40062c = z;
        this.d = imageSource;
        this.f40063e = str;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        SkinCare3RecommendationHandler.RecommendationResult.Results results;
        List<String> list;
        int i2 = this.f40061b;
        Serializable serializable = this.f40063e;
        boolean z = this.f40062c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                Configuration.ImageSource imageSource = (Configuration.ImageSource) obj2;
                String str = (String) serializable;
                String str2 = (String) obj;
                List<SkinCare3RecommendationHandler.EffectType> arrayList = new ArrayList();
                try {
                    Gson gson = GsonHelper.f39260a;
                    SkinCare3RecommendationHandler.RecommendationResult recommendationResult = (SkinCare3RecommendationHandler.RecommendationResult) gson.i(str2, SkinCare3RecommendationHandler.RecommendationResult.class);
                    if (recommendationResult == null) {
                        md.n(tr.g("Parsed result is null. json=", str2));
                        return null;
                    }
                    if ("fail".equals(recommendationResult.status) || !TextUtils.isEmpty(recommendationResult.errorMessage) || (results = recommendationResult.results) == null || results.products == null) {
                        md.k(tr.g("Can't get recommended products. json=", str2));
                        return null;
                    }
                    SkinCare3RecommendationHandler.RecommendationResult.Results.Attrs attrs = results.attrs;
                    if (attrs != null && !TextUtils.isEmpty(attrs.productOrders)) {
                        try {
                            arrayList = (List) gson.j(recommendationResult.results.attrs.productOrders, new SkinCare3RecommendationHandler.AnonymousClass3().f42556b);
                        } catch (Throwable th) {
                            throw new IllegalArgumentException("Can't parse recommended order products. json=" + recommendationResult.results.attrs.productOrders, th);
                        }
                        break;
                    }
                    List<SkinCare3RecommendationHandler.RecommendationResult.Results.Product> list2 = recommendationResult.results.products;
                    Log.g(3, "SkinCare3RecommendationHandler", "[convertToProducts] products.size()=" + list2.size());
                    ArrayList<SkinCareProduct> arrayListC = SkinCare3RecommendationHandler.c(z, imageSource, (List) Observable.fromIterable(list2).map(new y(26)).toList().c(), 1);
                    ArrayList arrayList2 = new ArrayList();
                    SkinCare3RecommendationHandler.RecommendationResult.Results results2 = recommendationResult.results;
                    if (results2.products == null) {
                        list = Collections.EMPTY_LIST;
                    } else {
                        ArrayList arrayList3 = new ArrayList();
                        Iterator<SkinCare3RecommendationHandler.RecommendationResult.Results.Product> it = results2.products.iterator();
                        while (it.hasNext()) {
                            arrayList3.add(String.valueOf(it.next().productId));
                        }
                        list = arrayList3;
                    }
                    if (arrayList.isEmpty()) {
                        arrayList2.addAll(arrayListC);
                    } else if (TextUtils.isEmpty(str)) {
                        for (String str3 : list) {
                            for (SkinCareProduct skinCareProduct : arrayListC) {
                                if (TextUtils.equals(skinCareProduct.getProductId(), str3)) {
                                    arrayList2.add(skinCareProduct);
                                }
                                break;
                            }
                        }
                    } else {
                        for (SkinCare3RecommendationHandler.EffectType effectType : arrayList) {
                            if (str.contains(effectType.srcType)) {
                                for (SkinCare3RecommendationHandler.EffectType.ProductOrder productOrder : effectType.productOrder) {
                                    for (SkinCareProduct skinCareProduct2 : arrayListC) {
                                        if (TextUtils.equals(skinCareProduct2.getProductId(), String.valueOf(productOrder.id))) {
                                            arrayList2.add(skinCareProduct2);
                                        }
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    JsonElement jsonElement = recommendationResult.extra_info;
                    return new SkinCareRecommendationResult(jsonElement != null ? jsonElement.toString() : null, arrayList2);
                } catch (Throwable th2) {
                    r81.j(tr.g("Can't parse recommended products. json=", str2), th2);
                    return null;
                }
            default:
                SkuHandler skuHandler = (SkuHandler) obj2;
                AtomicReference atomicReference = (AtomicReference) serializable;
                List<com.perfectcorp.perfectlib.ph.database.ymk.background.a> list3 = (List) obj;
                ProductMappingUtility.SkuToProductMapperInterface skuToProductMapper = z ? new ProductMappingUtility.SkuToProductMapper(SkuBeautyMode$FeatureType.BACKGROUND) : ProductMappingUtility.SkuToProductMapperInterface.f39807a;
                LinkedList linkedList = new LinkedList();
                for (com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar : list3) {
                    String strA = skuToProductMapper.a(aVar.guid);
                    if (strA.equals(EffectId.INVALID_ID)) {
                        atomicReference.set(SkuHandler.ListStatus.MAPPING_INCOMPLETE);
                    } else {
                        linkedList.add(new ProductInfo(strA, aVar, skuHandler.f39935b));
                    }
                }
                return ImmutableList.u(linkedList);
        }
    }

    public /* synthetic */ c4(SkuHandler skuHandler, boolean z, AtomicReference atomicReference) {
        this.d = skuHandler;
        this.f40062c = z;
        this.f40063e = atomicReference;
    }
}
