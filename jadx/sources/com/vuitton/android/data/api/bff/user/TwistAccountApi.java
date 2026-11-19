package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.account.china.ChinaConsentDataDto;
import com.vuitton.android.data.dto.profile.twist.AccountStatusBodyDto;
import com.vuitton.android.data.dto.profile.twist.AccountStatusDto;
import com.vuitton.android.data.dto.profile.twist.ProfilePwdUpdateDto;
import com.vuitton.android.data.dto.profile.twist.ProfileUpdateDto;
import com.vuitton.android.data.dto.profile.twist.UserConsentsDto;
import com.vuitton.android.data.dto.profile.twist.UserConsentsPatchDto;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\u001e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\b\b\u0001\u0010\t\u001a\u00020\nH§@¢\u0006\u0002\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\b\b\u0001\u0010\t\u001a\u00020\u000eH§@¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u0011H§@¢\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\u00032\b\b\u0001\u0010\u0014\u001a\u00020\u0015H§@¢\u0006\u0002\u0010\u0016J\u0018\u0010\u0017\u001a\u00020\u00032\b\b\u0001\u0010\u0018\u001a\u00020\u0019H§@¢\u0006\u0002\u0010\u001a¨\u0006\u001bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/TwistAccountApi;", "", "updateMainInformation", "", "profileUpdateDto", "Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;", "(Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updatePassword", "Lretrofit2/Response;", "body", "Lcom/vuitton/android/data/dto/profile/twist/ProfilePwdUpdateDto;", "(Lcom/vuitton/android/data/dto/profile/twist/ProfilePwdUpdateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAccountStatus", "Lcom/vuitton/android/data/dto/profile/twist/AccountStatusDto;", "Lcom/vuitton/android/data/dto/profile/twist/AccountStatusBodyDto;", "(Lcom/vuitton/android/data/dto/profile/twist/AccountStatusBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getConsents", "Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "patchConsents", "consentsPatchDto", "Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;", "(Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addConsentChina", "dto", "Lcom/vuitton/android/data/dto/account/china/ChinaConsentDataDto;", "(Lcom/vuitton/android/data/dto/account/china/ChinaConsentDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TwistAccountApi {
    @POST("account/consent-china")
    Object addConsentChina(@Body ChinaConsentDataDto chinaConsentDataDto, Continuation<? super Unit> continuation);

    @POST("account/status")
    Object getAccountStatus(@Body AccountStatusBodyDto accountStatusBodyDto, Continuation<? super AccountStatusDto> continuation);

    @GET("account/consents")
    Object getConsents(Continuation<? super UserConsentsDto> continuation);

    @PATCH("v2/account/consents")
    Object patchConsents(@Body UserConsentsPatchDto userConsentsPatchDto, Continuation<? super Unit> continuation);

    @PUT("profile")
    Object updateMainInformation(@Body ProfileUpdateDto profileUpdateDto, Continuation<? super Unit> continuation);

    @PUT("profile/password")
    Object updatePassword(@Body ProfilePwdUpdateDto profilePwdUpdateDto, Continuation<? super Response<Unit>> continuation);
}
