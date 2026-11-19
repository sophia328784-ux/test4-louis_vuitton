package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.personalselections.InteractionRequestDto;
import com.vuitton.android.data.dto.personalselections.PersonalSelectionsDetailDto;
import com.vuitton.android.data.dto.personalselections.PersonalSelectionsDto;
import com.vuitton.android.data.dto.personalselections.PersonalSelectionsInteractionDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import lv.nfc.reader.utils.LVConstants;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\"\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\t\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\nJ,\u0010\u000b\u001a\u00020\f2\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\r\u001a\u00020\u00052\b\b\u0001\u0010\u000e\u001a\u00020\u000fH§@¢\u0006\u0002\u0010\u0010J\"\u0010\u0011\u001a\u00020\f2\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\r\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\n¨\u0006\u0012À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;", "", "getPersonalSelectionsList", "Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto;", "accessToken", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPersonalSelectionsDetail", "Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;", "selectionId", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "likeSelection", "Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsInteractionDto;", "interactionToken", "sku", "Lcom/vuitton/android/data/dto/personalselections/InteractionRequestDto;", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/personalselections/InteractionRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unlikeSelection", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PersonalSelectionsApi {
    @GET("personal-selections/{selectionId}")
    Object getPersonalSelectionsDetail(@Header(LVConstants.SFID_ACCESS_TOKEN) String str, @Path("selectionId") String str2, Continuation<? super PersonalSelectionsDetailDto> continuation);

    @GET("personal-selections")
    Object getPersonalSelectionsList(@Header(LVConstants.SFID_ACCESS_TOKEN) String str, Continuation<? super PersonalSelectionsDto> continuation);

    @POST("personal-selections/like/{interactionToken}")
    Object likeSelection(@Header(LVConstants.SFID_ACCESS_TOKEN) String str, @Path("interactionToken") String str2, @Body InteractionRequestDto interactionRequestDto, Continuation<? super PersonalSelectionsInteractionDto> continuation);

    @DELETE("personal-selections/like/{interactionToken}")
    Object unlikeSelection(@Header(LVConstants.SFID_ACCESS_TOKEN) String str, @Path("interactionToken") String str2, Continuation<? super PersonalSelectionsInteractionDto> continuation);
}
