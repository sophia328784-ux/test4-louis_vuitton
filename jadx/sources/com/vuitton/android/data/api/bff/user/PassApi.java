package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pass.LVPassEligibilityDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.ResponseBody;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.Header;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\u001e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/PassApi;", "", "getPassEligibility", "Lcom/vuitton/android/data/dto/pass/LVPassEligibilityDto;", "accountId", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPass", "Lretrofit2/Response;", "Lokhttp3/ResponseBody;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PassApi {
    @GET("lvpass")
    Object getPass(@Header("sf_user_id") String str, Continuation<? super Response<ResponseBody>> continuation);

    @GET("lvpass/eligibility")
    Object getPassEligibility(@Header("sf_user_id") String str, Continuation<? super LVPassEligibilityDto> continuation);
}
