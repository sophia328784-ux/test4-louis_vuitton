package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.watch.SendWatchEmailParamDto;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/SendEmailApi;", "", "sendWatchEmail", "", "body", "Lcom/vuitton/android/data/dto/connectivity/watch/SendWatchEmailParamDto;", "(Lcom/vuitton/android/data/dto/connectivity/watch/SendWatchEmailParamDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SendEmailApi {
    @POST("send-watch-mail")
    Object sendWatchEmail(@Body SendWatchEmailParamDto sendWatchEmailParamDto, Continuation<? super Unit> continuation);
}
