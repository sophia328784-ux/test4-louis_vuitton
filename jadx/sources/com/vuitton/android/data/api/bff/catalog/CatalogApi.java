package com.vuitton.android.data.api.bff.catalog;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.catalog.CatalogDto;
import com.vuitton.android.data.dto.catalog.thematicplp.ThematicPlpThemesDto;
import com.vuitton.android.data.dto.plp.ProductListDto;
import com.vuitton.android.data.dto.productshort.ProductListLegacyDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005H§@¢\u0006\u0002\u0010\u0006J:\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u00052\b\b\u0001\u0010\n\u001a\u00020\u000b2\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0005H§@¢\u0006\u0002\u0010\rJ:\u0010\u000e\u001a\u00020\u000f2\b\b\u0001\u0010\u0010\u001a\u00020\u00052\b\b\u0001\u0010\n\u001a\u00020\u000b2\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0005H§@¢\u0006\u0002\u0010\rJ\u0018\u0010\u0011\u001a\u00020\u00122\b\b\u0001\u0010\u0013\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J,\u0010\u0011\u001a\u00020\u00122\b\b\u0001\u0010\u0013\u001a\u00020\u00052\b\b\u0001\u0010\u0014\u001a\u00020\u00052\b\b\u0001\u0010\n\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0015¨\u0006\u0016À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;", "", "getCatalog", "Lcom/vuitton/android/data/dto/catalog/CatalogDto;", "rmsCode", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProductListForCategory", "Lcom/vuitton/android/data/dto/plp/ProductListDto;", "category", "page", "", "sortId", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProductListForSubCategoryLegacy", "Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;", "subCategory", "getThemes", "Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;", "plpId", "themeId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CatalogApi {
    @GET("v3")
    Object getCatalog(@Query("rmsCode") String str, Continuation<? super CatalogDto> continuation);

    @GET("v2/plp")
    Object getProductListForCategory(@Query(b.a.f24015b) String str, @Query("page") int i2, @Query("rmsCode") String str2, @Query("sortBy") String str3, Continuation<? super ProductListDto> continuation);

    @GET("plp")
    Object getProductListForSubCategoryLegacy(@Query(b.a.f24015b) String str, @Query("page") int i2, @Query("rmsCode") String str2, @Query("sortBy") String str3, Continuation<? super ProductListLegacyDto> continuation);

    @GET("v2/plp/{plpId}/themes/{themeId}")
    Object getThemes(@Path("plpId") String str, @Path("themeId") String str2, @Query("page") String str3, Continuation<? super ThematicPlpThemesDto> continuation);

    @GET("v2/plp/{plpId}/themes")
    Object getThemes(@Path("plpId") String str, Continuation<? super ThematicPlpThemesDto> continuation);
}
