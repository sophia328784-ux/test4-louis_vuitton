package com.vuitton.android.data.repository;

import com.vuitton.android.data.api.bff.catalog.SearchApi;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SearchRepositoryImpl$getSearchPLP$2$1", f = "SearchRepositoryImpl.kt", l = {33}, m = "invokeSuspend", v = 2)
final class SearchRepositoryImpl$getSearchPLP$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PlpPagination>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchRepositoryImpl f48000c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f48001e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f48002f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f48003h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f48004i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchRepositoryImpl$getSearchPLP$2$1(SearchRepositoryImpl searchRepositoryImpl, String str, String str2, int i2, String str3, String str4, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f48000c = searchRepositoryImpl;
        this.d = str;
        this.f48001e = str2;
        this.f48002f = i2;
        this.g = str3;
        this.f48003h = str4;
        this.f48004i = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearchRepositoryImpl$getSearchPLP$2$1(this.f48000c, this.d, this.f48001e, this.f48002f, this.g, this.f48003h, this.f48004i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchRepositoryImpl$getSearchPLP$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SearchRepositoryImpl$getSearchPLP$2$1 searchRepositoryImpl$getSearchPLP$2$1;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47999b;
        final SearchRepositoryImpl searchRepositoryImpl = this.f48000c;
        if (i2 == 0) {
            ResultKt.b(obj);
            SearchApi searchApi = searchRepositoryImpl.f47991a;
            String str = this.d;
            String str2 = !StringsKt.w(str) ? str : null;
            this.f47999b = 1;
            searchRepositoryImpl$getSearchPLP$2$1 = this;
            obj = searchApi.search(this.f48001e, this.f48002f, this.g, str2, this.f48003h, searchRepositoryImpl$getSearchPLP$2$1);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            searchRepositoryImpl$getSearchPLP$2$1 = this;
        }
        return PlpMapperKt.a(ProductListLegacyToV2MapperKt.a((ProductListLegacyDto) obj, new Function1<SkuId, WishlistItemId>() { // from class: com.vuitton.android.data.repository.SearchRepositoryImpl$getSearchPLP$2$1.2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) throws Throwable {
                String str3 = ((SkuId) obj2).f67933a;
                str3.getClass();
                Object objB = searchRepositoryImpl.f47992b.b(str3);
                if (objB instanceof Result.Failure) {
                    objB = null;
                }
                WishlistItem wishlistItem = (WishlistItem) objB;
                String str4 = wishlistItem != null ? wishlistItem.f68284a : null;
                if (str4 != null) {
                    return new WishlistItemId(str4);
                }
                return null;
            }
        }, searchRepositoryImpl$getSearchPLP$2$1.f48004i), searchRepositoryImpl$getSearchPLP$2$1.f48002f);
    }
}
