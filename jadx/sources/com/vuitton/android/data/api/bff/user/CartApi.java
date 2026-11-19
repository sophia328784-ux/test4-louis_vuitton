package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CheckoutConfirmationDetailDto;
import com.vuitton.android.data.dto.account.orders.CheckoutSurveyBodyDto;
import com.vuitton.android.data.dto.account.orders.ExchangeRequestDto;
import com.vuitton.android.data.dto.cart.bff.AddToCartDto;
import com.vuitton.android.data.dto.cart.bff.CartCountDto;
import com.vuitton.android.data.dto.cart.bff.CartDto;
import com.vuitton.android.data.dto.cart.bff.CartResponseMultipleDto;
import com.vuitton.android.data.dto.cart.bff.ExchangeSetupDto;
import com.vuitton.android.data.dto.cart.bff.ExchangeSetupResponseDto;
import com.vuitton.android.data.dto.cart.bff.ItemQuantityDto;
import com.vuitton.android.data.dto.cart.bff.PrepareOrderDto;
import com.vuitton.android.data.dto.cart.bff.UpdateCartDto;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u0006H§@¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00032\b\b\u0001\u0010\b\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\fH§@¢\u0006\u0002\u0010\u0004J\u0018\u0010\r\u001a\u00020\u00032\b\b\u0001\u0010\u000e\u001a\u00020\u000fH§@¢\u0006\u0002\u0010\u0010J\"\u0010\u0011\u001a\u00020\u00032\b\b\u0001\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\u0012\u001a\u00020\u0013H§@¢\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u00020\u0016H§@¢\u0006\u0002\u0010\u0004J.\u0010\u0017\u001a\u00020\u00182\b\b\u0001\u0010\u0019\u001a\u00020\t2\n\b\u0003\u0010\u001a\u001a\u0004\u0018\u00010\t2\b\b\u0001\u0010\u001b\u001a\u00020\u001cH§@¢\u0006\u0002\u0010\u001dJ\u0018\u0010\u001e\u001a\u00020\u001f2\b\b\u0001\u0010 \u001a\u00020!H§@¢\u0006\u0002\u0010\"J\u0018\u0010#\u001a\u00020\f2\b\b\u0001\u0010$\u001a\u00020%H§@¢\u0006\u0002\u0010&J\u000e\u0010'\u001a\u00020(H§@¢\u0006\u0002\u0010\u0004J\u0018\u0010)\u001a\u00020\f2\b\b\u0001\u0010*\u001a\u00020+H§@¢\u0006\u0002\u0010,¨\u0006-À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/CartApi;", "", "getCart", "Lcom/vuitton/android/data/dto/cart/bff/CartDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCartCount", "Lcom/vuitton/android/data/dto/cart/bff/CartCountDto;", "removeItemFromCart", "itemId", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resetCartContainer", "", "updateCart", "cartUpdate", "Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;", "(Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateItemQuantity", "quantity", "Lcom/vuitton/android/data/dto/cart/bff/ItemQuantityDto;", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/ItemQuantityDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "prepareOrder", "Lcom/vuitton/android/data/dto/cart/bff/PrepareOrderDto;", "addToCart", "Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;", "skus", "sotToken", "addToCartDto", "Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setupExchange", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupResponseDto;", "exchangeSetup", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;", "(Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "submitSelfExchange", "exchangeRequestDto", "Lcom/vuitton/android/data/dto/account/orders/ExchangeRequestDto;", "(Lcom/vuitton/android/data/dto/account/orders/ExchangeRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getConfirmationDetails", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;", "sendCheckoutSurvey", "survey", "Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;", "(Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CartApi {
    @PUT("v2/cart/add/{skus}")
    Object addToCart(@Path("skus") String str, @Header("sot_token") String str2, @Body AddToCartDto addToCartDto, Continuation<? super CartResponseMultipleDto> continuation);

    @GET("cart")
    Object getCart(Continuation<? super CartDto> continuation);

    @GET("cart/count")
    Object getCartCount(Continuation<? super CartCountDto> continuation);

    @GET("cart/checkout/confirmation-details")
    Object getConfirmationDetails(Continuation<? super CheckoutConfirmationDetailDto> continuation);

    @PUT("cart/prepare-order")
    Object prepareOrder(Continuation<? super PrepareOrderDto> continuation);

    @DELETE("cart/items/{item_id}")
    Object removeItemFromCart(@Path("item_id") String str, Continuation<? super CartDto> continuation);

    @DELETE("cart/reset-container")
    Object resetCartContainer(Continuation<? super Unit> continuation);

    @POST("cart/checkout/survey")
    Object sendCheckoutSurvey(@Body CheckoutSurveyBodyDto checkoutSurveyBodyDto, Continuation<? super Unit> continuation);

    @POST("cart/self-exchange/setup")
    Object setupExchange(@Body ExchangeSetupDto exchangeSetupDto, Continuation<? super ExchangeSetupResponseDto> continuation);

    @POST("cart/self-exchange/submit")
    Object submitSelfExchange(@Body ExchangeRequestDto exchangeRequestDto, Continuation<? super Unit> continuation);

    @PATCH("cart")
    Object updateCart(@Body UpdateCartDto updateCartDto, Continuation<? super CartDto> continuation);

    @PATCH("cart/items/{item_id}")
    Object updateItemQuantity(@Path("item_id") String str, @Body ItemQuantityDto itemQuantityDto, Continuation<? super CartDto> continuation);
}
