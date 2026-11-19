package com.vuitton.android.data.datasource.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.catalog.ProductApi;
import com.vuitton.android.data.dto.product.stock.shared.ProductStockDto;
import defpackage.md;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;", "", "Lcom/vuitton/android/data/api/bff/catalog/ProductApi;", "productApi", "<init>", "(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProductAvailabilitiesTwistDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductApi f44229a;

    @Inject
    public GetProductAvailabilitiesTwistDataSource(ProductApi productApi) {
        productApi.getClass();
        this.f44229a = productApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(List list, ContinuationImpl continuationImpl) {
        GetProductAvailabilitiesTwistDataSource$getProductAvailability$1 getProductAvailabilitiesTwistDataSource$getProductAvailability$1;
        Object failure;
        if (continuationImpl instanceof GetProductAvailabilitiesTwistDataSource$getProductAvailability$1) {
            getProductAvailabilitiesTwistDataSource$getProductAvailability$1 = (GetProductAvailabilitiesTwistDataSource$getProductAvailability$1) continuationImpl;
            int i2 = getProductAvailabilitiesTwistDataSource$getProductAvailability$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getProductAvailabilitiesTwistDataSource$getProductAvailability$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getProductAvailabilitiesTwistDataSource$getProductAvailability$1 = new GetProductAvailabilitiesTwistDataSource$getProductAvailability$1(this, continuationImpl);
            }
        } else {
            getProductAvailabilitiesTwistDataSource$getProductAvailability$1 = new GetProductAvailabilitiesTwistDataSource$getProductAvailability$1(this, continuationImpl);
        }
        Object productAvailabilities = getProductAvailabilitiesTwistDataSource$getProductAvailability$1.f44230b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getProductAvailabilitiesTwistDataSource$getProductAvailability$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(productAvailabilities);
                Result.Companion companion = Result.INSTANCE;
                ProductApi productApi = this.f44229a;
                String strK = CollectionsKt.K(list, ",", null, null, GetProductAvailabilitiesTwistDataSource$getProductAvailability$2$1.f44232b, 30);
                getProductAvailabilitiesTwistDataSource$getProductAvailability$1.d = 1;
                productAvailabilities = productApi.getProductAvailabilities(strK, getProductAvailabilitiesTwistDataSource$getProductAvailability$1);
                if (productAvailabilities == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(productAvailabilities);
            }
            failure = new Result((ProductStockDto) productAvailabilities);
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
}
