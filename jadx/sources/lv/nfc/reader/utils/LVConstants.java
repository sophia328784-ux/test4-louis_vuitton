package lv.nfc.reader.utils;

import defpackage.a;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes4.dex */
public class LVConstants {
    public static final String AURA_ID = "auraId";
    public static final String COOKIE_HEADER = "Cookie";
    public static final String LV_CLIENT_ID_KEY = "client_id";
    public static final String LV_CLIENT_SECRET_KEY = "client_secret";
    public static final String LV_JSON_KEY = "Accept";
    public static final String LV_JSON_VALUE = "application/json; charset=utf-8";
    public static final String SFID_ACCESS_TOKEN = "sfid_access_token";
    public static final String SLAS_ACCESS_TOKEN = "slas_access_token";
    public static final String USER_AGENT = "user-agent";

    private static String createCookieHeader(String str, String str2) {
        if (str.isEmpty() && str2.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (!str.isEmpty()) {
            sb.append("sfid_access_token=");
            sb.append(str);
        }
        if (!str2.isEmpty()) {
            if (sb.length() > 0) {
                sb.append("; ");
            }
            a.B(sb, SLAS_ACCESS_TOKEN, "=", str2);
        }
        return sb.toString();
    }

    public static Map<String, String> createHeaders(String str, String str2, String str3, String str4, String str5, String str6) {
        return new HashMap<String, String>(str, str2, str3, str4, str5, str6) { // from class: lv.nfc.reader.utils.LVConstants.1
            final /* synthetic */ String val$auraId;
            final /* synthetic */ String val$clientID;
            final /* synthetic */ String val$clientSecret;
            final /* synthetic */ String val$sfidToken;
            final /* synthetic */ String val$slasToken;
            final /* synthetic */ String val$userAgent;

            {
                this.val$sfidToken = str;
                this.val$slasToken = str2;
                this.val$clientID = str3;
                this.val$clientSecret = str4;
                this.val$userAgent = str5;
                this.val$auraId = str6;
                put(LVConstants.SFID_ACCESS_TOKEN, str);
                put(LVConstants.SLAS_ACCESS_TOKEN, str2);
                put(LVConstants.LV_CLIENT_ID_KEY, str3);
                put(LVConstants.LV_CLIENT_SECRET_KEY, str4);
                put(LVConstants.USER_AGENT, str5);
                put(LVConstants.AURA_ID, str6);
            }
        };
    }

    public static Request createPostRequest(HttpUrl httpUrl, Map<String, String> map, RequestBody requestBody) {
        String orDefault = map.getOrDefault(USER_AGENT, "");
        String orDefault2 = map.getOrDefault(SFID_ACCESS_TOKEN, "");
        String orDefault3 = map.getOrDefault(SLAS_ACCESS_TOKEN, "");
        String orDefault4 = map.getOrDefault(AURA_ID, "");
        String strCreateCookieHeader = createCookieHeader(orDefault2, orDefault3);
        Request.Builder builder = new Request.Builder();
        httpUrl.getClass();
        builder.f76974a = httpUrl;
        requestBody.getClass();
        builder.c("POST", requestBody);
        builder.a(LV_JSON_KEY, LV_JSON_VALUE);
        String orDefault5 = map.getOrDefault(LV_CLIENT_ID_KEY, "");
        Objects.requireNonNull(orDefault5);
        builder.a(LV_CLIENT_ID_KEY, orDefault5);
        String orDefault6 = map.getOrDefault(LV_CLIENT_SECRET_KEY, "");
        Objects.requireNonNull(orDefault6);
        builder.a(LV_CLIENT_SECRET_KEY, orDefault6);
        if (!orDefault2.isEmpty()) {
            builder.a(SFID_ACCESS_TOKEN, orDefault2);
        }
        if (!orDefault3.isEmpty()) {
            builder.a(SLAS_ACCESS_TOKEN, orDefault3);
        }
        if (!orDefault4.isEmpty()) {
            builder.a(AURA_ID, orDefault4);
        }
        if (!strCreateCookieHeader.isEmpty()) {
            builder.a(COOKIE_HEADER, strCreateCookieHeader);
        }
        if (!orDefault.isEmpty()) {
            builder.a(USER_AGENT, orDefault);
        }
        return new Request(builder);
    }

    public static Request createRequest(HttpUrl httpUrl, Map<String, String> map) {
        String orDefault = map.getOrDefault(USER_AGENT, "");
        String orDefault2 = map.getOrDefault(SFID_ACCESS_TOKEN, "");
        String orDefault3 = map.getOrDefault(SLAS_ACCESS_TOKEN, "");
        String orDefault4 = map.getOrDefault(AURA_ID, "");
        String strCreateCookieHeader = createCookieHeader(orDefault2, orDefault3);
        Request.Builder builder = new Request.Builder();
        httpUrl.getClass();
        builder.f76974a = httpUrl;
        builder.c("GET", null);
        builder.a(LV_JSON_KEY, LV_JSON_VALUE);
        String orDefault5 = map.getOrDefault(LV_CLIENT_ID_KEY, "");
        Objects.requireNonNull(orDefault5);
        builder.a(LV_CLIENT_ID_KEY, orDefault5);
        String orDefault6 = map.getOrDefault(LV_CLIENT_SECRET_KEY, "");
        Objects.requireNonNull(orDefault6);
        builder.a(LV_CLIENT_SECRET_KEY, orDefault6);
        if (!orDefault2.isEmpty()) {
            builder.a(SFID_ACCESS_TOKEN, orDefault2);
        }
        if (!orDefault3.isEmpty()) {
            builder.a(SLAS_ACCESS_TOKEN, orDefault3);
        }
        if (!orDefault4.isEmpty()) {
            builder.a(AURA_ID, orDefault4);
        }
        if (!strCreateCookieHeader.isEmpty()) {
            builder.a(COOKIE_HEADER, strCreateCookieHeader);
        }
        if (!orDefault.isEmpty()) {
            builder.a(USER_AGENT, orDefault);
        }
        return new Request(builder);
    }

    public static Map<String, String> createHeaders(String str, String str2, String str3, String str4) {
        return createHeaders(str, null, str2, str3, str4, null);
    }
}
