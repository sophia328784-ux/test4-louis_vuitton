package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.address.AddressCreationDto;
import com.vuitton.android.data.dto.address.AddressesResponseDto;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH§@¢\u0006\u0002\u0010\tJ\"\u0010\n\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\fH§@¢\u0006\u0002\u0010\rJ\u0018\u0010\u000e\u001a\u00020\u00062\b\b\u0001\u0010\u000b\u001a\u00020\fH§@¢\u0006\u0002\u0010\u000fJ(\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\f0\u0011j\b\u0012\u0004\u0012\u00020\f`\u00122\b\b\u0001\u0010\u0013\u001a\u00020\fH§@¢\u0006\u0002\u0010\u000fJ2\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\f0\u0011j\b\u0012\u0004\u0012\u00020\f`\u00122\b\b\u0001\u0010\u0013\u001a\u00020\f2\b\b\u0001\u0010\u0015\u001a\u00020\fH§@¢\u0006\u0002\u0010\u0016¨\u0006\u0017À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/AddressesApi;", "", "getAddressList", "Lcom/vuitton/android/data/dto/address/AddressesResponseDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addAddress", "", "address", "Lcom/vuitton/android/data/dto/address/AddressCreationDto;", "(Lcom/vuitton/android/data/dto/address/AddressCreationDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateAddress", "addressId", "", "(Lcom/vuitton/android/data/dto/address/AddressCreationDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAddress", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCNCityList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "state", "getCNCountyList", "city", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AddressesApi {
    @POST("addresses")
    Object addAddress(@Body AddressCreationDto addressCreationDto, Continuation<? super Unit> continuation);

    @DELETE("addresses/{identifier}")
    Object deleteAddress(@Path("identifier") String str, Continuation<? super Unit> continuation);

    @GET("addresses")
    Object getAddressList(Continuation<? super AddressesResponseDto> continuation);

    @GET("addresses/china-cities")
    Object getCNCityList(@Query("state") String str, Continuation<? super ArrayList<String>> continuation);

    @GET("addresses/china-counties")
    Object getCNCountyList(@Query("state") String str, @Query("city") String str2, Continuation<? super ArrayList<String>> continuation);

    @PUT("addresses/{identifier}")
    Object updateAddress(@Body AddressCreationDto addressCreationDto, @Path("identifier") String str, Continuation<? super Unit> continuation);
}
