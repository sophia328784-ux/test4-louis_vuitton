package com.kakao.sdk.auth;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.kakao.sdk.auth.model.OAuthToken;
import com.kakao.sdk.common.KakaoSdk;
import com.kakao.sdk.common.util.AESCipher;
import com.kakao.sdk.common.util.Cipher;
import com.kakao.sdk.common.util.KakaoJson;
import com.kakao.sdk.common.util.PersistentKVStore;
import com.kakao.sdk.common.util.SdkLog;
import com.kakao.sdk.common.util.SharedPrefsWrapper;
import java.lang.reflect.Type;
import java.util.Date;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/kakao/sdk/auth/TokenManager;", "Lcom/kakao/sdk/auth/TokenManageable;", "Lcom/kakao/sdk/common/util/PersistentKVStore;", "appCache", "Lcom/kakao/sdk/common/util/Cipher;", "encryptor", "<init>", "(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;)V", "Companion", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class TokenManager implements TokenManageable {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy f35837e = LazyKt.b(TokenManager$Companion$instance$2.f35841c);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PersistentKVStore f35838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Cipher f35839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OAuthToken f35840c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004¨\u0006\u000b"}, d2 = {"Lcom/kakao/sdk/auth/TokenManager$Companion;", "", "", "atExpiresAtKey", "Ljava/lang/String;", "atKey", "rtExpiresAtKey", "rtKey", "secureModeKey", "tokenKey", "versionKey", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TokenManager(PersistentKVStore persistentKVStore, Cipher cipher) {
        OAuthToken oAuthToken;
        String str;
        String str2;
        Long lValueOf;
        String str3;
        Long lValueOf2;
        String asString;
        String asString2;
        persistentKVStore.getClass();
        cipher.getClass();
        this.f35838a = persistentKVStore;
        this.f35839b = cipher;
        if (persistentKVStore.getString("com.kakao.sdk.version") == null) {
            SdkLog.d.getClass();
            SdkLog.Companion.b("=== Migrate from old version token");
            persistentKVStore.putString("com.kakao.sdk.version", "2.20.6").a();
            String string = persistentKVStore.getString("com.kakao.token.KakaoSecureMode");
            String asString3 = string != null ? ((JsonObject) KakaoJson.f35885a.fromJson(string, (Type) JsonObject.class)).get("value").getAsString() : null;
            String str4 = asString3 == null ? "false" : asString3;
            SdkLog.Companion.b("secureMode: ".concat(str4));
            try {
                String string2 = persistentKVStore.getString("com.kakao.token.AccessToken");
                if (string2 != null) {
                    asString2 = ((JsonObject) KakaoJson.f35885a.fromJson(string2, (Type) JsonObject.class)).get("value").getAsString();
                    if (asString2 != null && str4.equals("true")) {
                        asString2 = cipher.b(asString2);
                    }
                } else {
                    asString2 = null;
                }
                str = asString2;
            } catch (Exception e2) {
                SdkLog.d.getClass();
                SdkLog.Companion.a(e2);
                str = null;
            }
            SdkLog.d.getClass();
            SdkLog.Companion.b("accessToken: " + str);
            try {
                String string3 = persistentKVStore.getString("com.kakao.token.RefreshToken");
                if (string3 != null) {
                    asString = ((JsonObject) KakaoJson.f35885a.fromJson(string3, (Type) JsonObject.class)).get("value").getAsString();
                    if (asString != null && str4.equals("true")) {
                        asString = cipher.b(asString);
                    }
                } else {
                    asString = null;
                }
                str2 = asString;
            } catch (Exception e3) {
                SdkLog.d.getClass();
                SdkLog.Companion.a(e3);
                str2 = null;
            }
            SdkLog.d.getClass();
            SdkLog.Companion.b("refreshToken: " + str2);
            try {
                String string4 = persistentKVStore.getString("com.kakao.token.OAuthToken.ExpiresAt");
                lValueOf = string4 != null ? Long.valueOf(((JsonObject) KakaoJson.f35885a.fromJson(string4, (Type) JsonObject.class)).get("value").getAsLong()) : null;
            } catch (Exception e4) {
                SdkLog.d.getClass();
                SdkLog.Companion.a(e4);
            }
            String str5 = str;
            long jLongValue = lValueOf != null ? lValueOf.longValue() : 0L;
            try {
                String string5 = persistentKVStore.getString("com.kakao.token.RefreshToken.ExpiresAt");
                if (string5 != null) {
                    str3 = str2;
                    try {
                        lValueOf2 = Long.valueOf(((JsonObject) KakaoJson.f35885a.fromJson(string5, (Type) JsonObject.class)).get("value").getAsLong());
                    } catch (Exception e5) {
                        e = e5;
                        SdkLog.d.getClass();
                        SdkLog.Companion.a(e);
                        lValueOf2 = null;
                    }
                } else {
                    str3 = str2;
                    lValueOf2 = null;
                }
            } catch (Exception e6) {
                e = e6;
                str3 = str2;
            }
            long jLongValue2 = lValueOf2 != null ? lValueOf2.longValue() : Long.MAX_VALUE;
            if (str5 != null && str3 != null) {
                String json = KakaoJson.f35885a.toJson(new OAuthToken(str5, new Date(jLongValue), str3, new Date(jLongValue2), null, null, 48, null));
                json.getClass();
                SharedPrefsWrapper sharedPrefsWrapperPutString = persistentKVStore.putString("com.kakao.sdk.oauth_token", cipher.a(json));
                SharedPreferences.Editor editor = sharedPrefsWrapperPutString.f35893b;
                editor.remove("com.kakao.token.KakaoSecureMode");
                editor.remove("com.kakao.token.AccessToken");
                editor.remove("com.kakao.token.RefreshToken");
                editor.remove("com.kakao.token.OAuthToken.ExpiresAt");
                editor.remove("com.kakao.token.RefreshToken.ExpiresAt");
                sharedPrefsWrapperPutString.a();
            }
        }
        String string6 = this.f35838a.getString("com.kakao.sdk.oauth_token");
        if (string6 != null) {
            try {
                Gson gson = KakaoJson.f35885a;
                oAuthToken = (OAuthToken) KakaoJson.f35885a.fromJson(this.f35839b.b(string6), (Type) OAuthToken.class);
            } catch (Throwable th) {
                SdkLog.d.getClass();
                SdkLog.Companion.a(th);
                oAuthToken = null;
            }
        } else {
            oAuthToken = null;
        }
        this.f35840c = oAuthToken;
    }

    @Override // com.kakao.sdk.auth.TokenManageable
    /* JADX INFO: renamed from: a, reason: from getter */
    public final OAuthToken getF35840c() {
        return this.f35840c;
    }

    @Override // com.kakao.sdk.auth.TokenManageable
    public final synchronized void b(OAuthToken oAuthToken) {
        OAuthToken oAuthTokenA = OAuthToken.a(oAuthToken);
        try {
            PersistentKVStore persistentKVStore = this.f35838a;
            Cipher cipher = this.f35839b;
            String json = KakaoJson.f35885a.toJson(oAuthTokenA);
            json.getClass();
            persistentKVStore.putString("com.kakao.sdk.oauth_token", cipher.a(json)).a();
        } catch (Throwable th) {
            SdkLog.d.getClass();
            SdkLog.Companion.a(th);
        }
        this.f35840c = oAuthTokenA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TokenManager() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ TokenManager(PersistentKVStore persistentKVStore, Cipher cipher, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new SharedPrefsWrapper(KakaoSdk.a().getMSharedPreferences()) : persistentKVStore, (i2 & 2) != 0 ? new AESCipher(null, 1, 0 == true ? 1 : 0) : cipher);
    }
}
