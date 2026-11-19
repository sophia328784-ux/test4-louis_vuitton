package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.product.availability.BackInStockSubscribeDto;
import com.vuitton.android.data.dto.product.availability.BackInStockUnsubscribeDto;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00032\b\b\u0001\u0010\b\u001a\u00020\tH§@¢\u0006\u0002\u0010\n¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/BackInStockApi;", "", "subscribe", "", "subscribeDto", "Lcom/vuitton/android/data/dto/product/availability/BackInStockSubscribeDto;", "(Lcom/vuitton/android/data/dto/product/availability/BackInStockSubscribeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unsubscribe", "unsubscribeDto", "Lcom/vuitton/android/data/dto/product/availability/BackInStockUnsubscribeDto;", "(Lcom/vuitton/android/data/dto/product/availability/BackInStockUnsubscribeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BackInStockApi {
    @POST("products/subscribe")
    Object subscribe(@Body BackInStockSubscribeDto backInStockSubscribeDto, Continuation<? super Unit> continuation);

    @POST("products/unsubscribe")
    Object unsubscribe(@Body BackInStockUnsubscribeDto backInStockUnsubscribeDto, Continuation<? super Unit> continuation);
}
