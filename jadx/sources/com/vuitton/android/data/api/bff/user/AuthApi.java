package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.authentication.oauth.ApiTokenDto;
import com.vuitton.android.data.dto.authentication.oauth.AtgCodeExchangeDto;
import com.vuitton.android.data.dto.authentication.oauth.AuthUrlsDto;
import com.vuitton.android.data.dto.authentication.oauth.ClientCodeDto;
import com.vuitton.android.data.dto.authentication.oauth.CookieExchangeRequestDto;
import com.vuitton.android.data.dto.authentication.oauth.ForgetPasswordInitiateDto;
import com.vuitton.android.data.dto.authentication.oauth.ForgetPasswordValidationDto;
import com.vuitton.android.data.dto.authentication.oauth.NativeLoginDto;
import com.vuitton.android.data.dto.authentication.oauth.RefreshTokenDto;
import com.vuitton.android.data.dto.authentication.oauth.RefreshTokenGuestDto;
import com.vuitton.android.data.dto.authentication.oauth.RegisterInitiateBodyDto;
import com.vuitton.android.data.dto.authentication.oauth.RegisterInitiateResponseDto;
import com.vuitton.android.data.dto.authentication.oauth.RegisterValidateBodyDto;
import com.vuitton.android.data.dto.authentication.social.SocialLoginBodyDto;
import com.vuitton.android.data.dto.authentication.social.SocialRegisterBodyDto;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import lv.nfc.reader.utils.LVConstants;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@¢\u0006\u0002\u0010\u0005J\u001e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0007\u001a\u00020\bH§@¢\u0006\u0002\u0010\tJ\"\u0010\n\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\r2\b\b\u0001\u0010\u000e\u001a\u00020\u000fH§@¢\u0006\u0002\u0010\u0010J*\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0012\u001a\u00020\u00132\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\rH§@¢\u0006\u0002\u0010\u0015J.\u0010\u0016\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\r2\b\b\u0001\u0010\u000e\u001a\u00020\u000f2\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\rH§@¢\u0006\u0002\u0010\u0018J\"\u0010\u0019\u001a\u00020\u001a2\b\b\u0001\u0010\u001b\u001a\u00020\r2\b\b\u0001\u0010\u001c\u001a\u00020\rH§@¢\u0006\u0002\u0010\u001dJ\u0018\u0010\u001e\u001a\u00020\u00042\b\b\u0001\u0010\u001f\u001a\u00020 H§@¢\u0006\u0002\u0010!J\u0018\u0010\"\u001a\u00020\u00042\b\b\u0001\u0010#\u001a\u00020$H§@¢\u0006\u0002\u0010%J\u001e\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010'\u001a\u00020(H§@¢\u0006\u0002\u0010)J\u001e\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010+\u001a\u00020,H§@¢\u0006\u0002\u0010-J\u001e\u0010.\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00032\b\b\u0001\u0010/\u001a\u00020\rH§@¢\u0006\u0002\u00100J\u0018\u00101\u001a\u00020\u001a2\b\b\u0001\u0010\n\u001a\u000202H§@¢\u0006\u0002\u00103J\u001e\u00104\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u00105\u001a\u000206H§@¢\u0006\u0002\u00107J\u001e\u00108\u001a\b\u0012\u0004\u0012\u0002090\u00032\b\b\u0001\u0010#\u001a\u00020:H§@¢\u0006\u0002\u0010;J\u001e\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010#\u001a\u00020=H§@¢\u0006\u0002\u0010>J>\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\r2\b\b\u0001\u0010@\u001a\u00020\r2\b\b\u0001\u0010A\u001a\u00020\r2\b\b\u0001\u0010#\u001a\u00020BH§@¢\u0006\u0002\u0010CJ>\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\r2\b\b\u0001\u0010@\u001a\u00020\r2\b\b\u0001\u0010A\u001a\u00020\r2\b\b\u0001\u0010#\u001a\u00020EH§@¢\u0006\u0002\u0010F¨\u0006GÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/AuthApi;", "", "authenticateGuest", "Lretrofit2/Response;", "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshTokenGuest", "refreshTokenGuestDto", "Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenGuestDto;", "(Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenGuestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "login", "Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;", "codeChallenge", "", "state", "Ljava/util/UUID;", "(Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "nativeLogin", "nativeLoginDto", "Lcom/vuitton/android/data/dto/authentication/oauth/NativeLoginDto;", "guestSlasToken", "(Lcom/vuitton/android/data/dto/authentication/oauth/NativeLoginDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "register", "cid", "(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "logout", "", "accessTokenSFID", "accessTokenSLAS", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "twistCodeExchange", "clientCodeDto", "Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;", "(Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "atgCodeExchange", "body", "Lcom/vuitton/android/data/dto/authentication/oauth/AtgCodeExchangeDto;", "(Lcom/vuitton/android/data/dto/authentication/oauth/AtgCodeExchangeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshToken", "refreshTokenDto", "Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;", "(Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cookieExchange", "cookieExchangeRequestDto", "Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;", "(Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createATGCookies", "accessTokenHeader", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forgetPasswordInitiate", "Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordInitiateDto;", "(Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordInitiateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forgetPasswordValidate", "forgetPasswordValidationDto", "Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordValidationDto;", "(Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordValidationDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerInitiate", "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateResponseDto;", "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;", "(Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerValidate", "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterValidateBodyDto;", "(Lcom/vuitton/android/data/dto/authentication/oauth/RegisterValidateBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "socialRegister", "provider", "locale", "Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "socialLogin", "Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AuthApi {
    @POST("authentication/code-exchange")
    Object atgCodeExchange(@Body AtgCodeExchangeDto atgCodeExchangeDto, Continuation<? super ApiTokenDto> continuation);

    @POST("authentication/guest")
    Object authenticateGuest(Continuation<? super Response<ApiTokenDto>> continuation);

    @POST("authentication/cookie-exchange")
    Object cookieExchange(@Body CookieExchangeRequestDto cookieExchangeRequestDto, Continuation<? super Response<ApiTokenDto>> continuation);

    @POST("authentication/atg/cookies")
    Object createATGCookies(@Header(LVConstants.SFID_ACCESS_TOKEN) String str, Continuation<? super Response<Unit>> continuation);

    @POST("authentication/forgot-password/initiate")
    Object forgetPasswordInitiate(@Body ForgetPasswordInitiateDto forgetPasswordInitiateDto, Continuation<? super Unit> continuation);

    @POST("authentication/forgot-password/validate")
    Object forgetPasswordValidate(@Body ForgetPasswordValidationDto forgetPasswordValidationDto, Continuation<? super Response<ApiTokenDto>> continuation);

    @GET("authentication/login")
    Object login(@Query("code_challenge") String str, @Query("state") UUID uuid, Continuation<? super AuthUrlsDto> continuation);

    @POST("authentication/logout")
    Object logout(@Header(LVConstants.SFID_ACCESS_TOKEN) String str, @Header(LVConstants.SLAS_ACCESS_TOKEN) String str2, Continuation<? super Unit> continuation);

    @POST("authentication/login/native")
    Object nativeLogin(@Body NativeLoginDto nativeLoginDto, @Header("guest_slas_token") String str, Continuation<? super Response<ApiTokenDto>> continuation);

    @PUT("authentication/refresh")
    Object refreshToken(@Body RefreshTokenDto refreshTokenDto, Continuation<? super Response<ApiTokenDto>> continuation);

    @PUT("authentication/guest")
    Object refreshTokenGuest(@Body RefreshTokenGuestDto refreshTokenGuestDto, Continuation<? super Response<ApiTokenDto>> continuation);

    @GET("authentication/registration")
    Object register(@Query("code_challenge") String str, @Query("state") UUID uuid, @Query("cid") String str2, Continuation<? super AuthUrlsDto> continuation);

    @POST("authentication/registration/initiate")
    Object registerInitiate(@Body RegisterInitiateBodyDto registerInitiateBodyDto, Continuation<? super Response<RegisterInitiateResponseDto>> continuation);

    @POST("authentication/registration/validate")
    Object registerValidate(@Body RegisterValidateBodyDto registerValidateBodyDto, Continuation<? super Response<ApiTokenDto>> continuation);

    @POST("authentication/social/login")
    Object socialLogin(@Header("guest_slas_token") String str, @Query("provider") String str2, @Query("locale") String str3, @Body SocialLoginBodyDto socialLoginBodyDto, Continuation<? super Response<ApiTokenDto>> continuation);

    @POST("authentication/social/registration")
    Object socialRegister(@Header("guest_slas_token") String str, @Query("provider") String str2, @Query("locale") String str3, @Body SocialRegisterBodyDto socialRegisterBodyDto, Continuation<? super Response<ApiTokenDto>> continuation);

    @POST("authentication/code-exchange")
    Object twistCodeExchange(@Body ClientCodeDto clientCodeDto, Continuation<? super ApiTokenDto> continuation);
}
