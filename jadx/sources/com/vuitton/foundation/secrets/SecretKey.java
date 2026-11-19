package com.vuitton.foundation.secrets;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u001c\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcom/vuitton/foundation/secrets/SecretKey;", "", "APPSFLYER_KEY", "DYNATRACE_APP_ID_PREPROD", "DYNATRACE_APP_ID_PROD", "DYNATRACE_BEACON_URL", "TINGYUN_PREPROD_APP_KEY", "TINGYUN_PROD_APP_KEY", "TINGYUN_HOST", "LV_AUTH_PREPROD_USERNAME", "LV_AUTH_PREPROD_PASSWORD", "GOOGLE_SIGN_IN_CLIENT_ID_PREPROD", "GOOGLE_SIGN_IN_CLIENT_ID_PROD", "BATCH_API_KEY_PREPROD", "BATCH_API_KEY_PROD", "LINE_CHANNEL_ID_PREPROD", "LINE_CHANNEL_ID_PROD", "KAKAO_NATIVE_APP_KEY_PREPROD", "KAKAO_NATIVE_APP_KEY_PROD", "MULESOFT_CARESERVICES_AUTH_CLIENT_ID", "MULESOFT_CARESERVICES_CLIENT_ID_PREPROD", "MULESOFT_CARESERVICES_CLIENT_SECRET_INTEGRATION", "MULESOFT_CARESERVICES_CLIENT_SECRET_PROD", "NFC_SDK_CLIENT_ID", "NFC_SDK_CLIENT_SECRET", "DY_API_KEY_US_PREPROD", "DY_API_KEY_US_PROD", "DY_API_KEY_EU_PREPROD", "DY_API_KEY_EU_PROD", "secrets"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SecretKey {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SecretKey[] $VALUES;
    public static final SecretKey APPSFLYER_KEY;
    public static final SecretKey BATCH_API_KEY_PREPROD;
    public static final SecretKey BATCH_API_KEY_PROD;
    public static final SecretKey DYNATRACE_APP_ID_PREPROD;
    public static final SecretKey DYNATRACE_APP_ID_PROD;
    public static final SecretKey DYNATRACE_BEACON_URL;
    public static final SecretKey DY_API_KEY_EU_PREPROD;
    public static final SecretKey DY_API_KEY_EU_PROD;
    public static final SecretKey DY_API_KEY_US_PREPROD;
    public static final SecretKey DY_API_KEY_US_PROD;
    public static final SecretKey GOOGLE_SIGN_IN_CLIENT_ID_PREPROD;
    public static final SecretKey GOOGLE_SIGN_IN_CLIENT_ID_PROD;
    public static final SecretKey KAKAO_NATIVE_APP_KEY_PREPROD;
    public static final SecretKey KAKAO_NATIVE_APP_KEY_PROD;
    public static final SecretKey LINE_CHANNEL_ID_PREPROD;
    public static final SecretKey LINE_CHANNEL_ID_PROD;
    public static final SecretKey LV_AUTH_PREPROD_PASSWORD;
    public static final SecretKey LV_AUTH_PREPROD_USERNAME;
    public static final SecretKey MULESOFT_CARESERVICES_AUTH_CLIENT_ID;
    public static final SecretKey MULESOFT_CARESERVICES_CLIENT_ID_PREPROD;
    public static final SecretKey MULESOFT_CARESERVICES_CLIENT_SECRET_INTEGRATION;
    public static final SecretKey MULESOFT_CARESERVICES_CLIENT_SECRET_PROD;
    public static final SecretKey NFC_SDK_CLIENT_ID;
    public static final SecretKey NFC_SDK_CLIENT_SECRET;
    public static final SecretKey TINGYUN_HOST;
    public static final SecretKey TINGYUN_PREPROD_APP_KEY;
    public static final SecretKey TINGYUN_PROD_APP_KEY;

    static {
        SecretKey secretKey = new SecretKey("APPSFLYER_KEY", 0);
        APPSFLYER_KEY = secretKey;
        SecretKey secretKey2 = new SecretKey("DYNATRACE_APP_ID_PREPROD", 1);
        DYNATRACE_APP_ID_PREPROD = secretKey2;
        SecretKey secretKey3 = new SecretKey("DYNATRACE_APP_ID_PROD", 2);
        DYNATRACE_APP_ID_PROD = secretKey3;
        SecretKey secretKey4 = new SecretKey("DYNATRACE_BEACON_URL", 3);
        DYNATRACE_BEACON_URL = secretKey4;
        SecretKey secretKey5 = new SecretKey("TINGYUN_PREPROD_APP_KEY", 4);
        TINGYUN_PREPROD_APP_KEY = secretKey5;
        SecretKey secretKey6 = new SecretKey("TINGYUN_PROD_APP_KEY", 5);
        TINGYUN_PROD_APP_KEY = secretKey6;
        SecretKey secretKey7 = new SecretKey("TINGYUN_HOST", 6);
        TINGYUN_HOST = secretKey7;
        SecretKey secretKey8 = new SecretKey("LV_AUTH_PREPROD_USERNAME", 7);
        LV_AUTH_PREPROD_USERNAME = secretKey8;
        SecretKey secretKey9 = new SecretKey("LV_AUTH_PREPROD_PASSWORD", 8);
        LV_AUTH_PREPROD_PASSWORD = secretKey9;
        SecretKey secretKey10 = new SecretKey("GOOGLE_SIGN_IN_CLIENT_ID_PREPROD", 9);
        GOOGLE_SIGN_IN_CLIENT_ID_PREPROD = secretKey10;
        SecretKey secretKey11 = new SecretKey("GOOGLE_SIGN_IN_CLIENT_ID_PROD", 10);
        GOOGLE_SIGN_IN_CLIENT_ID_PROD = secretKey11;
        SecretKey secretKey12 = new SecretKey("BATCH_API_KEY_PREPROD", 11);
        BATCH_API_KEY_PREPROD = secretKey12;
        SecretKey secretKey13 = new SecretKey("BATCH_API_KEY_PROD", 12);
        BATCH_API_KEY_PROD = secretKey13;
        SecretKey secretKey14 = new SecretKey("LINE_CHANNEL_ID_PREPROD", 13);
        LINE_CHANNEL_ID_PREPROD = secretKey14;
        SecretKey secretKey15 = new SecretKey("LINE_CHANNEL_ID_PROD", 14);
        LINE_CHANNEL_ID_PROD = secretKey15;
        SecretKey secretKey16 = new SecretKey("KAKAO_NATIVE_APP_KEY_PREPROD", 15);
        KAKAO_NATIVE_APP_KEY_PREPROD = secretKey16;
        SecretKey secretKey17 = new SecretKey("KAKAO_NATIVE_APP_KEY_PROD", 16);
        KAKAO_NATIVE_APP_KEY_PROD = secretKey17;
        SecretKey secretKey18 = new SecretKey("MULESOFT_CARESERVICES_AUTH_CLIENT_ID", 17);
        MULESOFT_CARESERVICES_AUTH_CLIENT_ID = secretKey18;
        SecretKey secretKey19 = new SecretKey("MULESOFT_CARESERVICES_CLIENT_ID_PREPROD", 18);
        MULESOFT_CARESERVICES_CLIENT_ID_PREPROD = secretKey19;
        SecretKey secretKey20 = new SecretKey("MULESOFT_CARESERVICES_CLIENT_SECRET_INTEGRATION", 19);
        MULESOFT_CARESERVICES_CLIENT_SECRET_INTEGRATION = secretKey20;
        SecretKey secretKey21 = new SecretKey("MULESOFT_CARESERVICES_CLIENT_SECRET_PROD", 20);
        MULESOFT_CARESERVICES_CLIENT_SECRET_PROD = secretKey21;
        SecretKey secretKey22 = new SecretKey("NFC_SDK_CLIENT_ID", 21);
        NFC_SDK_CLIENT_ID = secretKey22;
        SecretKey secretKey23 = new SecretKey("NFC_SDK_CLIENT_SECRET", 22);
        NFC_SDK_CLIENT_SECRET = secretKey23;
        SecretKey secretKey24 = new SecretKey("DY_API_KEY_US_PREPROD", 23);
        DY_API_KEY_US_PREPROD = secretKey24;
        SecretKey secretKey25 = new SecretKey("DY_API_KEY_US_PROD", 24);
        DY_API_KEY_US_PROD = secretKey25;
        SecretKey secretKey26 = new SecretKey("DY_API_KEY_EU_PREPROD", 25);
        DY_API_KEY_EU_PREPROD = secretKey26;
        SecretKey secretKey27 = new SecretKey("DY_API_KEY_EU_PROD", 26);
        DY_API_KEY_EU_PROD = secretKey27;
        SecretKey[] secretKeyArr = {secretKey, secretKey2, secretKey3, secretKey4, secretKey5, secretKey6, secretKey7, secretKey8, secretKey9, secretKey10, secretKey11, secretKey12, secretKey13, secretKey14, secretKey15, secretKey16, secretKey17, secretKey18, secretKey19, secretKey20, secretKey21, secretKey22, secretKey23, secretKey24, secretKey25, secretKey26, secretKey27};
        $VALUES = secretKeyArr;
        $ENTRIES = EnumEntriesKt.a(secretKeyArr);
    }

    public static SecretKey valueOf(String str) {
        return (SecretKey) Enum.valueOf(SecretKey.class, str);
    }

    public static SecretKey[] values() {
        return (SecretKey[]) $VALUES.clone();
    }
}
