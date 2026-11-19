package com.linecorp.linesdk.api.internal;

import android.net.Uri;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponse;
import com.linecorp.linesdk.LineApiResponseCode;
import com.linecorp.linesdk.api.LineApiClient;
import com.linecorp.linesdk.internal.AccessTokenCache;
import com.linecorp.linesdk.internal.InternalAccessToken;
import com.linecorp.linesdk.internal.nwclient.LineAuthenticationApiClient;
import com.linecorp.linesdk.internal.nwclient.TalkApiClient;
import com.linecorp.linesdk.internal.nwclient.core.ChannelServiceHttpClient;
import com.linecorp.linesdk.openchat.OpenChatParameters;
import com.linecorp.linesdk.utils.UriUtils;
import defpackage.fc;
import java.util.Collections;
import java.util.LinkedHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LineApiClientImpl implements LineApiClient {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LineApiResponse f36107e = LineApiResponse.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError("access token is null"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LineAuthenticationApiClient f36109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TalkApiClient f36110c;
    public final AccessTokenCache d;

    @FunctionalInterface
    public interface APIWithAccessToken<T> {
        LineApiResponse a(InternalAccessToken internalAccessToken);
    }

    public LineApiClientImpl(String str, LineAuthenticationApiClient lineAuthenticationApiClient, TalkApiClient talkApiClient, AccessTokenCache accessTokenCache) {
        this.f36108a = str;
        this.f36109b = lineAuthenticationApiClient;
        this.f36110c = talkApiClient;
        this.d = accessTokenCache;
    }

    @Override // com.linecorp.linesdk.api.LineApiClient
    public final LineApiResponse a(final OpenChatParameters openChatParameters) {
        return c(new APIWithAccessToken() { // from class: com.linecorp.linesdk.api.internal.a
            @Override // com.linecorp.linesdk.api.internal.LineApiClientImpl.APIWithAccessToken
            public final LineApiResponse a(InternalAccessToken internalAccessToken) {
                String string;
                TalkApiClient talkApiClient = this.f36111a.f36110c;
                Uri uriC = UriUtils.c(talkApiClient.f36235a, "openchat/v1", "openchats");
                ChannelServiceHttpClient channelServiceHttpClient = talkApiClient.f36236b;
                LinkedHashMap linkedHashMapA = TalkApiClient.a(internalAccessToken);
                OpenChatParameters openChatParameters2 = openChatParameters;
                openChatParameters2.getClass();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("name", openChatParameters2.f36256a);
                    jSONObject.put("description", openChatParameters2.f36257b);
                    jSONObject.put("creatorDisplayName", openChatParameters2.f36258c);
                    jSONObject.put("category", openChatParameters2.d.getId());
                    jSONObject.put("allowSearch", openChatParameters2.f36259e);
                    string = jSONObject.toString();
                    string.getClass();
                } catch (JSONException unused) {
                    string = "{}";
                }
                return channelServiceHttpClient.h(uriC, linkedHashMapA, string, TalkApiClient.f36232i);
            }
        });
    }

    @Override // com.linecorp.linesdk.api.LineApiClient
    public final LineApiResponse b() {
        return c(new APIWithAccessToken() { // from class: com.linecorp.linesdk.api.internal.b
            @Override // com.linecorp.linesdk.api.internal.LineApiClientImpl.APIWithAccessToken
            public final LineApiResponse a(InternalAccessToken internalAccessToken) {
                TalkApiClient talkApiClient = this.f36113a.f36110c;
                return talkApiClient.f36236b.a(UriUtils.c(talkApiClient.f36235a, "openchat/v1", "terms/agreement"), TalkApiClient.a(internalAccessToken), Collections.EMPTY_MAP, TalkApiClient.f36231h);
            }
        });
    }

    public final LineApiResponse c(APIWithAccessToken aPIWithAccessToken) {
        try {
            InternalAccessToken internalAccessTokenA = this.d.a();
            return internalAccessTokenA == null ? f36107e : aPIWithAccessToken.a(internalAccessTokenA);
        } catch (Exception e2) {
            return LineApiResponse.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError(fc.g(e2, new StringBuilder("get access token fail:"))));
        }
    }
}
