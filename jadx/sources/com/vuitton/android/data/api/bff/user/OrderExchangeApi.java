package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.account.orders.ProductExchangeCategoryDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u0007H§@¢\u0006\u0004\b\t\u0010\n¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;", "", "getExchangeVariations", "Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;", "sku", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "price", "", "priceWithoutVAT", "getExchangeVariations-1cKmzHo", "(Ljava/lang/String;DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OrderExchangeApi {
    @GET("product/exchange/variations/{sku}")
    /* JADX INFO: renamed from: getExchangeVariations-1cKmzHo, reason: not valid java name */
    Object m85getExchangeVariations1cKmzHo(@Path("sku") String str, @Query("price") double d, @Query("priceWithoutVAT") double d2, Continuation<? super ProductExchangeCategoryDto> continuation);
}
