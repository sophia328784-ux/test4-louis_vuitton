package com.kakao.sdk.common.model;

import com.google.gson.annotations.SerializedName;
import com.kakao.sdk.common.json.UnknownValue;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/kakao/sdk/common/model/AuthErrorCause;", "", "InvalidRequest", "InvalidClient", "InvalidScope", "InvalidGrant", "Misconfigured", "Unauthorized", "AccessDenied", "ServerError", "Unknown", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AuthErrorCause {
    private static final /* synthetic */ AuthErrorCause[] $VALUES;

    @SerializedName("access_denied")
    public static final AuthErrorCause AccessDenied;

    @SerializedName("invalid_client")
    public static final AuthErrorCause InvalidClient;

    @SerializedName("invalid_grant")
    public static final AuthErrorCause InvalidGrant;

    @SerializedName("invalid_request")
    public static final AuthErrorCause InvalidRequest;

    @SerializedName("invalid_scope")
    public static final AuthErrorCause InvalidScope;

    @SerializedName("misconfigured")
    public static final AuthErrorCause Misconfigured;

    @SerializedName("server_error")
    public static final AuthErrorCause ServerError;

    @SerializedName("unauthorized")
    public static final AuthErrorCause Unauthorized;

    @UnknownValue
    public static final AuthErrorCause Unknown;

    static {
        AuthErrorCause authErrorCause = new AuthErrorCause("InvalidRequest", 0);
        InvalidRequest = authErrorCause;
        AuthErrorCause authErrorCause2 = new AuthErrorCause("InvalidClient", 1);
        InvalidClient = authErrorCause2;
        AuthErrorCause authErrorCause3 = new AuthErrorCause("InvalidScope", 2);
        InvalidScope = authErrorCause3;
        AuthErrorCause authErrorCause4 = new AuthErrorCause("InvalidGrant", 3);
        InvalidGrant = authErrorCause4;
        AuthErrorCause authErrorCause5 = new AuthErrorCause("Misconfigured", 4);
        Misconfigured = authErrorCause5;
        AuthErrorCause authErrorCause6 = new AuthErrorCause("Unauthorized", 5);
        Unauthorized = authErrorCause6;
        AuthErrorCause authErrorCause7 = new AuthErrorCause("AccessDenied", 6);
        AccessDenied = authErrorCause7;
        AuthErrorCause authErrorCause8 = new AuthErrorCause("ServerError", 7);
        ServerError = authErrorCause8;
        AuthErrorCause authErrorCause9 = new AuthErrorCause("Unknown", 8);
        Unknown = authErrorCause9;
        $VALUES = new AuthErrorCause[]{authErrorCause, authErrorCause2, authErrorCause3, authErrorCause4, authErrorCause5, authErrorCause6, authErrorCause7, authErrorCause8, authErrorCause9};
    }

    public static AuthErrorCause valueOf(String str) {
        return (AuthErrorCause) Enum.valueOf(AuthErrorCause.class, str);
    }

    public static AuthErrorCause[] values() {
        return (AuthErrorCause[]) $VALUES.clone();
    }
}
