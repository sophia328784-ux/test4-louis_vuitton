package com.kakao.sdk.user;

import com.kakao.sdk.common.json.IntDate;
import com.kakao.sdk.user.model.AccessTokenInfo;
import com.kakao.sdk.user.model.ScopeInfo;
import com.kakao.sdk.user.model.UserResponse;
import com.kakao.sdk.user.model.UserRevokedServiceTerms;
import com.kakao.sdk.user.model.UserServiceTerms;
import com.kakao.sdk.user.model.UserShippingAddresses;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import java.util.Date;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003H'J$\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\b\b\u0003\u0010\n\u001a\u00020\u000b2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\rH'J\u0018\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\b\b\u0001\u0010\u0010\u001a\u00020\rH'J\u0018\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00032\b\b\u0001\u0010\u0013\u001a\u00020\rH'J\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\n\b\u0003\u0010\u0010\u001a\u0004\u0018\u00010\rH'J&\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00032\n\b\u0003\u0010\u0013\u001a\u0004\u0018\u00010\r2\n\b\u0003\u0010\u0016\u001a\u0004\u0018\u00010\rH'J7\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00032\n\b\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0003\u0010\u001d\u001a\u0004\u0018\u00010\u001eH'¢\u0006\u0002\u0010\u001fJ&\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u00032\u0016\b\u0003\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010!H'J\u000e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003H'J$\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00070\u00032\u0014\b\u0001\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0!H'¨\u0006$"}, d2 = {"Lcom/kakao/sdk/user/UserApi;", "", "accessTokenInfo", "Lretrofit2/Call;", "Lcom/kakao/sdk/user/model/AccessTokenInfo;", "checkAccessToken", "logout", "", "me", "Lcom/kakao/sdk/user/model/UserResponse;", "secureResource", "", SAPropertyFilter.PROPERTIES, "", "revokeScopes", "Lcom/kakao/sdk/user/model/ScopeInfo;", "scopes", "revokeServiceTerms", "Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;", "tags", "serviceTerms", "Lcom/kakao/sdk/user/model/UserServiceTerms;", "result", "shippingAddresses", "Lcom/kakao/sdk/user/model/UserShippingAddresses;", "addressId", "", "fromUpdatedAt", "Ljava/util/Date;", "pageSize", "", "(Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Integer;)Lretrofit2/Call;", "signup", "", "unlink", "updateProfile", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface UserApi {
    @GET("/v1/user/access_token_info")
    Call<AccessTokenInfo> accessTokenInfo();

    @GET("/v1/user/check_access_token")
    Call<AccessTokenInfo> checkAccessToken();

    @POST("/v1/user/logout")
    Call<Unit> logout();

    @GET("/v2/user/me")
    Call<UserResponse> me(@Query("secure_resource") boolean secureResource, @Query("property_keys") String properties);

    @FormUrlEncoded
    @POST("/v2/user/revoke/scopes")
    Call<ScopeInfo> revokeScopes(@Field("scopes") String scopes);

    @FormUrlEncoded
    @POST("/v2/user/revoke/service_terms")
    Call<UserRevokedServiceTerms> revokeServiceTerms(@Field("tags") String tags);

    @GET("/v2/user/scopes")
    Call<ScopeInfo> scopes(@Query("scopes") String scopes);

    @GET("/v2/user/service_terms")
    Call<UserServiceTerms> serviceTerms(@Query("tags") String tags, @Query("result") String result);

    @GET("/v1/user/shipping_address")
    Call<UserShippingAddresses> shippingAddresses(@Query("address_id") Long addressId, @IntDate @Query("from_updated_at") Date fromUpdatedAt, @Query("page_size") Integer pageSize);

    @FormUrlEncoded
    @POST("/v1/user/signup")
    Call<Unit> signup(@Field(SAPropertyFilter.PROPERTIES) Map<String, String> properties);

    @POST("/v1/user/unlink")
    Call<Unit> unlink();

    @FormUrlEncoded
    @POST("/v1/user/update_profile")
    Call<Unit> updateProfile(@Field(SAPropertyFilter.PROPERTIES) Map<String, String> properties);
}
