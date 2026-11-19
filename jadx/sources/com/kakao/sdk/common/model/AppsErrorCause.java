package com.kakao.sdk.common.model;

import com.google.gson.annotations.SerializedName;
import com.kakao.sdk.common.json.UnknownValue;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0013\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/kakao/sdk/common/model/AppsErrorCause;", "", "InternalServerError", "InvalidRequest", "InvalidParameter", "TimeExpired", "InvalidChannel", "IllegalStateChannel", "AppTypeError", "AppScopeError", "PermissionError", "AppKeyTypeError", "AppChannelNotConnected", "AuthError", "NotRegisteredUser", "InvalidScope", "AccountTermsError", "LoginRequired", "InvalidShippingAddressId", "Unknown", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AppsErrorCause {
    private static final /* synthetic */ AppsErrorCause[] $VALUES;

    @SerializedName("KAE204")
    public static final AppsErrorCause AccountTermsError;

    @SerializedName("KAE105")
    public static final AppsErrorCause AppChannelNotConnected;

    @SerializedName("KAE104")
    public static final AppsErrorCause AppKeyTypeError;

    @SerializedName("KAE102")
    public static final AppsErrorCause AppScopeError;

    @SerializedName("KAE101")
    public static final AppsErrorCause AppTypeError;

    @SerializedName("KAE201")
    public static final AppsErrorCause AuthError;

    @SerializedName("KAE006")
    public static final AppsErrorCause IllegalStateChannel;

    @SerializedName("KAE001")
    public static final AppsErrorCause InternalServerError;

    @SerializedName("KAE005")
    public static final AppsErrorCause InvalidChannel;

    @SerializedName("KAE003")
    public static final AppsErrorCause InvalidParameter;

    @SerializedName("KAE002")
    public static final AppsErrorCause InvalidRequest;

    @SerializedName("KAE203")
    public static final AppsErrorCause InvalidScope;

    @SerializedName("KAE206")
    public static final AppsErrorCause InvalidShippingAddressId;

    @SerializedName("KAE205")
    public static final AppsErrorCause LoginRequired;

    @SerializedName("KAE202")
    public static final AppsErrorCause NotRegisteredUser;

    @SerializedName("KAE103")
    public static final AppsErrorCause PermissionError;

    @SerializedName("KAE004")
    public static final AppsErrorCause TimeExpired;

    @UnknownValue
    public static final AppsErrorCause Unknown;

    static {
        AppsErrorCause appsErrorCause = new AppsErrorCause("InternalServerError", 0);
        InternalServerError = appsErrorCause;
        AppsErrorCause appsErrorCause2 = new AppsErrorCause("InvalidRequest", 1);
        InvalidRequest = appsErrorCause2;
        AppsErrorCause appsErrorCause3 = new AppsErrorCause("InvalidParameter", 2);
        InvalidParameter = appsErrorCause3;
        AppsErrorCause appsErrorCause4 = new AppsErrorCause("TimeExpired", 3);
        TimeExpired = appsErrorCause4;
        AppsErrorCause appsErrorCause5 = new AppsErrorCause("InvalidChannel", 4);
        InvalidChannel = appsErrorCause5;
        AppsErrorCause appsErrorCause6 = new AppsErrorCause("IllegalStateChannel", 5);
        IllegalStateChannel = appsErrorCause6;
        AppsErrorCause appsErrorCause7 = new AppsErrorCause("AppTypeError", 6);
        AppTypeError = appsErrorCause7;
        AppsErrorCause appsErrorCause8 = new AppsErrorCause("AppScopeError", 7);
        AppScopeError = appsErrorCause8;
        AppsErrorCause appsErrorCause9 = new AppsErrorCause("PermissionError", 8);
        PermissionError = appsErrorCause9;
        AppsErrorCause appsErrorCause10 = new AppsErrorCause("AppKeyTypeError", 9);
        AppKeyTypeError = appsErrorCause10;
        AppsErrorCause appsErrorCause11 = new AppsErrorCause("AppChannelNotConnected", 10);
        AppChannelNotConnected = appsErrorCause11;
        AppsErrorCause appsErrorCause12 = new AppsErrorCause("AuthError", 11);
        AuthError = appsErrorCause12;
        AppsErrorCause appsErrorCause13 = new AppsErrorCause("NotRegisteredUser", 12);
        NotRegisteredUser = appsErrorCause13;
        AppsErrorCause appsErrorCause14 = new AppsErrorCause("InvalidScope", 13);
        InvalidScope = appsErrorCause14;
        AppsErrorCause appsErrorCause15 = new AppsErrorCause("AccountTermsError", 14);
        AccountTermsError = appsErrorCause15;
        AppsErrorCause appsErrorCause16 = new AppsErrorCause("LoginRequired", 15);
        LoginRequired = appsErrorCause16;
        AppsErrorCause appsErrorCause17 = new AppsErrorCause("InvalidShippingAddressId", 16);
        InvalidShippingAddressId = appsErrorCause17;
        AppsErrorCause appsErrorCause18 = new AppsErrorCause("Unknown", 17);
        Unknown = appsErrorCause18;
        $VALUES = new AppsErrorCause[]{appsErrorCause, appsErrorCause2, appsErrorCause3, appsErrorCause4, appsErrorCause5, appsErrorCause6, appsErrorCause7, appsErrorCause8, appsErrorCause9, appsErrorCause10, appsErrorCause11, appsErrorCause12, appsErrorCause13, appsErrorCause14, appsErrorCause15, appsErrorCause16, appsErrorCause17, appsErrorCause18};
    }

    public static AppsErrorCause valueOf(String str) {
        return (AppsErrorCause) Enum.valueOf(AppsErrorCause.class, str);
    }

    public static AppsErrorCause[] values() {
        return (AppsErrorCause[]) $VALUES.clone();
    }
}
