package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.api.bff.catalog.CatalogApi;
import com.vuitton.android.data.api.bff.catalog.ExclusiveApi;
import com.vuitton.android.data.api.bff.catalog.ProductApi;
import com.vuitton.android.data.api.bff.publication.VideoApi;
import com.vuitton.android.data.datasource.catalog.CatalogLocalDataSource;
import com.vuitton.android.data.datasource.pdp.GetProductAvailabilitiesATGDataSource;
import com.vuitton.android.data.datasource.pdp.GetProductAvailabilitiesTwistDataSource;
import com.vuitton.android.data.datasource.pdp.GetProductDataSource;
import com.vuitton.android.data.datasource.wishlist.WishlistLocalDataSource;
import com.vuitton.android.data.dto.catalog.CatalogDto;
import com.vuitton.android.data.dto.catalog.mapper.CatalogMapperKt;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import com.vuitton.android.data.dto.pdp.ProductAGECDto;
import com.vuitton.android.data.dto.pdp.ProductDto;
import com.vuitton.android.data.dto.pdp.mapper.ProductAGECMapperKt;
import com.vuitton.android.data.dto.pdp.mapper.ProductMapperKt;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceResultDto;
import com.vuitton.android.data.dto.product.reinsurance.error.ErrorResponseDto;
import com.vuitton.android.data.dto.product.reinsurance.mapper.ReinsuranceErrorMapperKt;
import com.vuitton.android.data.dto.product.reinsurance.mapper.ReinsuranceSectionMapperKt;
import com.vuitton.android.data.dto.productshort.mapper.ProductShortMapperKt;
import com.vuitton.android.data.net.atg.ATGSessionManager;
import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.catalog.Catalog;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.product.ProductVideo;
import com.vuitton.foundation.model.domain.model.product.ReinsuranceErrorException;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import com.vuitton.foundation.model.domain.model.product.universal.Product;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItem;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItemId;
import defpackage.md;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.serialization.json.Json;
import okhttp3.ResponseBody;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u001eBq\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;", "getProductDataSource", "Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;", "getProductAvailabilitiesATGDataSource", "Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;", "getProductAvailabilitiesTwistDataSource", "Lcom/vuitton/android/data/api/bff/publication/VideoApi;", "videoApi", "Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;", "catalogApi", "Lcom/vuitton/android/data/api/bff/catalog/ProductApi;", "productApi", "Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;", "exclusiveApi", "Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;", "catalogLocalDataSource", "Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;", "wishlistLocalDataSource", "Lcom/vuitton/android/data/net/atg/ATGSessionManager;", "atgSessionManager", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatchers", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;Lcom/vuitton/android/data/api/bff/publication/VideoApi;Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;Lcom/vuitton/android/data/net/atg/ATGSessionManager;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CatalogRepositoryImpl implements CatalogRepository {
    public static final /* synthetic */ int p = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetProductDataSource f47500b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetProductAvailabilitiesATGDataSource f47501c;
    public final GetProductAvailabilitiesTwistDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final VideoApi f47502e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CatalogApi f47503f;
    public final ProductApi g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ExclusiveApi f47504h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CatalogLocalDataSource f47505i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final WishlistLocalDataSource f47506j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ATGSessionManager f47507k;
    public final Json l;
    public final ContextScope m;
    public Deferred n;
    public final Function1 o;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public CatalogRepositoryImpl(Logger logger, GetProductDataSource getProductDataSource, GetProductAvailabilitiesATGDataSource getProductAvailabilitiesATGDataSource, GetProductAvailabilitiesTwistDataSource getProductAvailabilitiesTwistDataSource, VideoApi videoApi, CatalogApi catalogApi, ProductApi productApi, ExclusiveApi exclusiveApi, CatalogLocalDataSource catalogLocalDataSource, WishlistLocalDataSource wishlistLocalDataSource, ATGSessionManager aTGSessionManager, Json json, CoroutineDispatchers coroutineDispatchers) {
        logger.getClass();
        getProductDataSource.getClass();
        getProductAvailabilitiesATGDataSource.getClass();
        getProductAvailabilitiesTwistDataSource.getClass();
        videoApi.getClass();
        catalogApi.getClass();
        productApi.getClass();
        exclusiveApi.getClass();
        catalogLocalDataSource.getClass();
        wishlistLocalDataSource.getClass();
        aTGSessionManager.getClass();
        json.getClass();
        coroutineDispatchers.getClass();
        this.f47499a = logger;
        this.f47500b = getProductDataSource;
        this.f47501c = getProductAvailabilitiesATGDataSource;
        this.d = getProductAvailabilitiesTwistDataSource;
        this.f47502e = videoApi;
        this.f47503f = catalogApi;
        this.g = productApi;
        this.f47504h = exclusiveApi;
        this.f47505i = catalogLocalDataSource;
        this.f47506j = wishlistLocalDataSource;
        this.f47507k = aTGSessionManager;
        this.l = json;
        this.m = CoroutineScopeKt.a(coroutineDispatchers.getF43530b());
        this.o = new Function1<SkuId, WishlistItemId>() { // from class: com.vuitton.android.data.repository.CatalogRepositoryImpl$getWishlistItemId$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) throws Throwable {
                String str = ((SkuId) obj).f67933a;
                str.getClass();
                Object objB = this.f47576b.f47506j.b(str);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object o(CatalogRepositoryImpl catalogRepositoryImpl, ContinuationImpl continuationImpl) throws Throwable {
        CatalogRepositoryImpl$getAndCacheCatalog$1 catalogRepositoryImpl$getAndCacheCatalog$1;
        Object failure;
        catalogRepositoryImpl.getClass();
        if (continuationImpl instanceof CatalogRepositoryImpl$getAndCacheCatalog$1) {
            catalogRepositoryImpl$getAndCacheCatalog$1 = (CatalogRepositoryImpl$getAndCacheCatalog$1) continuationImpl;
            int i2 = catalogRepositoryImpl$getAndCacheCatalog$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getAndCacheCatalog$1.d = i2 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getAndCacheCatalog$1 = new CatalogRepositoryImpl$getAndCacheCatalog$1(catalogRepositoryImpl, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getAndCacheCatalog$1 = new CatalogRepositoryImpl$getAndCacheCatalog$1(catalogRepositoryImpl, continuationImpl);
        }
        Object catalog = catalogRepositoryImpl$getAndCacheCatalog$1.f47508b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = catalogRepositoryImpl$getAndCacheCatalog$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(catalog);
                Result.Companion companion = Result.INSTANCE;
                CatalogApi catalogApi = catalogRepositoryImpl.f47503f;
                catalogRepositoryImpl$getAndCacheCatalog$1.d = 1;
                catalog = catalogApi.getCatalog(null, catalogRepositoryImpl$getAndCacheCatalog$1);
                if (catalog == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(catalog);
            }
            failure = new Result(CatalogMapperKt.a((CatalogDto) catalog));
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
        Object obj = ((Result) failure).f71708b;
        if (!(obj instanceof Result.Failure)) {
            Catalog catalog2 = (Catalog) obj;
            CatalogLocalDataSource catalogLocalDataSource = catalogRepositoryImpl.f47505i;
            catalogLocalDataSource.getClass();
            catalog2.getClass();
            catalogLocalDataSource.f43954a = catalog2;
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        if (r7 == r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0067, code lost:
    
        if (r7 == r1) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object p(com.vuitton.android.data.repository.CatalogRepositoryImpl r6, kotlin.coroutines.Continuation r7) {
        /*
            r6.getClass()
            boolean r0 = r7 instanceof com.vuitton.android.data.repository.CatalogRepositoryImpl$getOrAwaitCatalogResult$1
            if (r0 == 0) goto L16
            r0 = r7
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getOrAwaitCatalogResult$1 r0 = (com.vuitton.android.data.repository.CatalogRepositoryImpl$getOrAwaitCatalogResult$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getOrAwaitCatalogResult$1 r0 = new com.vuitton.android.data.repository.CatalogRepositoryImpl$getOrAwaitCatalogResult$1
            r0.<init>(r6, r7)
        L1b:
            java.lang.Object r7 = r0.f47518b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2e
            kotlin.ResultKt.b(r7)
            goto L6a
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r5
        L34:
            kotlin.ResultKt.b(r7)
            goto L4e
        L38:
            kotlin.ResultKt.b(r7)
            kotlinx.coroutines.Deferred r7 = r6.n
            if (r7 == 0) goto L53
            boolean r2 = r7.isActive()
            if (r2 == 0) goto L53
            r0.d = r4
            java.lang.Object r7 = r7.k(r0)
            if (r7 != r1) goto L4e
            goto L69
        L4e:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            return r6
        L53:
            kotlinx.coroutines.internal.ContextScope r7 = r6.m
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getOrAwaitCatalogResult$2 r2 = new com.vuitton.android.data.repository.CatalogRepositoryImpl$getOrAwaitCatalogResult$2
            r2.<init>(r6, r5)
            r4 = 3
            kotlinx.coroutines.Deferred r7 = kotlinx.coroutines.BuildersKt.a(r7, r5, r2, r4)
            r6.n = r7
            r0.d = r3
            java.lang.Object r7 = r7.k(r0)
            if (r7 != r1) goto L6a
        L69:
            return r1
        L6a:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CatalogRepositoryImpl.p(com.vuitton.android.data.repository.CatalogRepositoryImpl, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
    
        if (r6 == r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0058, code lost:
    
        if (r10 == r1) goto L24;
     */
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r7, java.util.List r8, boolean r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r10 instanceof com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductAvailabilities$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductAvailabilities$1 r0 = (com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductAvailabilities$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductAvailabilities$1 r0 = new com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductAvailabilities$1
            r0.<init>(r6, r10)
        L18:
            java.lang.Object r10 = r0.f47550b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L39
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2b
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L63
            goto L5b
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r5
        L31:
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r6 = r10.f71708b
            goto L86
        L39:
            kotlin.ResultKt.b(r10)
            if (r9 == 0) goto L49
            r0.d = r4
            com.vuitton.android.data.datasource.pdp.GetProductAvailabilitiesTwistDataSource r6 = r6.d
            java.lang.Object r6 = r6.a(r8, r0)
            if (r6 != r1) goto L86
            goto L5a
        L49:
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L63
            com.vuitton.android.data.net.atg.ATGSessionManager r8 = r6.f47507k     // Catch: java.lang.Throwable -> L63
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1 r9 = new com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1     // Catch: java.lang.Throwable -> L63
            r9.<init>(r6, r7, r5)     // Catch: java.lang.Throwable -> L63
            r0.d = r3     // Catch: java.lang.Throwable -> L63
            java.lang.Object r10 = r8.b(r9, r0)     // Catch: java.lang.Throwable -> L63
            if (r10 != r1) goto L5b
        L5a:
            return r1
        L5b:
            com.vuitton.android.data.dto.product.stock.shared.ProductStockDto r10 = (com.vuitton.android.data.dto.product.stock.shared.ProductStockDto) r10     // Catch: java.lang.Throwable -> L63
            kotlin.Result r6 = new kotlin.Result     // Catch: java.lang.Throwable -> L63
            r6.<init>(r10)     // Catch: java.lang.Throwable -> L63
            goto L6c
        L63:
            r6 = move-exception
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r6)
            r6 = r7
        L6c:
            java.lang.Throwable r7 = kotlin.Result.a(r6)
            if (r7 != 0) goto L73
            goto L82
        L73:
            boolean r6 = r7 instanceof java.util.concurrent.CancellationException
            if (r6 != 0) goto L9d
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r7)
            kotlin.Result r7 = new kotlin.Result
            r7.<init>(r6)
            r6 = r7
        L82:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.f71708b
        L86:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L9c
            com.vuitton.android.data.dto.product.stock.shared.ProductStockDto r6 = (com.vuitton.android.data.dto.product.stock.shared.ProductStockDto) r6     // Catch: java.lang.Throwable -> L93
            com.vuitton.foundation.model.domain.model.product.availability.ProductStock r6 = com.vuitton.android.data.dto.product.stock.shared.mapper.SkuAvailabilityMapperKt.a(r6)     // Catch: java.lang.Throwable -> L93
            goto L9c
        L93:
            r6 = move-exception
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r6)
            r6 = r7
        L9c:
            return r6
        L9d:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CatalogRepositoryImpl.a(java.lang.String, java.util.List, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final Object b(String str, boolean z, CustomizationId customizationId, String str2, String str3, boolean z2, ContinuationImpl continuationImpl) {
        CatalogRepositoryImpl$getProduct$1 catalogRepositoryImpl$getProduct$1;
        boolean z3;
        Object obj;
        boolean z4;
        ProductDto productDto;
        ProductDto productDto2;
        int i2;
        boolean z5;
        boolean z6;
        List list;
        int i3;
        Object objR;
        List list2;
        if (continuationImpl instanceof CatalogRepositoryImpl$getProduct$1) {
            catalogRepositoryImpl$getProduct$1 = (CatalogRepositoryImpl$getProduct$1) continuationImpl;
            int i4 = catalogRepositoryImpl$getProduct$1.f47549j;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getProduct$1.f47549j = i4 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getProduct$1 = new CatalogRepositoryImpl$getProduct$1(this, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getProduct$1 = new CatalogRepositoryImpl$getProduct$1(this, continuationImpl);
        }
        CatalogRepositoryImpl$getProduct$1 catalogRepositoryImpl$getProduct$2 = catalogRepositoryImpl$getProduct$1;
        Object obj2 = catalogRepositoryImpl$getProduct$2.f47547h;
        Object obj3 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = catalogRepositoryImpl$getProduct$2.f47549j;
        try {
            if (i5 == 0) {
                ResultKt.b(obj2);
                catalogRepositoryImpl$getProduct$2.f47543b = str;
                catalogRepositoryImpl$getProduct$2.f47545e = z;
                z3 = z2;
                catalogRepositoryImpl$getProduct$2.f47546f = z3;
                catalogRepositoryImpl$getProduct$2.f47549j = 1;
                Object objA = this.f47500b.a(str, z, str2, str3, customizationId, catalogRepositoryImpl$getProduct$2);
                if (objA != obj3) {
                    obj = objA;
                    z4 = z;
                }
                return obj3;
            }
            if (i5 == 1) {
                boolean z7 = catalogRepositoryImpl$getProduct$2.f47546f;
                z4 = catalogRepositoryImpl$getProduct$2.f47545e;
                String str4 = catalogRepositoryImpl$getProduct$2.f47543b;
                ResultKt.b(obj2);
                Object obj4 = ((Result) obj2).f71708b;
                z3 = z7;
                str = str4;
                obj = obj4;
            } else {
                if (i5 == 2) {
                    i3 = catalogRepositoryImpl$getProduct$2.g;
                    z6 = catalogRepositoryImpl$getProduct$2.f47546f;
                    z5 = catalogRepositoryImpl$getProduct$2.f47545e;
                    productDto = catalogRepositoryImpl$getProduct$2.f47544c;
                    ResultKt.b(obj2);
                    list = (List) obj2;
                    ProductDto productDto3 = productDto;
                    i2 = i3;
                    productDto2 = productDto3;
                    List list3 = productDto2.A;
                    catalogRepositoryImpl$getProduct$2.f47543b = null;
                    catalogRepositoryImpl$getProduct$2.f47544c = productDto2;
                    catalogRepositoryImpl$getProduct$2.d = list;
                    catalogRepositoryImpl$getProduct$2.f47545e = z5;
                    catalogRepositoryImpl$getProduct$2.f47546f = z6;
                    catalogRepositoryImpl$getProduct$2.g = i2;
                    catalogRepositoryImpl$getProduct$2.f47549j = 3;
                    objR = r(list3, catalogRepositoryImpl$getProduct$2);
                    if (objR != obj3) {
                        List list4 = list;
                        obj2 = objR;
                        list2 = list4;
                    }
                    return obj3;
                }
                if (i5 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                list2 = catalogRepositoryImpl$getProduct$2.d;
                productDto2 = catalogRepositoryImpl$getProduct$2.f47544c;
                ResultKt.b(obj2);
            }
            Product productA = ProductMapperKt.a(productDto2, (List) obj2, list2);
            Result.Companion companion = Result.INSTANCE;
            return productA;
            Result.Companion companion2 = Result.INSTANCE;
            if (obj instanceof Result.Failure) {
                return obj;
            }
            productDto = (ProductDto) obj;
            if (z3) {
                catalogRepositoryImpl$getProduct$2.f47543b = null;
                catalogRepositoryImpl$getProduct$2.f47544c = productDto;
                catalogRepositoryImpl$getProduct$2.f47545e = z4;
                catalogRepositoryImpl$getProduct$2.f47546f = z3;
                catalogRepositoryImpl$getProduct$2.g = 0;
                catalogRepositoryImpl$getProduct$2.f47549j = 2;
                Object objQ = q(str, catalogRepositoryImpl$getProduct$2);
                if (objQ != obj3) {
                    boolean z8 = z3;
                    obj2 = objQ;
                    i3 = 0;
                    z5 = z4;
                    z6 = z8;
                    list = (List) obj2;
                    ProductDto productDto4 = productDto;
                    i2 = i3;
                    productDto2 = productDto4;
                    List list5 = productDto2.A;
                    catalogRepositoryImpl$getProduct$2.f47543b = null;
                    catalogRepositoryImpl$getProduct$2.f47544c = productDto2;
                    catalogRepositoryImpl$getProduct$2.d = list;
                    catalogRepositoryImpl$getProduct$2.f47545e = z5;
                    catalogRepositoryImpl$getProduct$2.f47546f = z6;
                    catalogRepositoryImpl$getProduct$2.g = i2;
                    catalogRepositoryImpl$getProduct$2.f47549j = 3;
                    objR = r(list5, catalogRepositoryImpl$getProduct$2);
                    if (objR != obj3) {
                        List list6 = list;
                        obj2 = objR;
                        list2 = list6;
                        Product productA2 = ProductMapperKt.a(productDto2, (List) obj2, list2);
                        Result.Companion companion3 = Result.INSTANCE;
                        return productA2;
                    }
                }
            } else {
                productDto2 = productDto;
                i2 = 0;
                z5 = z4;
                z6 = z3;
                list = null;
                List list7 = productDto2.A;
                catalogRepositoryImpl$getProduct$2.f47543b = null;
                catalogRepositoryImpl$getProduct$2.f47544c = productDto2;
                catalogRepositoryImpl$getProduct$2.d = list;
                catalogRepositoryImpl$getProduct$2.f47545e = z5;
                catalogRepositoryImpl$getProduct$2.f47546f = z6;
                catalogRepositoryImpl$getProduct$2.g = i2;
                catalogRepositoryImpl$getProduct$2.f47549j = 3;
                objR = r(list7, catalogRepositoryImpl$getProduct$2);
                if (objR != obj3) {
                    List list8 = list;
                    obj2 = objR;
                    list2 = list8;
                    Product productA3 = ProductMapperKt.a(productDto2, (List) obj2, list2);
                    Result.Companion companion4 = Result.INSTANCE;
                    return productA3;
                }
            }
            return obj3;
        } catch (Throwable th) {
            Result.Companion companion5 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0056, code lost:
    
        if (r8 == r1) goto L29;
     */
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(java.lang.String r6, java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.vuitton.android.data.repository.CatalogRepositoryImpl$getSizeGuide$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getSizeGuide$1 r0 = (com.vuitton.android.data.repository.CatalogRepositoryImpl$getSizeGuide$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getSizeGuide$1 r0 = new com.vuitton.android.data.repository.CatalogRepositoryImpl$getSizeGuide$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f47565b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L6d
            goto L59
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L31:
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L6d
            goto L47
        L35:
            kotlin.ResultKt.b(r8)
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L6d
            com.vuitton.android.data.api.bff.catalog.ProductApi r5 = r5.g
            if (r7 == 0) goto L4e
            r0.d = r4     // Catch: java.lang.Throwable -> L6d
            java.lang.Object r8 = r5.getSizeGuideById(r7, r0)     // Catch: java.lang.Throwable -> L6d
            if (r8 != r1) goto L47
            goto L58
        L47:
            com.vuitton.android.data.dto.product.sizeguide.SizeGuideDto r8 = (com.vuitton.android.data.dto.product.sizeguide.SizeGuideDto) r8     // Catch: java.lang.Throwable -> L6d
            com.vuitton.foundation.model.domain.model.sizeguide.SizeGuide r5 = com.vuitton.android.data.dto.product.sizeguide.mapper.SizeGuideMapperKt.a(r8)     // Catch: java.lang.Throwable -> L6d
            goto L5f
        L4e:
            if (r6 == 0) goto L65
            r0.d = r3     // Catch: java.lang.Throwable -> L6d
            java.lang.Object r8 = r5.m82getSizeGuideClitKSM(r6, r0)     // Catch: java.lang.Throwable -> L6d
            if (r8 != r1) goto L59
        L58:
            return r1
        L59:
            com.vuitton.android.data.dto.product.sizeguide.SizeGuideDto r8 = (com.vuitton.android.data.dto.product.sizeguide.SizeGuideDto) r8     // Catch: java.lang.Throwable -> L6d
            com.vuitton.foundation.model.domain.model.sizeguide.SizeGuide r5 = com.vuitton.android.data.dto.product.sizeguide.mapper.SizeGuideMapperKt.a(r8)     // Catch: java.lang.Throwable -> L6d
        L5f:
            kotlin.Result r6 = new kotlin.Result     // Catch: java.lang.Throwable -> L6d
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L6d
            goto L75
        L65:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L6d
            java.lang.String r6 = "Either productId or sizeGuideId must be provided"
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L6d
            throw r5     // Catch: java.lang.Throwable -> L6d
        L6d:
            r5 = move-exception
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
        L75:
            java.lang.Throwable r5 = kotlin.Result.a(r6)
            if (r5 != 0) goto L7c
            goto L8b
        L7c:
            boolean r6 = r5 instanceof java.util.concurrent.CancellationException
            if (r6 != 0) goto L90
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
            kotlin.Result r5 = new kotlin.Result
            r5.<init>(r6)
            r6 = r5
        L8b:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.f71708b
            return r5
        L90:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CatalogRepositoryImpl.c(java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final Unit d() {
        this.f47505i.f43954a = null;
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0079 A[Catch: all -> 0x0096, TryCatch #0 {all -> 0x0096, blocks: (B:12:0x0029, B:33:0x008a, B:34:0x0090, B:17:0x003c, B:27:0x006a, B:30:0x0079, B:20:0x0047, B:23:0x004e), top: B:47:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0087, code lost:
    
        if (r11 == r1) goto L32;
     */
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(java.lang.String r8, java.lang.String r9, java.lang.Integer r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r11 instanceof com.vuitton.android.data.repository.CatalogRepositoryImpl$getThematicPlpThemes$1
            if (r0 == 0) goto L13
            r0 = r11
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getThematicPlpThemes$1 r0 = (com.vuitton.android.data.repository.CatalogRepositoryImpl$getThematicPlpThemes$1) r0
            int r1 = r0.f47573h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47573h = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getThematicPlpThemes$1 r0 = new com.vuitton.android.data.repository.CatalogRepositoryImpl$getThematicPlpThemes$1
            r0.<init>(r7, r11)
        L18:
            java.lang.Object r11 = r0.f47572f
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47573h
            com.vuitton.android.data.api.bff.catalog.CatalogApi r7 = r7.f47503f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L44
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2e
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L96
            goto L8a
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r5
        L34:
            int r8 = r0.f47571e
            int r9 = r0.d
            int r10 = r0.f47570c
            java.lang.String r2 = r0.f47569b
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L96
            r6 = r11
            r11 = r8
            r8 = r2
            r2 = r6
            goto L6a
        L44:
            kotlin.ResultKt.b(r11)
            kotlin.Result$Companion r11 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L96
            r11 = 0
            if (r9 == 0) goto L74
            if (r10 == 0) goto L74
            int r10 = r10.intValue()     // Catch: java.lang.Throwable -> L96
            java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L96
            r0.f47569b = r8     // Catch: java.lang.Throwable -> L96
            r0.f47570c = r11     // Catch: java.lang.Throwable -> L96
            r0.d = r11     // Catch: java.lang.Throwable -> L96
            r0.f47571e = r11     // Catch: java.lang.Throwable -> L96
            r0.f47573h = r4     // Catch: java.lang.Throwable -> L96
            java.lang.Object r9 = r7.getThemes(r8, r9, r10, r0)     // Catch: java.lang.Throwable -> L96
            if (r9 != r1) goto L67
            goto L89
        L67:
            r2 = r9
            r9 = r11
            r10 = r9
        L6a:
            com.vuitton.android.data.dto.catalog.thematicplp.ThematicPlpThemesDto r2 = (com.vuitton.android.data.dto.catalog.thematicplp.ThematicPlpThemesDto) r2     // Catch: java.lang.Throwable -> L96
            com.vuitton.foundation.model.domain.model.catalog.thematicplp.ThematicPlpThemes r2 = com.vuitton.android.data.dto.catalog.thematicplp.mapper.ThematicPlpThemesMapperKt.a(r2)     // Catch: java.lang.Throwable -> L96
            r6 = r11
            r11 = r10
            r10 = r6
            goto L77
        L74:
            r9 = r11
            r10 = r9
            r2 = r5
        L77:
            if (r2 != 0) goto L90
            r0.f47569b = r5     // Catch: java.lang.Throwable -> L96
            r0.f47570c = r11     // Catch: java.lang.Throwable -> L96
            r0.d = r9     // Catch: java.lang.Throwable -> L96
            r0.f47571e = r10     // Catch: java.lang.Throwable -> L96
            r0.f47573h = r3     // Catch: java.lang.Throwable -> L96
            java.lang.Object r11 = r7.getThemes(r8, r0)     // Catch: java.lang.Throwable -> L96
            if (r11 != r1) goto L8a
        L89:
            return r1
        L8a:
            com.vuitton.android.data.dto.catalog.thematicplp.ThematicPlpThemesDto r11 = (com.vuitton.android.data.dto.catalog.thematicplp.ThematicPlpThemesDto) r11     // Catch: java.lang.Throwable -> L96
            com.vuitton.foundation.model.domain.model.catalog.thematicplp.ThematicPlpThemes r2 = com.vuitton.android.data.dto.catalog.thematicplp.mapper.ThematicPlpThemesMapperKt.a(r11)     // Catch: java.lang.Throwable -> L96
        L90:
            kotlin.Result r7 = new kotlin.Result     // Catch: java.lang.Throwable -> L96
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L96
            goto L9f
        L96:
            r7 = move-exception
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r8 = new kotlin.Result$Failure
            r8.<init>(r7)
            r7 = r8
        L9f:
            java.lang.Throwable r8 = kotlin.Result.a(r7)
            if (r8 != 0) goto La6
            goto Lb5
        La6:
            boolean r7 = r8 instanceof java.util.concurrent.CancellationException
            if (r7 != 0) goto Lba
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r8)
            kotlin.Result r8 = new kotlin.Result
            r8.<init>(r7)
            r7 = r8
        Lb5:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r7 = r7.f71708b
            return r7
        Lba:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CatalogRepositoryImpl.e(java.lang.String, java.lang.String, java.lang.Integer, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final Object f(String str, int i2, String str2, boolean z, ContinuationImpl continuationImpl) throws Throwable {
        CatalogRepositoryImpl$getExclusivePLP$1 catalogRepositoryImpl$getExclusivePLP$1;
        Object failure;
        if (continuationImpl instanceof CatalogRepositoryImpl$getExclusivePLP$1) {
            catalogRepositoryImpl$getExclusivePLP$1 = (CatalogRepositoryImpl$getExclusivePLP$1) continuationImpl;
            int i3 = catalogRepositoryImpl$getExclusivePLP$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getExclusivePLP$1.d = i3 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getExclusivePLP$1 = new CatalogRepositoryImpl$getExclusivePLP$1(this, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getExclusivePLP$1 = new CatalogRepositoryImpl$getExclusivePLP$1(this, continuationImpl);
        }
        Object objF = catalogRepositoryImpl$getExclusivePLP$1.f47512b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = catalogRepositoryImpl$getExclusivePLP$1.d;
        try {
            if (i4 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                CatalogRepositoryImpl$getExclusivePLP$2$1 catalogRepositoryImpl$getExclusivePLP$2$1 = new CatalogRepositoryImpl$getExclusivePLP$2$1(this, str, i2, str2, z, null);
                catalogRepositoryImpl$getExclusivePLP$1.d = 1;
                objF = BuildersKt.f(defaultIoScheduler, catalogRepositoryImpl$getExclusivePLP$2$1, catalogRepositoryImpl$getExclusivePLP$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i4 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objF);
            }
            failure = new Result((PlpPagination) objF);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final Object g(String str, String str2, int i2, String str3, boolean z, ContinuationImpl continuationImpl) throws Throwable {
        CatalogRepositoryImpl$getPlp$1 catalogRepositoryImpl$getPlp$1;
        Object failure;
        if (continuationImpl instanceof CatalogRepositoryImpl$getPlp$1) {
            catalogRepositoryImpl$getPlp$1 = (CatalogRepositoryImpl$getPlp$1) continuationImpl;
            int i3 = catalogRepositoryImpl$getPlp$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getPlp$1.d = i3 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getPlp$1 = new CatalogRepositoryImpl$getPlp$1(this, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getPlp$1 = new CatalogRepositoryImpl$getPlp$1(this, continuationImpl);
        }
        Object objF = catalogRepositoryImpl$getPlp$1.f47535b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = catalogRepositoryImpl$getPlp$1.d;
        try {
            if (i4 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                CatalogRepositoryImpl$getPlp$2$1 catalogRepositoryImpl$getPlp$2$1 = new CatalogRepositoryImpl$getPlp$2$1(this, str, i2, str3, str2, z, null);
                catalogRepositoryImpl$getPlp$1.d = 1;
                objF = BuildersKt.f(defaultIoScheduler, catalogRepositoryImpl$getPlp$2$1, catalogRepositoryImpl$getPlp$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i4 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objF);
            }
            failure = new Result((PlpPagination) objF);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final Object h(String str, String str2, int i2, String str3, boolean z, ContinuationImpl continuationImpl) throws Throwable {
        CatalogRepositoryImpl$getPLPLegacy$1 catalogRepositoryImpl$getPLPLegacy$1;
        Object failure;
        if (continuationImpl instanceof CatalogRepositoryImpl$getPLPLegacy$1) {
            catalogRepositoryImpl$getPLPLegacy$1 = (CatalogRepositoryImpl$getPLPLegacy$1) continuationImpl;
            int i3 = catalogRepositoryImpl$getPLPLegacy$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getPLPLegacy$1.d = i3 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getPLPLegacy$1 = new CatalogRepositoryImpl$getPLPLegacy$1(this, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getPLPLegacy$1 = new CatalogRepositoryImpl$getPLPLegacy$1(this, continuationImpl);
        }
        Object objF = catalogRepositoryImpl$getPLPLegacy$1.f47527b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = catalogRepositoryImpl$getPLPLegacy$1.d;
        try {
            if (i4 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                CatalogRepositoryImpl$getPLPLegacy$2$1 catalogRepositoryImpl$getPLPLegacy$2$1 = new CatalogRepositoryImpl$getPLPLegacy$2$1(this, str, i2, str3, str2, z, null);
                catalogRepositoryImpl$getPLPLegacy$1.d = 1;
                objF = BuildersKt.f(defaultIoScheduler, catalogRepositoryImpl$getPLPLegacy$2$1, catalogRepositoryImpl$getPLPLegacy$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i4 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objF);
            }
            failure = new Result((PlpPagination) objF);
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
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final Object i(List list, boolean z, ContinuationImpl continuationImpl) throws Throwable {
        CatalogRepositoryImpl$getPLPBySkus$1 catalogRepositoryImpl$getPLPBySkus$1;
        Object failure;
        if (continuationImpl instanceof CatalogRepositoryImpl$getPLPBySkus$1) {
            catalogRepositoryImpl$getPLPBySkus$1 = (CatalogRepositoryImpl$getPLPBySkus$1) continuationImpl;
            int i2 = catalogRepositoryImpl$getPLPBySkus$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getPLPBySkus$1.d = i2 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getPLPBySkus$1 = new CatalogRepositoryImpl$getPLPBySkus$1(this, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getPLPBySkus$1 = new CatalogRepositoryImpl$getPLPBySkus$1(this, continuationImpl);
        }
        Object objF = catalogRepositoryImpl$getPLPBySkus$1.f47522b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = catalogRepositoryImpl$getPLPBySkus$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                CatalogRepositoryImpl$getPLPBySkus$2$1 catalogRepositoryImpl$getPLPBySkus$2$1 = new CatalogRepositoryImpl$getPLPBySkus$2$1(this, list, z, null);
                catalogRepositoryImpl$getPLPBySkus$1.d = 1;
                objF = BuildersKt.f(defaultIoScheduler, catalogRepositoryImpl$getPLPBySkus$2$1, catalogRepositoryImpl$getPLPBySkus$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objF);
            }
            failure = new Result((PlpPagination) objF);
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
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final Object j(String str, ContinuationImpl continuationImpl) throws Throwable {
        CatalogRepositoryImpl$getStoreModeCatalog$1 catalogRepositoryImpl$getStoreModeCatalog$1;
        Object failure;
        if (continuationImpl instanceof CatalogRepositoryImpl$getStoreModeCatalog$1) {
            catalogRepositoryImpl$getStoreModeCatalog$1 = (CatalogRepositoryImpl$getStoreModeCatalog$1) continuationImpl;
            int i2 = catalogRepositoryImpl$getStoreModeCatalog$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getStoreModeCatalog$1.d = i2 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getStoreModeCatalog$1 = new CatalogRepositoryImpl$getStoreModeCatalog$1(this, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getStoreModeCatalog$1 = new CatalogRepositoryImpl$getStoreModeCatalog$1(this, continuationImpl);
        }
        Object catalog = catalogRepositoryImpl$getStoreModeCatalog$1.f47567b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = catalogRepositoryImpl$getStoreModeCatalog$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(catalog);
                Result.Companion companion = Result.INSTANCE;
                CatalogApi catalogApi = this.f47503f;
                catalogRepositoryImpl$getStoreModeCatalog$1.d = 1;
                catalog = catalogApi.getCatalog(str, catalogRepositoryImpl$getStoreModeCatalog$1);
                if (catalog == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(catalog);
            }
            failure = new Result(CatalogMapperKt.a((CatalogDto) catalog));
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
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final Object k(List list, ContinuationImpl continuationImpl) {
        CatalogRepositoryImpl$getProductListForSkus$1 catalogRepositoryImpl$getProductListForSkus$1;
        if (continuationImpl instanceof CatalogRepositoryImpl$getProductListForSkus$1) {
            catalogRepositoryImpl$getProductListForSkus$1 = (CatalogRepositoryImpl$getProductListForSkus$1) continuationImpl;
            int i2 = catalogRepositoryImpl$getProductListForSkus$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getProductListForSkus$1.d = i2 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getProductListForSkus$1 = new CatalogRepositoryImpl$getProductListForSkus$1(this, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getProductListForSkus$1 = new CatalogRepositoryImpl$getProductListForSkus$1(this, continuationImpl);
        }
        Object products = catalogRepositoryImpl$getProductListForSkus$1.f47555b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = catalogRepositoryImpl$getProductListForSkus$1.d;
        if (i3 == 0) {
            ResultKt.b(products);
            if (list.isEmpty()) {
                return EmptyList.f71768b;
            }
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((SkuId) it.next()).f67933a);
            }
            catalogRepositoryImpl$getProductListForSkus$1.d = 1;
            products = this.g.getProducts(arrayList, catalogRepositoryImpl$getProductListForSkus$1);
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
        return ProductShortMapperKt.b((List) products, this.o);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final Object l(ContinuationImpl continuationImpl) throws Throwable {
        CatalogRepositoryImpl$getReinsurance$1 catalogRepositoryImpl$getReinsurance$1;
        Object failure;
        Throwable unknownErrorException;
        ResponseBody responseBody;
        if (continuationImpl instanceof CatalogRepositoryImpl$getReinsurance$1) {
            catalogRepositoryImpl$getReinsurance$1 = (CatalogRepositoryImpl$getReinsurance$1) continuationImpl;
            int i2 = catalogRepositoryImpl$getReinsurance$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getReinsurance$1.d = i2 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getReinsurance$1 = new CatalogRepositoryImpl$getReinsurance$1(this, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getReinsurance$1 = new CatalogRepositoryImpl$getReinsurance$1(this, continuationImpl);
        }
        Object reinsurance = catalogRepositoryImpl$getReinsurance$1.f47563b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = catalogRepositoryImpl$getReinsurance$1.d;
        String strString = null;
        try {
            if (i3 == 0) {
                ResultKt.b(reinsurance);
                Result.Companion companion = Result.INSTANCE;
                ProductApi productApi = this.g;
                catalogRepositoryImpl$getReinsurance$1.d = 1;
                reinsurance = productApi.getReinsurance(catalogRepositoryImpl$getReinsurance$1);
                if (reinsurance == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(reinsurance);
            }
            failure = new Result((ReinsuranceResultDto) reinsurance);
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
        Object failure2 = ((Result) failure).f71708b;
        if (!(failure2 instanceof Result.Failure)) {
            try {
                failure2 = ReinsuranceSectionMapperKt.a((ReinsuranceResultDto) failure2);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                failure2 = new Result.Failure(th2);
            }
        }
        Throwable thA2 = Result.a(failure2);
        if (thA2 != null) {
            this.f47499a.c("CatalogRepositoryImpl", "Failed to get reinsurance", thA2);
        }
        Throwable thA3 = Result.a(failure2);
        if (thA3 == null) {
            return failure2;
        }
        if (thA3 instanceof HttpException) {
            try {
                Response response = ((HttpException) thA3).d;
                if (response != null && (responseBody = response.f79451c) != null) {
                    strString = responseBody.string();
                }
                Json json = this.l;
                if (strString == null) {
                    strString = "";
                }
                json.getClass();
                unknownErrorException = ReinsuranceErrorMapperKt.a((ErrorResponseDto) json.b(ErrorResponseDto.INSTANCE.serializer(), strString));
            } catch (Exception e2) {
                unknownErrorException = new ReinsuranceErrorException.UnknownErrorException(e2.getMessage(), e2);
            }
        } else {
            unknownErrorException = thA3 instanceof IOException ? new ReinsuranceErrorException.NetworkErrorException(thA3) : new ReinsuranceErrorException.UnknownErrorException(thA3.getMessage(), thA3);
        }
        return new Result.Failure(unknownErrorException);
    }

    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final void m() {
        this.n = BuildersKt.a(this.m, null, new CatalogRepositoryImpl$prefetchCatalog$1(this, null), 3);
    }

    @Override // com.vuitton.android.domain.repository.CatalogRepository
    public final ResultStrategyLazy n() {
        return new ResultStrategyLazy(new CatalogRepositoryImpl$getCatalog$2(1, this, CatalogRepositoryImpl.class, "getOrAwaitCatalogResult", "getOrAwaitCatalogResult-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0), new CatalogRepositoryImpl$getCatalog$3(1, this.f47505i, CatalogLocalDataSource.class, "getCatalogNavigation", "getCatalogNavigation-xLWZpok()Lkotlin/Result;", 4));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object q(String str, ContinuationImpl continuationImpl) throws Throwable {
        CatalogRepositoryImpl$getEnvironmentInfo$1 catalogRepositoryImpl$getEnvironmentInfo$1;
        Object failure;
        if (continuationImpl instanceof CatalogRepositoryImpl$getEnvironmentInfo$1) {
            catalogRepositoryImpl$getEnvironmentInfo$1 = (CatalogRepositoryImpl$getEnvironmentInfo$1) continuationImpl;
            int i2 = catalogRepositoryImpl$getEnvironmentInfo$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getEnvironmentInfo$1.d = i2 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getEnvironmentInfo$1 = new CatalogRepositoryImpl$getEnvironmentInfo$1(this, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getEnvironmentInfo$1 = new CatalogRepositoryImpl$getEnvironmentInfo$1(this, continuationImpl);
        }
        Object objM78getAGEChd8RJmg = catalogRepositoryImpl$getEnvironmentInfo$1.f47510b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = catalogRepositoryImpl$getEnvironmentInfo$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objM78getAGEChd8RJmg);
                Result.Companion companion = Result.INSTANCE;
                ProductApi productApi = this.g;
                catalogRepositoryImpl$getEnvironmentInfo$1.d = 1;
                objM78getAGEChd8RJmg = productApi.m78getAGEChd8RJmg(str, catalogRepositoryImpl$getEnvironmentInfo$1);
                if (objM78getAGEChd8RJmg == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objM78getAGEChd8RJmg);
            }
            failure = new Result(ProductAGECMapperKt.a((ProductAGECDto) objM78getAGEChd8RJmg));
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
        Object obj = ((Result) failure).f71708b;
        if (obj instanceof Result.Failure) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0055  */
    /* JADX WARN: Code duplicated, block: B:21:0x006b  */
    /* JADX WARN: Code duplicated, block: B:23:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x0084  */
    /* JADX WARN: Code duplicated, block: B:27:0x0090  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x007e -> B:24:0x0081). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0090 -> B:28:0x009e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:27:0x0090
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object r(java.util.List r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductMediaList$1
            if (r0 == 0) goto L13
            r0 = r12
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductMediaList$1 r0 = (com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductMediaList$1) r0
            int r1 = r0.f47562i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47562i = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductMediaList$1 r0 = new com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductMediaList$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.g
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47562i
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L33
            int r11 = r0.f47560f
            int r2 = r0.f47559e
            int r4 = r0.d
            java.util.Iterator r5 = r0.f47558c
            java.util.Collection r6 = r0.f47557b
            java.util.Collection r6 = (java.util.Collection) r6
            kotlin.ResultKt.b(r12)
            goto L81
        L33:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            r10 = 0
            return r10
        L3a:
            kotlin.ResultKt.b(r12)
            if (r11 == 0) goto Lb2
            java.lang.Iterable r11 = (java.lang.Iterable) r11
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            java.util.Iterator r11 = r11.iterator()
            r2 = 0
            r5 = r11
            r6 = r12
            r11 = r2
            r4 = r11
        L4f:
            boolean r12 = r5.hasNext()
            if (r12 == 0) goto Lac
            java.lang.Object r12 = r5.next()
            com.vuitton.android.data.dto.pdp.MediaDto r12 = (com.vuitton.android.data.dto.pdp.MediaDto) r12
            java.lang.String r7 = r12.f46219a
            java.lang.String r8 = r12.f46221c
            com.vuitton.android.data.dto.pdp.MediaType r9 = com.vuitton.android.data.dto.pdp.MediaType.VIDEO
            java.lang.String r9 = r9.getValue()
            boolean r9 = kotlin.jvm.internal.Intrinsics.c(r7, r9)
            if (r9 == 0) goto L84
            r12 = r6
            java.util.Collection r12 = (java.util.Collection) r12
            r0.f47557b = r12
            r0.f47558c = r5
            r0.d = r4
            r0.f47559e = r2
            r0.f47560f = r11
            r0.f47562i = r3
            java.lang.Object r12 = r10.s(r8, r0)
            if (r12 != r1) goto L81
            return r1
        L81:
            com.vuitton.foundation.model.domain.model.product.ProductMedia r12 = (com.vuitton.foundation.model.domain.model.product.ProductMedia) r12
            goto L9e
        L84:
            com.vuitton.android.data.dto.pdp.MediaType r9 = com.vuitton.android.data.dto.pdp.MediaType.IMAGE
            java.lang.String r9 = r9.getValue()
            boolean r7 = kotlin.jvm.internal.Intrinsics.c(r7, r9)
            if (r7 == 0) goto La4
            com.vuitton.foundation.model.domain.model.product.ProductImage r7 = new com.vuitton.foundation.model.domain.model.product.ProductImage
            java.lang.String r9 = "?"
            java.lang.String r8 = kotlin.text.StringsKt.U(r8, r9)
            java.lang.String r12 = r12.f46220b
            r7.<init>(r8, r12)
            r12 = r7
        L9e:
            if (r12 == 0) goto L4f
            r6.add(r12)
            goto L4f
        La4:
            java.lang.Exception r10 = new java.lang.Exception
            java.lang.String r11 = "Wrong media type"
            r10.<init>(r11)
            throw r10
        Lac:
            java.util.List r6 = (java.util.List) r6
            if (r6 != 0) goto Lb1
            goto Lb2
        Lb1:
            return r6
        Lb2:
            kotlin.collections.EmptyList r10 = kotlin.collections.EmptyList.f71768b
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CatalogRepositoryImpl.r(java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object s(String str, ContinuationImpl continuationImpl) {
        CatalogRepositoryImpl$getVideo$1 catalogRepositoryImpl$getVideo$1;
        Object failure;
        if (continuationImpl instanceof CatalogRepositoryImpl$getVideo$1) {
            catalogRepositoryImpl$getVideo$1 = (CatalogRepositoryImpl$getVideo$1) continuationImpl;
            int i2 = catalogRepositoryImpl$getVideo$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                catalogRepositoryImpl$getVideo$1.d = i2 - Integer.MIN_VALUE;
            } else {
                catalogRepositoryImpl$getVideo$1 = new CatalogRepositoryImpl$getVideo$1(this, continuationImpl);
            }
        } else {
            catalogRepositoryImpl$getVideo$1 = new CatalogRepositoryImpl$getVideo$1(this, continuationImpl);
        }
        Object video = catalogRepositoryImpl$getVideo$1.f47574b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = catalogRepositoryImpl$getVideo$1.d;
        ProductVideo productVideo = null;
        try {
            if (i3 == 0) {
                ResultKt.b(video);
                Result.Companion companion = Result.INSTANCE;
                VideoApi videoApi = this.f47502e;
                String strS = StringsKt.S(str, "/");
                catalogRepositoryImpl$getVideo$1.d = 1;
                video = videoApi.getVideo(strS, null, null, catalogRepositoryImpl$getVideo$1);
                if (video == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(video);
            }
            failure = (AssetVideoDto) video;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) == null) {
            AssetVideoDto assetVideoDto = (AssetVideoDto) failure;
            assetVideoDto.getClass();
            String str2 = assetVideoDto.f45245b;
            if (str2 == null) {
                str2 = "";
            }
            productVideo = new ProductVideo(str2, assetVideoDto.f45246c);
        } else {
            this.f47499a.c("CatalogRepositoryImpl", "Unable to retrieve the freecaster video", null);
        }
        return productVideo;
    }
}
