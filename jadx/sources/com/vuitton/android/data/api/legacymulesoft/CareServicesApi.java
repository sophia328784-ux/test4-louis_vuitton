package com.vuitton.android.data.api.legacymulesoft;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.careservices.CareServiceDetailDto;
import com.vuitton.android.data.dto.careservices.CareServiceDto;
import com.vuitton.android.data.dto.careservices.CareServiceListDto;
import com.vuitton.android.data.dto.careservices.CareServiceUpdateDto;
import com.vuitton.android.data.dto.careservices.CreateCareServiceResponse;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import lv.nfc.reader.utils.LVConstants;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0007\u001a\u00020\u00052\b\b\u0001\u0010\b\u001a\u00020\u00052\b\b\u0001\u0010\t\u001a\u00020\nH§@¢\u0006\u0002\u0010\u000bJ6\u0010\f\u001a\u00020\r2\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0007\u001a\u00020\u00052\b\b\u0001\u0010\b\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u000eJ6\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0007\u001a\u00020\u00052\b\b\u0001\u0010\b\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u000eJF\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0007\u001a\u00020\u00052\b\b\u0001\u0010\b\u001a\u00020\u00052\b\b\u0001\u0010\u0014\u001a\u00020\u0015H§@¢\u0006\u0002\u0010\u0016¨\u0006\u0017À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;", "", "createCareService", "Lcom/vuitton/android/data/dto/careservices/CreateCareServiceResponse;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "accessToken", "clientId", "clientSecret", "careServiceDto", "Lcom/vuitton/android/data/dto/careservices/CareServiceDto;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCareServiceList", "Lcom/vuitton/android/data/dto/careservices/CareServiceListDto;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCareServiceById", "Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;", "updateCareService", "Lretrofit2/Response;", "", "careService", "Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CareServicesApi {
    @POST
    Object createCareService(@Url String str, @Header("accessToken") String str2, @Header(LVConstants.LV_CLIENT_ID_KEY) String str3, @Header(LVConstants.LV_CLIENT_SECRET_KEY) String str4, @Body CareServiceDto careServiceDto, Continuation<? super CreateCareServiceResponse> continuation);

    @GET
    Object getCareServiceById(@Url String str, @Header("accessToken") String str2, @Header(LVConstants.LV_CLIENT_ID_KEY) String str3, @Header(LVConstants.LV_CLIENT_SECRET_KEY) String str4, Continuation<? super CareServiceDetailDto> continuation);

    @GET
    Object getCareServiceList(@Url String str, @Header("accessToken") String str2, @Header(LVConstants.LV_CLIENT_ID_KEY) String str3, @Header(LVConstants.LV_CLIENT_SECRET_KEY) String str4, Continuation<? super CareServiceListDto> continuation);

    @PATCH
    Object updateCareService(@Url String str, @Header("accessToken") String str2, @Header(LVConstants.LV_CLIENT_ID_KEY) String str3, @Header(LVConstants.LV_CLIENT_SECRET_KEY) String str4, @Body CareServiceUpdateDto careServiceUpdateDto, Continuation<? super Response<Unit>> continuation);
}
