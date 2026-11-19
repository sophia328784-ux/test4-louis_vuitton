package com.vuitton.android.data.api.bff.catalog;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.ProductDto;
import com.vuitton.android.data.dto.productshort.ProductListLegacyDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u00072\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0005H§@¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\r2\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0005H§@¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;", "", "getPlpExclusive", "Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;", "dimId", "", "page", "", "sotToken", "(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPdpExclusive", "Lcom/vuitton/android/data/dto/pdp/ProductDto;", "sku", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "getPdpExclusive-SIrPwJI", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ExclusiveApi {
    @GET("v3/product/{sku}/exclusive")
    /* JADX INFO: renamed from: getPdpExclusive-SIrPwJI, reason: not valid java name */
    Object m77getPdpExclusiveSIrPwJI(@Path("sku") String str, @Header("sot_token") String str2, Continuation<? super ProductDto> continuation);

    @GET("v2/plp/{dimId}/exclusive")
    Object getPlpExclusive(@Path("dimId") String str, @Query("page") int i2, @Header("sot_token") String str2, Continuation<? super ProductListLegacyDto> continuation);
}
