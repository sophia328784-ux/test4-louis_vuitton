package com.vuitton.android.data.api.connectivity;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.watch.PairWatchV2Dto;
import com.vuitton.android.data.dto.connectivity.watch.UnpairWatchV2Dto;
import com.vuitton.android.data.dto.connectivity.watch.WatchV2ResultDto;
import com.vuitton.android.data.dto.travel.TravelDto;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\tJ,\u0010\n\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u000b2\b\b\u0001\u0010\b\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\fJ(\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u00102\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0011J\"\u0010\u0012\u001a\u00020\u000f2\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u000fH§@¢\u0006\u0002\u0010\u0013J,\u0010\u0014\u001a\u00020\u000f2\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0015\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u000fH§@¢\u0006\u0002\u0010\u0016J\"\u0010\u0017\u001a\u00020\u00182\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0015\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0019¨\u0006\u001aÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/connectivity/WatchApiV2;", "", "pairWatch", "Lcom/vuitton/android/data/dto/connectivity/watch/WatchV2ResultDto;", "auth", "", "param", "Lcom/vuitton/android/data/dto/connectivity/watch/PairWatchV2Dto;", "locale", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/connectivity/watch/PairWatchV2Dto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unpairWatch", "Lcom/vuitton/android/data/dto/connectivity/watch/UnpairWatchV2Dto;", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/connectivity/watch/UnpairWatchV2Dto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTravels", "Ljava/util/ArrayList;", "Lcom/vuitton/android/data/dto/travel/TravelDto;", "Lkotlin/collections/ArrayList;", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createTravel", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/TravelDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "editTravel", "bookingId", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/TravelDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteTravel", "", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface WatchApiV2 {
    @POST("/api/v3/companion/travel/api/v3/travel?localTime=true")
    Object createTravel(@Header("Authorization") String str, @Body TravelDto travelDto, Continuation<? super TravelDto> continuation);

    @DELETE("/api/v3/companion/travel/api/v3/travel/{bookingId}")
    Object deleteTravel(@Header("Authorization") String str, @Path("bookingId") String str2, Continuation<? super Unit> continuation);

    @PUT("/api/v3/companion/travel/api/v3/travel/{bookingId}")
    Object editTravel(@Header("Authorization") String str, @Path("bookingId") String str2, @Body TravelDto travelDto, Continuation<? super TravelDto> continuation);

    @GET("/api/v3/companion/travel/api/v3/travels?localTime=true")
    Object getTravels(@Header("Authorization") String str, Continuation<? super ArrayList<TravelDto>> continuation);

    @POST("api/v3/pairing/watch/pair")
    Object pairWatch(@Header("Authorization") String str, @Body PairWatchV2Dto pairWatchV2Dto, @Query("locale") String str2, Continuation<? super WatchV2ResultDto> continuation);

    @POST("api/v3/pairing/watch/unpair")
    Object unpairWatch(@Header("Authorization") String str, @Body UnpairWatchV2Dto unpairWatchV2Dto, @Query("locale") String str2, Continuation<? super WatchV2ResultDto> continuation);
}
