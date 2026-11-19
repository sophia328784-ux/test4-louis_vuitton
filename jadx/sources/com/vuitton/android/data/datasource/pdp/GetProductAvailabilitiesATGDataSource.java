package com.vuitton.android.data.datasource.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.catalog.ProductApi;
import com.vuitton.android.data.dto.product.stock.shared.ProductStockDto;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;", "", "Lcom/vuitton/android/data/api/bff/catalog/ProductApi;", "productApi", "<init>", "(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProductAvailabilitiesATGDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductApi f44224a;

    @Inject
    public GetProductAvailabilitiesATGDataSource(ProductApi productApi) {
        productApi.getClass();
        this.f44224a = productApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        GetProductAvailabilitiesATGDataSource$getProductAvailability$1 getProductAvailabilitiesATGDataSource$getProductAvailability$1;
        if (continuationImpl instanceof GetProductAvailabilitiesATGDataSource$getProductAvailability$1) {
            getProductAvailabilitiesATGDataSource$getProductAvailability$1 = (GetProductAvailabilitiesATGDataSource$getProductAvailability$1) continuationImpl;
            int i2 = getProductAvailabilitiesATGDataSource$getProductAvailability$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getProductAvailabilitiesATGDataSource$getProductAvailability$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getProductAvailabilitiesATGDataSource$getProductAvailability$1 = new GetProductAvailabilitiesATGDataSource$getProductAvailability$1(this, continuationImpl);
            }
        } else {
            getProductAvailabilitiesATGDataSource$getProductAvailability$1 = new GetProductAvailabilitiesATGDataSource$getProductAvailability$1(this, continuationImpl);
        }
        Object objB = getProductAvailabilitiesATGDataSource$getProductAvailability$1.f44225b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getProductAvailabilitiesATGDataSource$getProductAvailability$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                GetProductAvailabilitiesATGDataSource$getProductAvailability$2$1 getProductAvailabilitiesATGDataSource$getProductAvailability$2$1 = new GetProductAvailabilitiesATGDataSource$getProductAvailability$2$1(this, str, null);
                getProductAvailabilitiesATGDataSource$getProductAvailability$1.d = 1;
                objB = TimeoutKt.b(10000L, getProductAvailabilitiesATGDataSource$getProductAvailability$2$1, getProductAvailabilitiesATGDataSource$getProductAvailability$1);
                if (objB == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objB);
            }
            ProductStockDto productStockDto = (ProductStockDto) objB;
            Result.Companion companion2 = Result.INSTANCE;
            return productStockDto;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }
}
