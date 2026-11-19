package com.kakao.sdk.auth;

import com.kakao.sdk.auth.model.AccessTokenResponse;
import com.kakao.sdk.auth.model.AgtResponse;
import com.kakao.sdk.auth.model.PrepareResponse;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import kotlin.Metadata;
import lv.nfc.reader.utils.LVConstants;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u0006H'JX\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\n\u001a\u00020\u00062\b\b\u0001\u0010\u000b\u001a\u00020\u00062\b\b\u0001\u0010\f\u001a\u00020\u00062\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\b\u0003\u0010\u000f\u001a\u00020\u0006H'JR\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\n\b\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\b\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u00062\n\b\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u00062\n\b\u0003\u0010\u0015\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0016\u001a\u00020\u0006H'JB\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\n\u001a\u00020\u00062\b\b\u0001\u0010\u0017\u001a\u00020\u00062\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\b\u0003\u0010\u000f\u001a\u00020\u0006H'¨\u0006\u0018"}, d2 = {"Lcom/kakao/sdk/auth/AuthApi;", "", "agt", "Lretrofit2/Call;", "Lcom/kakao/sdk/auth/model/AgtResponse;", "clientId", "", "accessToken", "issueAccessToken", "Lcom/kakao/sdk/auth/model/AccessTokenResponse;", "androidKeyHash", m.v, "redirectUri", "codeVerifier", "approvalType", "grantType", "prepare", "Lcom/kakao/sdk/auth/model/PrepareResponse;", "settleId", "signIdentifyItems", "signData", "txId", "certType", "refreshToken", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface AuthApi {
    @FormUrlEncoded
    @POST("api/agt")
    Call<AgtResponse> agt(@Field(LVConstants.LV_CLIENT_ID_KEY) String clientId, @Field("access_token") String accessToken);

    @FormUrlEncoded
    @POST("oauth/token")
    Call<AccessTokenResponse> issueAccessToken(@Field(LVConstants.LV_CLIENT_ID_KEY) String clientId, @Field("android_key_hash") String androidKeyHash, @Field(m.v) String code, @Field("redirect_uri") String redirectUri, @Field("code_verifier") String codeVerifier, @Field("approval_type") String approvalType, @Field("grant_type") String grantType);

    @FormUrlEncoded
    @POST("oauth/authorize/prepare")
    Call<PrepareResponse> prepare(@Field(LVConstants.LV_CLIENT_ID_KEY) String clientId, @Field("settle_id") String settleId, @Field("sign_identify_items") String signIdentifyItems, @Field("sign_data") String signData, @Field("tx_id") String txId, @Field("cert_type") String certType);

    @FormUrlEncoded
    @POST("oauth/token")
    Call<AccessTokenResponse> refreshToken(@Field(LVConstants.LV_CLIENT_ID_KEY) String clientId, @Field("android_key_hash") String androidKeyHash, @Field("refresh_token") String refreshToken, @Field("approval_type") String approvalType, @Field("grant_type") String grantType);
}
