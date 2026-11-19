package com.kakao.sdk.common.model;

import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/kakao/sdk/common/model/ClientErrorCause;", "", "Unknown", "Cancelled", "TokenNotFound", "NotSupported", "BadParameter", "IllegalState", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ClientErrorCause {
    private static final /* synthetic */ ClientErrorCause[] $VALUES;

    @Description("bad parameters.")
    public static final ClientErrorCause BadParameter;

    @Description("user cancelled.")
    public static final ClientErrorCause Cancelled;

    @Description("illegal state.")
    public static final ClientErrorCause IllegalState;

    @Description("user is unauthenticated.")
    public static final ClientErrorCause NotSupported;

    @Description("authentication tokens don't exist.")
    public static final ClientErrorCause TokenNotFound;

    @Description("unknown error.")
    public static final ClientErrorCause Unknown;

    static {
        ClientErrorCause clientErrorCause = new ClientErrorCause("Unknown", 0);
        Unknown = clientErrorCause;
        ClientErrorCause clientErrorCause2 = new ClientErrorCause("Cancelled", 1);
        Cancelled = clientErrorCause2;
        ClientErrorCause clientErrorCause3 = new ClientErrorCause("TokenNotFound", 2);
        TokenNotFound = clientErrorCause3;
        ClientErrorCause clientErrorCause4 = new ClientErrorCause("NotSupported", 3);
        NotSupported = clientErrorCause4;
        ClientErrorCause clientErrorCause5 = new ClientErrorCause("BadParameter", 4);
        BadParameter = clientErrorCause5;
        ClientErrorCause clientErrorCause6 = new ClientErrorCause("IllegalState", 5);
        IllegalState = clientErrorCause6;
        $VALUES = new ClientErrorCause[]{clientErrorCause, clientErrorCause2, clientErrorCause3, clientErrorCause4, clientErrorCause5, clientErrorCause6};
    }

    public static ClientErrorCause valueOf(String str) {
        return (ClientErrorCause) Enum.valueOf(ClientErrorCause.class, str);
    }

    public static ClientErrorCause[] values() {
        return (ClientErrorCause[]) $VALUES.clone();
    }
}
