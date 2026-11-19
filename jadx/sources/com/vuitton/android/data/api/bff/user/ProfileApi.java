package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.ProfileDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import lv.nfc.reader.utils.LVConstants;
import retrofit2.http.GET;
import retrofit2.http.Header;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H§@¢\u0006\u0002\u0010\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/ProfileApi;", "", "getProfile", "Lcom/vuitton/android/data/dto/profile/ProfileDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sfidAccessToken", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ProfileApi {
    @GET("v3/profile")
    Object getProfile(@Header(LVConstants.SFID_ACCESS_TOKEN) String str, Continuation<? super ProfileDto> continuation);

    @GET("v3/profile")
    Object getProfile(Continuation<? super ProfileDto> continuation);
}
