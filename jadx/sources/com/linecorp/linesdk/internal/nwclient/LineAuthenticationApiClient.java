package com.linecorp.linesdk.internal.nwclient;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.linecorp.linesdk.LineIdToken;
import com.linecorp.linesdk.Scope;
import com.linecorp.linesdk.internal.AccessTokenVerificationResult;
import com.linecorp.linesdk.internal.InternalAccessToken;
import com.linecorp.linesdk.internal.IssueAccessTokenResult;
import com.linecorp.linesdk.internal.RefreshTokenResult;
import com.linecorp.linesdk.internal.nwclient.core.ChannelServiceHttpClient;
import com.linecorp.linesdk.internal.nwclient.core.ResponseDataParser;
import defpackage.tr;
import io.jsonwebtoken.Jwts;
import java.util.List;
import lv.nfc.reader.utils.LVConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LineAuthenticationApiClient {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ResponseDataParser f36217f = null;
    public static final ResponseDataParser g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ResponseDataParser f36218h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ResponseDataParser f36219i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ResponseDataParser f36220j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f36221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChannelServiceHttpClient f36222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ResponseDataParser f36223c;
    public final OpenIdSigningKeyResolver d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Uri f36224e;

    public class IssueAccessTokenResultParser extends JsonToObjectBaseResponseParser<IssueAccessTokenResult> {
        public IssueAccessTokenResultParser() {
        }

        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) throws JSONException {
            String string = jSONObject.getString("token_type");
            if (!"Bearer".equals(string)) {
                throw new JSONException(tr.g("Illegal token type. token_type=", string));
            }
            InternalAccessToken internalAccessToken = new InternalAccessToken(jSONObject.getString("access_token"), 1000 * jSONObject.getLong("expires_in"), System.currentTimeMillis(), jSONObject.getString("refresh_token"));
            List listC = Scope.c(jSONObject.getString("scope"));
            try {
                String strOptString = jSONObject.optString("id_token");
                LineIdToken lineIdTokenA = null;
                if (!TextUtils.isEmpty(strOptString)) {
                    OpenIdSigningKeyResolver openIdSigningKeyResolver = LineAuthenticationApiClient.this.d;
                    if (!TextUtils.isEmpty(strOptString)) {
                        lineIdTokenA = IdTokenParser.a(strOptString, Jwts.parser().setAllowedClockSkewSeconds(864000000L).setSigningKeyResolver(openIdSigningKeyResolver).parseClaimsJws(strOptString).getBody());
                    }
                }
                return new IssueAccessTokenResult(internalAccessToken, listC, lineIdTokenA);
            } catch (Exception e2) {
                throw new JSONException(e2.getMessage());
            }
        }
    }

    public static class RefreshTokenResultParser extends JsonToObjectBaseResponseParser<RefreshTokenResult> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) throws JSONException {
            String string = jSONObject.getString("token_type");
            if ("Bearer".equals(string)) {
                return new RefreshTokenResult(jSONObject.getString("access_token"), jSONObject.getLong("expires_in") * 1000, jSONObject.getString("refresh_token"), Scope.c(jSONObject.getString("scope")));
            }
            throw new JSONException(tr.g("Illegal token type. token_type=", string));
        }
    }

    public static class VerificationResultParser extends JsonToObjectBaseResponseParser<AccessTokenVerificationResult> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) {
            return new AccessTokenVerificationResult(jSONObject.getString(LVConstants.LV_CLIENT_ID_KEY), jSONObject.getLong("expires_in") * 1000, Scope.c(jSONObject.getString("scope")));
        }
    }

    static {
        new VerificationResultParser();
        g = new RefreshTokenResultParser();
        f36219i = new OpenIdDiscoveryDocumentParser();
        f36220j = new JWKSetParser();
    }

    public LineAuthenticationApiClient(Context context, Uri uri, Uri uri2) {
        ChannelServiceHttpClient channelServiceHttpClient = new ChannelServiceHttpClient(context, "5.11.1");
        this.f36223c = new IssueAccessTokenResultParser();
        this.d = new OpenIdSigningKeyResolver(this);
        this.f36221a = uri2;
        this.f36222b = channelServiceHttpClient;
        this.f36224e = uri;
    }
}
