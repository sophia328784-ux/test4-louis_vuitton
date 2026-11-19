package com.vuitton.android.data.api.bff.publication;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.bff.CartContributionDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u0004¨\u0006\u0005À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;", "", "getCartContribution", "Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PublicationCartApi {
    @GET("cart")
    Object getCartContribution(Continuation<? super CartContributionDto> continuation);
}
