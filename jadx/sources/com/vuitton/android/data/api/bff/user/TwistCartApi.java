package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.PageUrlDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Header;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00032\b\b\u0001\u0010\b\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/TwistCartApi;", "", "getCheckoutUrl", "Lcom/vuitton/android/data/dto/common/PageUrlDto;", "refreshToken", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCheckoutUrlGuest", "usid", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TwistCartApi {
    @GET("cart/checkout")
    Object getCheckoutUrl(@Header("sfid_refresh_token") String str, Continuation<? super PageUrlDto> continuation);

    @GET("cart/checkout")
    Object getCheckoutUrlGuest(@Header("usid") String str, Continuation<? super PageUrlDto> continuation);
}
