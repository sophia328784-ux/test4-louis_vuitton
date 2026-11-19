package com.vuitton.android.data.api.legacymulesoft;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.wishlist.atg.ShareProductFromWishListResultDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\bf\u0018\u00002\u00020\u0001JT\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0007\u001a\u00020\u00052\b\b\u0001\u0010\b\u001a\u00020\u00052\b\b\u0001\u0010\t\u001a\u00020\u00052\b\b\u0001\u0010\n\u001a\u00020\u00052\b\b\u0001\u0010\u000b\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\f¨\u0006\rÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;", "", "shareProductFromWishList", "Lcom/vuitton/android/data/dto/wishlist/atg/ShareProductFromWishListResultDto;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", CMSAttributeTableGenerator.CONTENT_TYPE, "sender", "recipient", "email", "skus", "locale", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LegacyWishlistApi {
    @FormUrlEncoded
    @POST
    Object shareProductFromWishList(@Url String str, @Header("Content-Type") String str2, @Field("sender_name") String str3, @Field("recipient_name") String str4, @Field("recipient_email") String str5, @Field("skus") String str6, @Field("locale") String str7, Continuation<? super ShareProductFromWishListResultDto> continuation);
}
