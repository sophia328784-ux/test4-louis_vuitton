package com.vuitton.android.data.api.bff.catalog;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.storelocator.StoreDto;
import com.vuitton.android.data.dto.storelocator.StoreListDto;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001JT\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\t\u001a\u00020\u00072\b\b\u0001\u0010\n\u001a\u00020\u00072\b\b\u0001\u0010\u000b\u001a\u00020\u00072\b\b\u0001\u0010\f\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\rJV\u0010\u000e\u001a\u00020\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\t\u001a\u00020\u00072\b\b\u0001\u0010\n\u001a\u00020\u00072\b\b\u0001\u0010\u000b\u001a\u00020\u00072\b\b\u0001\u0010\f\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\rJ\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0001\u0010\u0012\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0013¨\u0006\u0014À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/catalog/StoreApi;", "", "searchStoresForProduct", "Lcom/vuitton/android/data/dto/storelocator/StoreListDto;", "skuId", "", "latitudeCenter", "", "longitudeCenter", "latitudeA", "longitudeA", "latitudeB", "longitudeB", "(Ljava/lang/String;DDDDDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "searchStoresForAppointment", "getStoreListByCodes", "", "Lcom/vuitton/android/data/dto/storelocator/StoreDto;", "codes", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface StoreApi {
    @GET("stores")
    Object getStoreListByCodes(@Query("stores") String str, Continuation<? super List<StoreDto>> continuation);

    @GET("store/search")
    Object searchStoresForAppointment(@Query("skuId") String str, @Query("latitudeCenter") double d, @Query("longitudeCenter") double d2, @Query("latitudeA") double d3, @Query("longitudeA") double d4, @Query("latitudeB") double d5, @Query("longitudeB") double d6, Continuation<? super StoreListDto> continuation);

    @GET("store/search")
    Object searchStoresForProduct(@Query("skuId") String str, @Query("latitudeCenter") double d, @Query("longitudeCenter") double d2, @Query("latitudeA") double d3, @Query("longitudeA") double d4, @Query("latitudeB") double d5, @Query("longitudeB") double d6, Continuation<? super StoreListDto> continuation);
}
