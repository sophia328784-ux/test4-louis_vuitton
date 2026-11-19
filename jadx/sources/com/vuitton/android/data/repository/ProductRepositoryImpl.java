package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.catalog.ProductApi;
import com.vuitton.android.data.datasource.pdp.CustomizationLocalDataSource;
import com.vuitton.android.data.datasource.wishlist.WishlistLocalDataSource;
import com.vuitton.android.data.dto.product.vto.ShadeFinderRequestDto;
import com.vuitton.android.data.dto.product.vto.ShadeFinderResponseDto;
import com.vuitton.android.data.dto.product.vto.TryOnProductDto;
import com.vuitton.android.data.dto.product.vto.TryOnProductResponseDto;
import com.vuitton.android.data.dto.product.vto.mapper.ShadeFinderMapperKt;
import com.vuitton.android.data.dto.product.vto.mapper.TryOnProductMapperKt;
import com.vuitton.android.data.dto.productshort.mapper.ProductShortMapperKt;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto;
import com.vuitton.android.data.dto.producttiny.ProductTinyListDto;
import com.vuitton.android.data.dto.producttiny.mapper.ProductTinyMapperKt;
import com.vuitton.android.data.net.interceptor.AddSfidAndSlasTokenInterceptorKt;
import com.vuitton.android.domain.repository.ProductRepository;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import com.vuitton.foundation.model.domain.model.product.vto.BeautyProductType;
import com.vuitton.foundation.model.domain.model.product.vto.ShadeFinderRequest;
import com.vuitton.foundation.model.domain.model.producttiny.RelatedProductAlgorithm;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItem;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItemId;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/ProductRepositoryImpl;", "Lcom/vuitton/android/domain/repository/ProductRepository;", "Lcom/vuitton/android/data/api/bff/catalog/ProductApi;", "productApi", "Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;", "wishlistLocalDataSource", "Lcom/vuitton/android/data/datasource/pdp/CustomizationLocalDataSource;", "customizationLocalDataSource", "<init>", "(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;Lcom/vuitton/android/data/datasource/pdp/CustomizationLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProductRepositoryImpl implements ProductRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductApi f47904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WishlistLocalDataSource f47905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CustomizationLocalDataSource f47906c;
    public final Function1 d;

    @Inject
    public ProductRepositoryImpl(ProductApi productApi, WishlistLocalDataSource wishlistLocalDataSource, CustomizationLocalDataSource customizationLocalDataSource) {
        productApi.getClass();
        wishlistLocalDataSource.getClass();
        customizationLocalDataSource.getClass();
        this.f47904a = productApi;
        this.f47905b = wishlistLocalDataSource;
        this.f47906c = customizationLocalDataSource;
        this.d = new Function1<SkuId, WishlistItemId>() { // from class: com.vuitton.android.data.repository.ProductRepositoryImpl$getWishlistItemId$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) throws Throwable {
                String str = ((SkuId) obj).f67933a;
                str.getClass();
                Object objB = this.f47921b.f47905b.b(str);
                if (objB instanceof Result.Failure) {
                    objB = null;
                }
                WishlistItem wishlistItem = (WishlistItem) objB;
                String str2 = wishlistItem != null ? wishlistItem.f68284a : null;
                if (str2 != null) {
                    return new WishlistItemId(str2);
                }
                return null;
            }
        };
    }

    @Override // com.vuitton.android.domain.repository.ProductRepository
    public final Object a(String str) throws Throwable {
        Object failure;
        CustomizationLocalDataSource customizationLocalDataSource = this.f47906c;
        customizationLocalDataSource.getClass();
        str.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            MutableStateFlow mutableStateFlow = customizationLocalDataSource.f44222a;
            Iterable iterable = (Iterable) mutableStateFlow.getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj : iterable) {
                if (!Intrinsics.c(((SkuId) ((Pair) obj).f71705b).f67933a, str)) {
                    arrayList.add(obj);
                }
            }
            mutableStateFlow.setValue(arrayList);
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ProductRepository
    public final Object b(String str, RelatedProductAlgorithm relatedProductAlgorithm, ContinuationImpl continuationImpl) throws Throwable {
        ProductRepositoryImpl$getRelatedProducts$1 productRepositoryImpl$getRelatedProducts$1;
        Object failure;
        if (continuationImpl instanceof ProductRepositoryImpl$getRelatedProducts$1) {
            productRepositoryImpl$getRelatedProducts$1 = (ProductRepositoryImpl$getRelatedProducts$1) continuationImpl;
            int i2 = productRepositoryImpl$getRelatedProducts$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                productRepositoryImpl$getRelatedProducts$1.d = i2 - Integer.MIN_VALUE;
            } else {
                productRepositoryImpl$getRelatedProducts$1 = new ProductRepositoryImpl$getRelatedProducts$1(this, continuationImpl);
            }
        } else {
            productRepositoryImpl$getRelatedProducts$1 = new ProductRepositoryImpl$getRelatedProducts$1(this, continuationImpl);
        }
        Object relatedProducts = productRepositoryImpl$getRelatedProducts$1.f47913b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = productRepositoryImpl$getRelatedProducts$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(relatedProducts);
                Result.Companion companion = Result.INSTANCE;
                ProductApi productApi = this.f47904a;
                String value = relatedProductAlgorithm.getValue();
                productRepositoryImpl$getRelatedProducts$1.d = 1;
                relatedProducts = productApi.getRelatedProducts(str, value, productRepositoryImpl$getRelatedProducts$1);
                if (relatedProducts == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(relatedProducts);
            }
            List list = ((ProductTinyListDto) relatedProducts).f46671a;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ProductTinyMapperKt.a((ProductTinyDto) it.next()));
            }
            failure = new Result(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ProductRepository
    public final Object c(ShadeFinderRequest shadeFinderRequest, ContinuationImpl continuationImpl) throws Throwable {
        ProductRepositoryImpl$getShadeFinderRecommendations$1 productRepositoryImpl$getShadeFinderRecommendations$1;
        Object failure;
        if (continuationImpl instanceof ProductRepositoryImpl$getShadeFinderRecommendations$1) {
            productRepositoryImpl$getShadeFinderRecommendations$1 = (ProductRepositoryImpl$getShadeFinderRecommendations$1) continuationImpl;
            int i2 = productRepositoryImpl$getShadeFinderRecommendations$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                productRepositoryImpl$getShadeFinderRecommendations$1.d = i2 - Integer.MIN_VALUE;
            } else {
                productRepositoryImpl$getShadeFinderRecommendations$1 = new ProductRepositoryImpl$getShadeFinderRecommendations$1(this, continuationImpl);
            }
        } else {
            productRepositoryImpl$getShadeFinderRecommendations$1 = new ProductRepositoryImpl$getShadeFinderRecommendations$1(this, continuationImpl);
        }
        Object shadeFinderRecommendations = productRepositoryImpl$getShadeFinderRecommendations$1.f47915b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = productRepositoryImpl$getShadeFinderRecommendations$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(shadeFinderRecommendations);
                Result.Companion companion = Result.INSTANCE;
                ProductApi productApi = this.f47904a;
                ShadeFinderRequestDto shadeFinderRequestDtoB = ShadeFinderMapperKt.b(shadeFinderRequest);
                productRepositoryImpl$getShadeFinderRecommendations$1.d = 1;
                shadeFinderRecommendations = productApi.getShadeFinderRecommendations(shadeFinderRequestDtoB, productRepositoryImpl$getShadeFinderRecommendations$1);
                if (shadeFinderRecommendations == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(shadeFinderRecommendations);
            }
            failure = new Result(ShadeFinderMapperKt.a((ShadeFinderResponseDto) shadeFinderRecommendations));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    @Override // com.vuitton.android.domain.repository.ProductRepository
    public final CustomizationId d(String str) {
        Object next;
        CustomizationLocalDataSource customizationLocalDataSource = this.f47906c;
        customizationLocalDataSource.getClass();
        str.getClass();
        Iterator it = ((Iterable) customizationLocalDataSource.f44222a.getValue()).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((SkuId) ((Pair) next).f71705b).f67933a, str));
        Pair pair = (Pair) next;
        if (pair != null) {
            return (CustomizationId) pair.f71706c;
        }
        return null;
    }

    @Override // com.vuitton.android.domain.repository.ProductRepository
    public final Object e(String str, CustomizationId customizationId) throws Throwable {
        Object failure;
        CustomizationLocalDataSource customizationLocalDataSource = this.f47906c;
        customizationLocalDataSource.getClass();
        str.getClass();
        customizationId.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            MutableStateFlow mutableStateFlow = customizationLocalDataSource.f44222a;
            mutableStateFlow.setValue(CollectionsKt.X(new Pair(new SkuId(str), customizationId), (Collection) mutableStateFlow.getValue()));
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Override // com.vuitton.android.domain.repository.ProductRepository
    public final Object f(String str, String str2, AuthToken authToken, ContinuationImpl continuationImpl) throws Throwable {
        ProductRepositoryImpl$getYmalProductList$1 productRepositoryImpl$getYmalProductList$1;
        Object failure;
        if (continuationImpl instanceof ProductRepositoryImpl$getYmalProductList$1) {
            productRepositoryImpl$getYmalProductList$1 = (ProductRepositoryImpl$getYmalProductList$1) continuationImpl;
            int i2 = productRepositoryImpl$getYmalProductList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                productRepositoryImpl$getYmalProductList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                productRepositoryImpl$getYmalProductList$1 = new ProductRepositoryImpl$getYmalProductList$1(this, continuationImpl);
            }
        } else {
            productRepositoryImpl$getYmalProductList$1 = new ProductRepositoryImpl$getYmalProductList$1(this, continuationImpl);
        }
        ProductRepositoryImpl$getYmalProductList$1 productRepositoryImpl$getYmalProductList$2 = productRepositoryImpl$getYmalProductList$1;
        Object objM83getYmalProductsYQ596nM = productRepositoryImpl$getYmalProductList$2.f47922b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = productRepositoryImpl$getYmalProductList$2.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objM83getYmalProductsYQ596nM);
                Result.Companion companion = Result.INSTANCE;
                Pair pairA = AddSfidAndSlasTokenInterceptorKt.a(authToken);
                String str3 = (String) pairA.f71705b;
                String str4 = (String) pairA.f71706c;
                ProductApi productApi = this.f47904a;
                productRepositoryImpl$getYmalProductList$2.d = 1;
                objM83getYmalProductsYQ596nM = productApi.m83getYmalProductsYQ596nM(str, str3, str4, str2, productRepositoryImpl$getYmalProductList$2);
                if (objM83getYmalProductsYQ596nM == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objM83getYmalProductsYQ596nM);
            }
            List list = ((ProductTinyListDto) objM83getYmalProductsYQ596nM).f46671a;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ProductTinyMapperKt.a((ProductTinyDto) it.next()));
            }
            failure = new Result(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ProductRepository
    public final Object g(ArrayList arrayList, ContinuationImpl continuationImpl) throws Throwable {
        ProductRepositoryImpl$getProductsTiny$1 productRepositoryImpl$getProductsTiny$1;
        Object failure;
        if (continuationImpl instanceof ProductRepositoryImpl$getProductsTiny$1) {
            productRepositoryImpl$getProductsTiny$1 = (ProductRepositoryImpl$getProductsTiny$1) continuationImpl;
            int i2 = productRepositoryImpl$getProductsTiny$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                productRepositoryImpl$getProductsTiny$1.d = i2 - Integer.MIN_VALUE;
            } else {
                productRepositoryImpl$getProductsTiny$1 = new ProductRepositoryImpl$getProductsTiny$1(this, continuationImpl);
            }
        } else {
            productRepositoryImpl$getProductsTiny$1 = new ProductRepositoryImpl$getProductsTiny$1(this, continuationImpl);
        }
        Object productsTiny = productRepositoryImpl$getProductsTiny$1.f47911b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = productRepositoryImpl$getProductsTiny$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(productsTiny);
                Result.Companion companion = Result.INSTANCE;
                ProductApi productApi = this.f47904a;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((SkuId) it.next()).f67933a);
                }
                productRepositoryImpl$getProductsTiny$1.d = 1;
                productsTiny = productApi.getProductsTiny(arrayList2, productRepositoryImpl$getProductsTiny$1);
                if (productsTiny == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(productsTiny);
            }
            Iterable iterable = (Iterable) productsTiny;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                arrayList3.add(ProductTinyMapperKt.a((ProductTinyDto) it2.next()));
            }
            failure = new Result(arrayList3);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ProductRepository
    public final Object h(List list, ContinuationImpl continuationImpl) throws Throwable {
        ProductRepositoryImpl$getProductShortList$1 productRepositoryImpl$getProductShortList$1;
        Object failure;
        if (continuationImpl instanceof ProductRepositoryImpl$getProductShortList$1) {
            productRepositoryImpl$getProductShortList$1 = (ProductRepositoryImpl$getProductShortList$1) continuationImpl;
            int i2 = productRepositoryImpl$getProductShortList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                productRepositoryImpl$getProductShortList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                productRepositoryImpl$getProductShortList$1 = new ProductRepositoryImpl$getProductShortList$1(this, continuationImpl);
            }
        } else {
            productRepositoryImpl$getProductShortList$1 = new ProductRepositoryImpl$getProductShortList$1(this, continuationImpl);
        }
        Object products = productRepositoryImpl$getProductShortList$1.f47909b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = productRepositoryImpl$getProductShortList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(products);
                Result.Companion companion = Result.INSTANCE;
                ProductApi productApi = this.f47904a;
                List list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((SkuId) it.next()).f67933a);
                }
                productRepositoryImpl$getProductShortList$1.d = 1;
                products = productApi.getProducts(arrayList, productRepositoryImpl$getProductShortList$1);
                if (products == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(products);
            }
            failure = new Result(ProductShortMapperKt.b((List) products, this.d));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x006c A[Catch: all -> 0x0088, LOOP:0: B:31:0x0066->B:33:0x006c, LOOP_END, TryCatch #0 {all -> 0x0088, blocks: (B:13:0x0027, B:29:0x0051, B:30:0x0053, B:31:0x0066, B:33:0x006c, B:34:0x007a, B:17:0x0031, B:20:0x003a, B:24:0x0042, B:26:0x0048, B:35:0x0080, B:36:0x0087), top: B:48:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0098  */
    /* JADX WARN: Code duplicated, block: B:44:0x009c  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ProductRepository
    public final Object i(BeautyProductType beautyProductType, ContinuationImpl continuationImpl) throws Throwable {
        ProductRepositoryImpl$getTryOnProductList$1 productRepositoryImpl$getTryOnProductList$1;
        Object failure;
        Throwable thA;
        TryOnProductResponseDto tryOnProductResponseDto;
        ArrayList arrayList;
        Iterator it;
        if (continuationImpl instanceof ProductRepositoryImpl$getTryOnProductList$1) {
            productRepositoryImpl$getTryOnProductList$1 = (ProductRepositoryImpl$getTryOnProductList$1) continuationImpl;
            int i2 = productRepositoryImpl$getTryOnProductList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                productRepositoryImpl$getTryOnProductList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                productRepositoryImpl$getTryOnProductList$1 = new ProductRepositoryImpl$getTryOnProductList$1(this, continuationImpl);
            }
        } else {
            productRepositoryImpl$getTryOnProductList$1 = new ProductRepositoryImpl$getTryOnProductList$1(this, continuationImpl);
        }
        Object tryOnProductList = productRepositoryImpl$getTryOnProductList$1.f47917b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = productRepositoryImpl$getTryOnProductList$1.d;
        try {
            if (i3 != 0) {
                if (i3 == 1) {
                    ResultKt.b(tryOnProductList);
                    tryOnProductResponseDto = (TryOnProductResponseDto) tryOnProductList;
                } else {
                    if (i3 != 2) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(tryOnProductList);
                }
                List list = tryOnProductResponseDto.f46567a;
                arrayList = new ArrayList(CollectionsKt.t(list, 10));
                it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(TryOnProductMapperKt.b((TryOnProductDto) it.next()));
                }
                failure = new Result(arrayList);
                thA = Result.a(failure);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                return ((Result) failure).f71708b;
            }
            ResultKt.b(tryOnProductList);
            Result.Companion companion = Result.INSTANCE;
            if (beautyProductType == null) {
                throw new IllegalArgumentException("Either 'type' or 'skus' must be provided, not both or none.");
            }
            ProductApi productApi = this.f47904a;
            String value = beautyProductType != null ? beautyProductType.getValue() : null;
            productRepositoryImpl$getTryOnProductList$1.d = 2;
            tryOnProductList = productApi.getTryOnProductList(value, null, productRepositoryImpl$getTryOnProductList$1);
            if (tryOnProductList == coroutineSingletons) {
                return coroutineSingletons;
            }
            tryOnProductResponseDto = (TryOnProductResponseDto) tryOnProductList;
            List list2 = tryOnProductResponseDto.f46567a;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(TryOnProductMapperKt.b((TryOnProductDto) it.next()));
            }
            failure = new Result(arrayList);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ProductRepository
    public final Object j(String str, ContinuationImpl continuationImpl) throws Throwable {
        ProductRepositoryImpl$getHighlightedProductList$1 productRepositoryImpl$getHighlightedProductList$1;
        Object failure;
        if (continuationImpl instanceof ProductRepositoryImpl$getHighlightedProductList$1) {
            productRepositoryImpl$getHighlightedProductList$1 = (ProductRepositoryImpl$getHighlightedProductList$1) continuationImpl;
            int i2 = productRepositoryImpl$getHighlightedProductList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                productRepositoryImpl$getHighlightedProductList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                productRepositoryImpl$getHighlightedProductList$1 = new ProductRepositoryImpl$getHighlightedProductList$1(this, continuationImpl);
            }
        } else {
            productRepositoryImpl$getHighlightedProductList$1 = new ProductRepositoryImpl$getHighlightedProductList$1(this, continuationImpl);
        }
        Object objM79getHighlightedProductshd8RJmg = productRepositoryImpl$getHighlightedProductList$1.f47907b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = productRepositoryImpl$getHighlightedProductList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objM79getHighlightedProductshd8RJmg);
                Result.Companion companion = Result.INSTANCE;
                ProductApi productApi = this.f47904a;
                productRepositoryImpl$getHighlightedProductList$1.d = 1;
                objM79getHighlightedProductshd8RJmg = productApi.m79getHighlightedProductshd8RJmg(str, productRepositoryImpl$getHighlightedProductList$1);
                if (objM79getHighlightedProductshd8RJmg == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objM79getHighlightedProductshd8RJmg);
            }
            List list = ((ProductTinyListDto) objM79getHighlightedProductshd8RJmg).f46671a;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ProductTinyMapperKt.a((ProductTinyDto) it.next()));
            }
            failure = new Result(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0058, code lost:
    
        if (r8 == r1) goto L28;
     */
    @Override // com.vuitton.android.domain.repository.ProductRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(java.lang.String r6, java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.vuitton.android.data.repository.ProductRepositoryImpl$getTutorial$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.data.repository.ProductRepositoryImpl$getTutorial$1 r0 = (com.vuitton.android.data.repository.ProductRepositoryImpl$getTutorial$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.ProductRepositoryImpl$getTutorial$1 r0 = new com.vuitton.android.data.repository.ProductRepositoryImpl$getTutorial$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f47919b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L67
            goto L5b
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L31:
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L67
            goto L49
        L35:
            kotlin.ResultKt.b(r8)
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L67
            com.vuitton.android.data.api.bff.catalog.ProductApi r5 = r5.f47904a
            if (r7 != 0) goto L50
            com.vuitton.foundation.model.domain.model.product.SkuId$Companion r7 = com.vuitton.foundation.model.domain.model.product.SkuId.INSTANCE     // Catch: java.lang.Throwable -> L67
            r0.d = r4     // Catch: java.lang.Throwable -> L67
            java.lang.Object r8 = r5.getTutorial(r6, r0)     // Catch: java.lang.Throwable -> L67
            if (r8 != r1) goto L49
            goto L5a
        L49:
            com.vuitton.android.data.dto.product.vto.TutorialDto r8 = (com.vuitton.android.data.dto.product.vto.TutorialDto) r8     // Catch: java.lang.Throwable -> L67
            com.vuitton.foundation.model.domain.model.product.vto.Tutorial r5 = com.vuitton.android.data.dto.product.vto.mapper.TutorialMapperKt.a(r8)     // Catch: java.lang.Throwable -> L67
            goto L61
        L50:
            com.vuitton.foundation.model.domain.model.product.SkuId$Companion r8 = com.vuitton.foundation.model.domain.model.product.SkuId.INSTANCE     // Catch: java.lang.Throwable -> L67
            r0.d = r3     // Catch: java.lang.Throwable -> L67
            java.lang.Object r8 = r5.getLookTutorial(r6, r7, r0)     // Catch: java.lang.Throwable -> L67
            if (r8 != r1) goto L5b
        L5a:
            return r1
        L5b:
            com.vuitton.android.data.dto.product.vto.TutorialDto r8 = (com.vuitton.android.data.dto.product.vto.TutorialDto) r8     // Catch: java.lang.Throwable -> L67
            com.vuitton.foundation.model.domain.model.product.vto.Tutorial r5 = com.vuitton.android.data.dto.product.vto.mapper.TutorialMapperKt.a(r8)     // Catch: java.lang.Throwable -> L67
        L61:
            kotlin.Result r6 = new kotlin.Result     // Catch: java.lang.Throwable -> L67
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L67
            goto L6f
        L67:
            r5 = move-exception
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
        L6f:
            java.lang.Throwable r5 = kotlin.Result.a(r6)
            if (r5 != 0) goto L76
            goto L85
        L76:
            boolean r6 = r5 instanceof java.util.concurrent.CancellationException
            if (r6 != 0) goto L8a
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
            kotlin.Result r5 = new kotlin.Result
            r5.<init>(r6)
            r6 = r5
        L85:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.f71708b
            return r5
        L8a:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.ProductRepositoryImpl.k(java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
