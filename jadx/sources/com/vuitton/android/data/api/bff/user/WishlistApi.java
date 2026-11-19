package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.wishlist.bff.AddWishlistItemsDto;
import com.vuitton.android.data.dto.wishlist.bff.WishlistDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.ResponseBody;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\b\u0001\u0010\b\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ \u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\b\u0001\u0010\f\u001a\u00020\rH§@¢\u0006\u0002\u0010\u000e¨\u0006\u000fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/WishlistApi;", "", "getWishlist", "Lcom/vuitton/android/data/dto/wishlist/bff/WishlistDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addProductsToWishlist", "Lretrofit2/Response;", "Lokhttp3/ResponseBody;", "addWishlistItemsDto", "Lcom/vuitton/android/data/dto/wishlist/bff/AddWishlistItemsDto;", "(Lcom/vuitton/android/data/dto/wishlist/bff/AddWishlistItemsDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteProductFromWishlist", "wishlistItemId", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface WishlistApi {
    @POST("wishlist")
    Object addProductsToWishlist(@Body AddWishlistItemsDto addWishlistItemsDto, Continuation<? super Response<ResponseBody>> continuation);

    @DELETE("wishlist/{wishlistItemId}")
    Object deleteProductFromWishlist(@Path("wishlistItemId") String str, Continuation<? super Response<ResponseBody>> continuation);

    @GET("wishlist")
    Object getWishlist(Continuation<? super WishlistDto> continuation);
}
