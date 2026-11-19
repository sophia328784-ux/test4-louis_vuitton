package com.vuitton.android.domain.usecase.dynamicyield;

import com.vuitton.android.domain.repository.DynamicYieldRepository;
import com.vuitton.android.domain.repository.ProductRepository;
import com.vuitton.android.domain.usecase.config.GetDynamicYieldCampaignUseCase;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYPageType;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYRecommendation;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYRecommendedProduct;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYRecommendedProductList;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYVariation;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;", "", "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "dynamicYieldRepository", "Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;", "getDynamicYieldCampaignUseCase", "Lcom/vuitton/android/domain/repository/ProductRepository;", "productRepository", "<init>", "(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;Lcom/vuitton/android/domain/repository/ProductRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetDYRecommendedProductsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DynamicYieldRepository f49929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetDynamicYieldCampaignUseCase f49930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProductRepository f49931c;

    @Inject
    public GetDYRecommendedProductsUseCase(DynamicYieldRepository dynamicYieldRepository, GetDynamicYieldCampaignUseCase getDynamicYieldCampaignUseCase, ProductRepository productRepository) {
        dynamicYieldRepository.getClass();
        getDynamicYieldCampaignUseCase.getClass();
        productRepository.getClass();
        this.f49929a = dynamicYieldRepository;
        this.f49930b = getDynamicYieldCampaignUseCase;
        this.f49931c = productRepository;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f3 A[Catch: all -> 0x014f, LOOP:0: B:42:0x00ed->B:44:0x00f3, LOOP_END, TryCatch #0 {all -> 0x014f, blocks: (B:13:0x002f, B:38:0x00d0, B:41:0x00e4, B:42:0x00ed, B:44:0x00f3, B:45:0x0105, B:46:0x0110, B:48:0x0116, B:50:0x012b, B:53:0x0136, B:54:0x013a, B:55:0x0141, B:18:0x0048, B:27:0x0076, B:29:0x0083, B:30:0x008e, B:31:0x009e, B:33:0x00a4, B:34:0x00b5, B:21:0x0053, B:23:0x005d, B:56:0x0147, B:57:0x014e), top: B:69:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0116 A[Catch: all -> 0x014f, TryCatch #0 {all -> 0x014f, blocks: (B:13:0x002f, B:38:0x00d0, B:41:0x00e4, B:42:0x00ed, B:44:0x00f3, B:45:0x0105, B:46:0x0110, B:48:0x0116, B:50:0x012b, B:53:0x0136, B:54:0x013a, B:55:0x0141, B:18:0x0048, B:27:0x0076, B:29:0x0083, B:30:0x008e, B:31:0x009e, B:33:0x00a4, B:34:0x00b5, B:21:0x0053, B:23:0x005d, B:56:0x0147, B:57:0x014e), top: B:69:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x012b A[Catch: all -> 0x014f, TryCatch #0 {all -> 0x014f, blocks: (B:13:0x002f, B:38:0x00d0, B:41:0x00e4, B:42:0x00ed, B:44:0x00f3, B:45:0x0105, B:46:0x0110, B:48:0x0116, B:50:0x012b, B:53:0x0136, B:54:0x013a, B:55:0x0141, B:18:0x0048, B:27:0x0076, B:29:0x0083, B:30:0x008e, B:31:0x009e, B:33:0x00a4, B:34:0x00b5, B:21:0x0053, B:23:0x005d, B:56:0x0147, B:57:0x014e), top: B:69:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0133  */
    /* JADX WARN: Code duplicated, block: B:63:0x015e  */
    /* JADX WARN: Code duplicated, block: B:65:0x0162  */
    /* JADX WARN: Code duplicated, block: B:68:0x0172  */
    /* JADX WARN: Code duplicated, block: B:71:0x0136 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x0110 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetDYRecommendedProductsUseCase$run$1 getDYRecommendedProductsUseCase$run$1;
        Object failure;
        Throwable thA;
        Object objF;
        int i2;
        int i3;
        int i4;
        DYVariation dYVariation;
        Object obj;
        List<DYRecommendation> list;
        DYRecommendedProductList dYRecommendedProductList;
        int iG;
        LinkedHashMap linkedHashMap;
        ArrayList arrayList;
        ProductTiny productTiny;
        DYRecommendedProduct dYRecommendedProduct;
        if (continuationImpl instanceof GetDYRecommendedProductsUseCase$run$1) {
            getDYRecommendedProductsUseCase$run$1 = (GetDYRecommendedProductsUseCase$run$1) continuationImpl;
            int i5 = getDYRecommendedProductsUseCase$run$1.f49937i;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                getDYRecommendedProductsUseCase$run$1.f49937i = i5 - Integer.MIN_VALUE;
            } else {
                getDYRecommendedProductsUseCase$run$1 = new GetDYRecommendedProductsUseCase$run$1(this, continuationImpl);
            }
        } else {
            getDYRecommendedProductsUseCase$run$1 = new GetDYRecommendedProductsUseCase$run$1(this, continuationImpl);
        }
        Object obj2 = getDYRecommendedProductsUseCase$run$1.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i6 = getDYRecommendedProductsUseCase$run$1.f49937i;
        try {
            if (i6 == 0) {
                ResultKt.b(obj2);
                Result.Companion companion = Result.INSTANCE;
                String strA = this.f49930b.a();
                if (strA == null) {
                    throw new IllegalStateException("No DY campaign available");
                }
                DynamicYieldRepository dynamicYieldRepository = this.f49929a;
                DYPageType.HOMEPAGE homepage = DYPageType.HOMEPAGE.f67558a;
                getDYRecommendedProductsUseCase$run$1.f49934e = null;
                getDYRecommendedProductsUseCase$run$1.f49932b = 0;
                getDYRecommendedProductsUseCase$run$1.f49933c = 0;
                getDYRecommendedProductsUseCase$run$1.d = 0;
                getDYRecommendedProductsUseCase$run$1.f49937i = 1;
                objF = dynamicYieldRepository.f(strA, homepage, getDYRecommendedProductsUseCase$run$1);
                if (objF != coroutineSingletons) {
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                }
                return coroutineSingletons;
            }
            if (i6 == 1) {
                i2 = getDYRecommendedProductsUseCase$run$1.d;
                i3 = getDYRecommendedProductsUseCase$run$1.f49933c;
                i4 = getDYRecommendedProductsUseCase$run$1.f49932b;
                ResultKt.b(obj2);
                objF = ((Result) obj2).f71708b;
            } else {
                if (i6 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                list = getDYRecommendedProductsUseCase$run$1.f49935f;
                dYVariation = getDYRecommendedProductsUseCase$run$1.f49934e;
                ResultKt.b(obj2);
                obj = ((Result) obj2).f71708b;
            }
            ResultKt.b(obj);
            List list2 = (List) obj;
            iG = MapsKt.g(CollectionsKt.t(list2, 10));
            if (iG < 16) {
                iG = 16;
            }
            linkedHashMap = new LinkedHashMap(iG);
            for (Object obj3 : list2) {
                linkedHashMap.put(new SkuId(((ProductTiny) obj3).d), obj3);
            }
            arrayList = new ArrayList();
            for (DYRecommendation dYRecommendation : list) {
                productTiny = (ProductTiny) linkedHashMap.get(new SkuId(dYRecommendation.f67560a));
                if (productTiny != null) {
                    dYRecommendedProduct = new DYRecommendedProduct(productTiny, dYRecommendation.f67561b);
                } else {
                    dYRecommendedProduct = null;
                }
                if (dYRecommendedProduct != null) {
                    arrayList.add(dYRecommendedProduct);
                }
            }
            dYRecommendedProductList = new DYRecommendedProductList(arrayList, dYVariation.f67567b);
            failure = new Result(dYRecommendedProductList);
            thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof CancellationException)) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
            ResultKt.b(objF);
            DYVariation dYVariation2 = (DYVariation) objF;
            List list3 = dYVariation2.f67566a;
            if (!list3.isEmpty()) {
                List list4 = list3;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
                Iterator it = list4.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new SkuId(((DYRecommendation) it.next()).f67560a));
                }
                ProductRepository productRepository = this.f49931c;
                getDYRecommendedProductsUseCase$run$1.f49934e = dYVariation2;
                getDYRecommendedProductsUseCase$run$1.f49935f = list3;
                getDYRecommendedProductsUseCase$run$1.f49932b = i4;
                getDYRecommendedProductsUseCase$run$1.f49933c = i3;
                getDYRecommendedProductsUseCase$run$1.d = i2;
                getDYRecommendedProductsUseCase$run$1.f49937i = 2;
                Object objG = productRepository.g(arrayList2, getDYRecommendedProductsUseCase$run$1);
                if (objG != coroutineSingletons) {
                    dYVariation = dYVariation2;
                    obj = objG;
                    list = list3;
                    ResultKt.b(obj);
                    List list5 = (List) obj;
                    iG = MapsKt.g(CollectionsKt.t(list5, 10));
                    if (iG < 16) {
                        iG = 16;
                    }
                    linkedHashMap = new LinkedHashMap(iG);
                    while (r14.hasNext()) {
                        linkedHashMap.put(new SkuId(((ProductTiny) obj3).d), obj3);
                    }
                    arrayList = new ArrayList();
                    while (r13.hasNext()) {
                        productTiny = (ProductTiny) linkedHashMap.get(new SkuId(dYRecommendation.f67560a));
                        if (productTiny != null) {
                            dYRecommendedProduct = new DYRecommendedProduct(productTiny, dYRecommendation.f67561b);
                        } else {
                            dYRecommendedProduct = null;
                        }
                        if (dYRecommendedProduct != null) {
                            arrayList.add(dYRecommendedProduct);
                        }
                    }
                    dYRecommendedProductList = new DYRecommendedProductList(arrayList, dYVariation.f67567b);
                }
                return coroutineSingletons;
            }
            dYRecommendedProductList = new DYRecommendedProductList(EmptyList.f71768b, dYVariation2.f67567b);
            failure = new Result(dYRecommendedProductList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        thA = Result.a(failure);
        if (thA != null) {
            if (!(thA instanceof CancellationException)) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
