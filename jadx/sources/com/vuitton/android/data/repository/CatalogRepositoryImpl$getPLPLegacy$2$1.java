package com.vuitton.android.data.repository;

import com.vuitton.android.data.api.bff.catalog.CatalogApi;
import com.vuitton.android.data.dto.plp.mapper.ProductListLegacyToV2MapperKt;
import com.vuitton.android.data.dto.productshort.ProductListLegacyDto;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.plp.mapper.PlpMapperKt;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItem;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItemId;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl$getPLPLegacy$2$1", f = "CatalogRepositoryImpl.kt", l = {173}, m = "invokeSuspend", v = 2)
final class CatalogRepositoryImpl$getPLPLegacy$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PlpPagination>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogRepositoryImpl f47530c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f47531e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f47532f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f47533h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getPLPLegacy$2$1(CatalogRepositoryImpl catalogRepositoryImpl, String str, int i2, String str2, String str3, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f47530c = catalogRepositoryImpl;
        this.d = str;
        this.f47531e = i2;
        this.f47532f = str2;
        this.g = str3;
        this.f47533h = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CatalogRepositoryImpl$getPLPLegacy$2$1(this.f47530c, this.d, this.f47531e, this.f47532f, this.g, this.f47533h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CatalogRepositoryImpl$getPLPLegacy$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CatalogRepositoryImpl$getPLPLegacy$2$1 catalogRepositoryImpl$getPLPLegacy$2$1;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47529b;
        final CatalogRepositoryImpl catalogRepositoryImpl = this.f47530c;
        if (i2 == 0) {
            ResultKt.b(obj);
            CatalogApi catalogApi = catalogRepositoryImpl.f47503f;
            this.f47529b = 1;
            catalogRepositoryImpl$getPLPLegacy$2$1 = this;
            obj = catalogApi.getProductListForSubCategoryLegacy(this.d, this.f47531e, this.f47532f, this.g, catalogRepositoryImpl$getPLPLegacy$2$1);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            catalogRepositoryImpl$getPLPLegacy$2$1 = this;
        }
        return PlpMapperKt.a(ProductListLegacyToV2MapperKt.a((ProductListLegacyDto) obj, new Function1<SkuId, WishlistItemId>() { // from class: com.vuitton.android.data.repository.CatalogRepositoryImpl$getPLPLegacy$2$1.1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) throws Throwable {
                String str = ((SkuId) obj2).f67933a;
                str.getClass();
                Object objB = catalogRepositoryImpl.f47506j.b(str);
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
        }, catalogRepositoryImpl$getPLPLegacy$2$1.f47533h), catalogRepositoryImpl$getPLPLegacy$2$1.f47531e);
    }
}
