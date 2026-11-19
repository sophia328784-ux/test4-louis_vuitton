package com.vuitton.android.data.api.bff.catalog;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.productshort.ProductListLegacyDto;
import com.vuitton.android.data.dto.search.LiveSearchDto;
import com.vuitton.android.data.dto.search.SearchAutocompleteDto;
import com.vuitton.android.data.dto.search.TrendingDto;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ\u0018\u0010\u000b\u001a\u00020\f2\b\b\u0001\u0010\b\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJF\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u000f\u001a\u00020\t2\b\b\u0001\u0010\u0010\u001a\u00020\u00112\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\b\u0003\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\tH§@¢\u0006\u0002\u0010\u0015¨\u0006\u0016À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/catalog/SearchApi;", "", "getTrendingList", "", "Lcom/vuitton/android/data/dto/search/TrendingDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAutocompleteList", "Lcom/vuitton/android/data/dto/search/SearchAutocompleteDto;", "query", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLiveSearch", "Lcom/vuitton/android/data/dto/search/LiveSearchDto;", "search", "Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;", "text", "page", "", "rmsCode", "filterId", "sortId", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SearchApi {
    @GET("v2/search/autocomplete")
    Object getAutocompleteList(@Query("search") String str, Continuation<? super SearchAutocompleteDto> continuation);

    @GET("v2/search/live")
    Object getLiveSearch(@Query("search") String str, Continuation<? super LiveSearchDto> continuation);

    @GET("search/trendings")
    Object getTrendingList(Continuation<? super List<TrendingDto>> continuation);

    @GET("v3/search")
    Object search(@Query("search") String str, @Query("page") int i2, @Query("rmsCode") String str2, @Query(encoded = true, value = b.a.f24015b) String str3, @Query("sortBy") String str4, Continuation<? super ProductListLegacyDto> continuation);
}
