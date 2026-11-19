package com.vuitton.android.data.repository;

import com.vuitton.android.data.api.bff.catalog.ExclusiveApi;
import com.vuitton.android.data.dto.plp.mapper.ProductListLegacyToV2MapperKt;
import com.vuitton.android.data.dto.productshort.ProductListLegacyDto;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.plp.mapper.PlpMapperKt;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl$getExclusivePLP$2$1", f = "CatalogRepositoryImpl.kt", l = {240}, m = "invokeSuspend", v = 2)
final class CatalogRepositoryImpl$getExclusivePLP$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PlpPagination>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogRepositoryImpl f47515c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f47516e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f47517f;
    public final /* synthetic */ boolean g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getExclusivePLP$2$1(CatalogRepositoryImpl catalogRepositoryImpl, String str, int i2, String str2, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f47515c = catalogRepositoryImpl;
        this.d = str;
        this.f47516e = i2;
        this.f47517f = str2;
        this.g = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CatalogRepositoryImpl$getExclusivePLP$2$1(this.f47515c, this.d, this.f47516e, this.f47517f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CatalogRepositoryImpl$getExclusivePLP$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47514b;
        int i3 = this.f47516e;
        CatalogRepositoryImpl catalogRepositoryImpl = this.f47515c;
        if (i2 == 0) {
            ResultKt.b(obj);
            ExclusiveApi exclusiveApi = catalogRepositoryImpl.f47504h;
            String str = this.f47517f;
            String str2 = str != null ? str : null;
            this.f47514b = 1;
            obj = exclusiveApi.getPlpExclusive(this.d, i3, str2, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return PlpMapperKt.a(ProductListLegacyToV2MapperKt.a((ProductListLegacyDto) obj, catalogRepositoryImpl.o, this.g), i3);
    }
}
