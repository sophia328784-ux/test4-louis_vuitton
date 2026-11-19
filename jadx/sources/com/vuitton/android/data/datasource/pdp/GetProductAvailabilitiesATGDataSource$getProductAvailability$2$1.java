package com.vuitton.android.data.datasource.pdp;

import com.vuitton.android.data.api.bff.catalog.ProductApi;
import com.vuitton.android.data.dto.product.stock.shared.ProductStockDto;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pdp.GetProductAvailabilitiesATGDataSource$getProductAvailability$2$1", f = "GetProductAvailabilitiesATGDataSource.kt", l = {28}, m = "invokeSuspend", v = 2)
final class GetProductAvailabilitiesATGDataSource$getProductAvailability$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ProductStockDto>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f44227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetProductAvailabilitiesATGDataSource f44228c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetProductAvailabilitiesATGDataSource$getProductAvailability$2$1(GetProductAvailabilitiesATGDataSource getProductAvailabilitiesATGDataSource, String str, Continuation continuation) {
        super(2, continuation);
        this.f44228c = getProductAvailabilitiesATGDataSource;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new GetProductAvailabilitiesATGDataSource$getProductAvailability$2$1(this.f44228c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((GetProductAvailabilitiesATGDataSource$getProductAvailability$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f44227b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        ProductApi productApi = this.f44228c.f44224a;
        this.f44227b = 1;
        Object objM81getProductStockhd8RJmg = productApi.m81getProductStockhd8RJmg(this.d, this);
        return objM81getProductStockhd8RJmg == coroutineSingletons ? coroutineSingletons : objM81getProductStockhd8RJmg;
    }
}
