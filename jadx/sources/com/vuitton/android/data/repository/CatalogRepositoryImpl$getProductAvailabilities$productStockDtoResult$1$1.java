package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.pdp.GetProductAvailabilitiesATGDataSource;
import com.vuitton.android.data.dto.product.stock.shared.ProductStockDto;
import com.vuitton.android.data.net.atg.ATGSessionStatus;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;", "atgSession", "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1", f = "CatalogRepositoryImpl.kt", l = {278}, m = "invokeSuspend", v = 2)
final class CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1 extends SuspendLambda implements Function2<ATGSessionStatus, Continuation<? super ProductStockDto>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47553c;
    public final /* synthetic */ CatalogRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f47554e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1(CatalogRepositoryImpl catalogRepositoryImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.d = catalogRepositoryImpl;
        this.f47554e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1 catalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1 = new CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1(this.d, this.f47554e, continuation);
        catalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1.f47553c = obj;
        return catalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1) create((ATGSessionStatus) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47552b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetProductAvailabilitiesATGDataSource getProductAvailabilitiesATGDataSource = this.d.f47501c;
            this.f47553c = null;
            this.f47552b = 1;
            objA = getProductAvailabilitiesATGDataSource.a(this.f47554e, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        ResultKt.b(objA);
        return objA;
    }
}
