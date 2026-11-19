package com.linecorp.linesdk.auth.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.linecorp.linesdk.LineAccessToken;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponse;
import com.linecorp.linesdk.LineApiResponseCode;
import com.linecorp.linesdk.LineCredential;
import com.linecorp.linesdk.LineIdToken;
import com.linecorp.linesdk.LineProfile;
import com.linecorp.linesdk.Scope;
import com.linecorp.linesdk.auth.LineAuthenticationConfig;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.auth.LineLoginResult;
import com.linecorp.linesdk.internal.AccessTokenCache;
import com.linecorp.linesdk.internal.IdTokenKeyType;
import com.linecorp.linesdk.internal.InternalAccessToken;
import com.linecorp.linesdk.internal.IssueAccessTokenResult;
import com.linecorp.linesdk.internal.OpenIdDiscoveryDocument;
import com.linecorp.linesdk.internal.nwclient.IdTokenValidator;
import com.linecorp.linesdk.internal.nwclient.LineAuthenticationApiClient;
import com.linecorp.linesdk.internal.nwclient.TalkApiClient;
import com.linecorp.linesdk.internal.nwclient.core.ChannelServiceHttpClient;
import com.linecorp.linesdk.internal.pkce.PKCECode;
import com.linecorp.linesdk.utils.UriUtils;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.mt;
import defpackage.x1;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import lv.nfc.reader.utils.LVConstants;

/* JADX INFO: loaded from: classes2.dex */
class LineAuthenticationController {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Intent f36155i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LineAuthenticationActivity f36156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LineAuthenticationConfig f36157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LineAuthenticationApiClient f36158c;
    public final TalkApiClient d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BrowserAuthenticationApi f36159e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AccessTokenCache f36160f;
    public final LineAuthenticationParams g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LineAuthenticationStatus f36161h;

    public class AccessTokenRequestTask extends AsyncTask<BrowserAuthenticationApi.Result, Void, LineLoginResult> {
        private AccessTokenRequestTask() {
        }

        private void validateIdToken(LineIdToken lineIdToken, String str) {
            LineAuthenticationApiClient lineAuthenticationApiClient = LineAuthenticationController.this.f36158c;
            Uri uriC = UriUtils.c(lineAuthenticationApiClient.f36224e, new String[0]);
            ChannelServiceHttpClient channelServiceHttpClient = lineAuthenticationApiClient.f36222b;
            Map map = Collections.EMPTY_MAP;
            LineApiResponse lineApiResponseA = channelServiceHttpClient.a(uriC, map, map, LineAuthenticationApiClient.f36219i);
            if (!lineApiResponseA.d()) {
                lineApiResponseA.toString();
            }
            if (!lineApiResponseA.d()) {
                StringBuilder sb = new StringBuilder("Failed to get OpenId Discovery Document.  Response Code: ");
                sb.append(lineApiResponseA.f36062a);
                LineApiError lineApiError = lineApiResponseA.f36064c;
                sb.append(" Error Data: ");
                sb.append(lineApiError);
                throw new RuntimeException(sb.toString());
            }
            OpenIdDiscoveryDocument openIdDiscoveryDocument = (OpenIdDiscoveryDocument) lineApiResponseA.c();
            IdTokenValidator.Builder builder = new IdTokenValidator.Builder();
            builder.f36212a = lineIdToken;
            builder.f36213b = openIdDiscoveryDocument.f36195a;
            builder.f36214c = str;
            LineAuthenticationController lineAuthenticationController = LineAuthenticationController.this;
            builder.d = lineAuthenticationController.f36157b.f36114b;
            builder.f36215e = lineAuthenticationController.f36161h.f36164e;
            IdTokenValidator idTokenValidator = new IdTokenValidator(builder);
            LineIdToken lineIdToken2 = idTokenValidator.f36208a;
            String str2 = lineIdToken2.f36072c;
            Date date = lineIdToken2.g;
            String str3 = idTokenValidator.f36209b;
            if (!str3.equals(str2)) {
                IdTokenValidator.a("OpenId issuer does not match.", str3, str2);
                throw null;
            }
            String str4 = lineIdToken2.d;
            String str5 = idTokenValidator.f36210c;
            if (str5 != null && !str5.equals(str4)) {
                IdTokenValidator.a("OpenId subject does not match.", str5, str4);
                throw null;
            }
            String str6 = lineIdToken2.f36073e;
            String str7 = idTokenValidator.d;
            if (!str7.equals(str6)) {
                IdTokenValidator.a("OpenId audience does not match.", str7, str6);
                throw null;
            }
            String str8 = lineIdToken2.f36076i;
            String str9 = idTokenValidator.f36211e;
            if (!(str9 == null && str8 == null) && (str9 == null || !str9.equals(str8))) {
                IdTokenValidator.a("OpenId nonce does not match.", str9, str8);
                throw null;
            }
            Date date2 = new Date();
            Date date3 = lineIdToken2.f36074f;
            if (date.getTime() > date2.getTime() + 300000) {
                x1.n(date, "OpenId issuedAt is after current time: ");
            } else {
                if (date3.getTime() >= date2.getTime() - 300000) {
                    return;
                }
                x1.n(date3, "OpenId expiresAt is before current time: ");
            }
        }

        @Override // android.os.AsyncTask
        public LineLoginResult doInBackground(BrowserAuthenticationApi.Result... resultArr) {
            LineProfile lineProfile;
            String str;
            BrowserAuthenticationApi.Result result = resultArr[0];
            if (TextUtils.isEmpty(result.f36145a)) {
                mt.i("requestToken is null. Please check result by isSuccess before.");
                return null;
            }
            String str2 = result.f36145a;
            LineAuthenticationStatus lineAuthenticationStatus = LineAuthenticationController.this.f36161h;
            PKCECode pKCECode = lineAuthenticationStatus.f36162b;
            String str3 = lineAuthenticationStatus.f36163c;
            if (TextUtils.isEmpty(str2) || pKCECode == null || TextUtils.isEmpty(str3)) {
                return LineLoginResult.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError("Requested data is missing."));
            }
            LineAuthenticationController lineAuthenticationController = LineAuthenticationController.this;
            LineAuthenticationApiClient lineAuthenticationApiClient = lineAuthenticationController.f36158c;
            String str4 = lineAuthenticationController.f36157b.f36114b;
            Uri uriC = UriUtils.c(lineAuthenticationApiClient.f36221a, "oauth2/v2.1", "token");
            LinkedHashMap linkedHashMapB = UriUtils.b("grant_type", "authorization_code", m.v, str2, "redirect_uri", str3, LVConstants.LV_CLIENT_ID_KEY, str4, "code_verifier", pKCECode.f36246b, "id_token_key_type", IdTokenKeyType.JWK.name(), "client_version", "LINE SDK Android v5.11.1");
            ChannelServiceHttpClient channelServiceHttpClient = lineAuthenticationApiClient.f36222b;
            Map map = Collections.EMPTY_MAP;
            LineApiResponse lineApiResponseG = channelServiceHttpClient.g(uriC, linkedHashMapB, lineAuthenticationApiClient.f36223c);
            if (!lineApiResponseG.d()) {
                return LineLoginResult.a(lineApiResponseG.f36062a, lineApiResponseG.f36064c);
            }
            IssueAccessTokenResult issueAccessTokenResult = (IssueAccessTokenResult) lineApiResponseG.c();
            InternalAccessToken internalAccessToken = issueAccessTokenResult.f36179a;
            List list = issueAccessTokenResult.f36180b;
            if (list.contains(Scope.f36100c)) {
                TalkApiClient talkApiClient = LineAuthenticationController.this.d;
                LineApiResponse lineApiResponseA = talkApiClient.f36236b.a(UriUtils.c(talkApiClient.f36235a, "v2", "profile"), TalkApiClient.a(internalAccessToken), Collections.EMPTY_MAP, TalkApiClient.f36228c);
                if (!lineApiResponseA.d()) {
                    return LineLoginResult.a(lineApiResponseA.f36062a, lineApiResponseA.f36064c);
                }
                lineProfile = (LineProfile) lineApiResponseA.c();
                str = lineProfile.f36096b;
            } else {
                lineProfile = null;
                str = null;
            }
            LineAuthenticationController.this.f36160f.b(internalAccessToken);
            LineIdToken lineIdToken = issueAccessTokenResult.f36181c;
            if (lineIdToken != null) {
                try {
                    validateIdToken(lineIdToken, str);
                } catch (Exception e2) {
                    return LineLoginResult.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError(e2.getMessage()));
                }
            }
            LineLoginResult.Builder builder = new LineLoginResult.Builder();
            builder.f36134b = LineAuthenticationController.this.f36161h.f36164e;
            builder.f36135c = lineProfile;
            builder.d = lineIdToken;
            if (TextUtils.isEmpty(result.f36145a)) {
                mt.i("requestToken is null. Please check result by isSuccess before.");
                return null;
            }
            builder.f36136e = result.f36146b;
            builder.f36137f = new LineCredential(new LineAccessToken(internalAccessToken.f36176a, internalAccessToken.f36177b, internalAccessToken.f36178c), list);
            return new LineLoginResult(builder);
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(LineLoginResult lineLoginResult) {
            LineAuthenticationController lineAuthenticationController = LineAuthenticationController.this;
            lineAuthenticationController.f36161h.f36165f = LineAuthenticationStatus.Status.INTENT_HANDLED;
            lineAuthenticationController.f36156a.a(lineLoginResult);
        }
    }

    public class CancelAuthenticationTask implements Runnable {
        private CancelAuthenticationTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LineAuthenticationController lineAuthenticationController = LineAuthenticationController.this;
            if (lineAuthenticationController.f36161h.f36165f == LineAuthenticationStatus.Status.INTENT_RECEIVED || lineAuthenticationController.f36156a.isFinishing()) {
                return;
            }
            Intent intent = LineAuthenticationController.f36155i;
            LineAuthenticationController lineAuthenticationController2 = LineAuthenticationController.this;
            if (intent == null) {
                lineAuthenticationController2.f36156a.a(LineLoginResult.a(LineApiResponseCode.CANCEL, LineApiError.f36059e));
            } else {
                lineAuthenticationController2.a(intent);
                LineAuthenticationController.f36155i = null;
            }
        }
    }

    public LineAuthenticationController(LineAuthenticationActivity lineAuthenticationActivity, LineAuthenticationConfig lineAuthenticationConfig, LineAuthenticationStatus lineAuthenticationStatus, LineAuthenticationParams lineAuthenticationParams) {
        Context applicationContext = lineAuthenticationActivity.getApplicationContext();
        Uri uri = lineAuthenticationConfig.f36115c;
        Uri uri2 = lineAuthenticationConfig.d;
        LineAuthenticationApiClient lineAuthenticationApiClient = new LineAuthenticationApiClient(applicationContext, uri, uri2);
        TalkApiClient talkApiClient = new TalkApiClient(lineAuthenticationActivity.getApplicationContext(), uri2);
        BrowserAuthenticationApi browserAuthenticationApi = new BrowserAuthenticationApi(lineAuthenticationStatus);
        AccessTokenCache accessTokenCache = new AccessTokenCache(lineAuthenticationActivity.getApplicationContext(), lineAuthenticationConfig.f36114b);
        this.f36156a = lineAuthenticationActivity;
        this.f36157b = lineAuthenticationConfig;
        this.f36158c = lineAuthenticationApiClient;
        this.d = talkApiClient;
        this.f36159e = browserAuthenticationApi;
        this.f36160f = accessTokenCache;
        this.f36161h = lineAuthenticationStatus;
        this.g = lineAuthenticationParams;
    }

    public final void a(Intent intent) {
        BrowserAuthenticationApi.Result result;
        LineLoginResult lineLoginResultA;
        LineAuthenticationStatus.Status status = LineAuthenticationStatus.Status.INTENT_RECEIVED;
        LineAuthenticationStatus lineAuthenticationStatus = this.f36161h;
        lineAuthenticationStatus.f36165f = status;
        BrowserAuthenticationApi browserAuthenticationApi = this.f36159e;
        browserAuthenticationApi.getClass();
        Uri data = intent.getData();
        if (data == null) {
            result = new BrowserAuthenticationApi.Result(null, null, null, null, "Illegal redirection from external application.");
        } else {
            String str = browserAuthenticationApi.f36138a.d;
            String queryParameter = data.getQueryParameter("state");
            if (str == null || !str.equals(queryParameter)) {
                result = new BrowserAuthenticationApi.Result(null, null, null, null, "Illegal parameter value of 'state'.");
            } else {
                String queryParameter2 = data.getQueryParameter(m.v);
                String queryParameter3 = data.getQueryParameter("friendship_status_changed");
                result = !TextUtils.isEmpty(queryParameter2) ? new BrowserAuthenticationApi.Result(!TextUtils.isEmpty(queryParameter3) ? Boolean.valueOf(Boolean.parseBoolean(queryParameter3)) : null, queryParameter2, null, null, null) : new BrowserAuthenticationApi.Result(null, null, data.getQueryParameter("error"), data.getQueryParameter("error_description"), null);
            }
        }
        String str2 = result.f36145a;
        if (!TextUtils.isEmpty(str2)) {
            new AccessTokenRequestTask().execute(result);
            return;
        }
        lineAuthenticationStatus.f36165f = LineAuthenticationStatus.Status.INTENT_HANDLED;
        if ("ACCESS_DENIED".equalsIgnoreCase(result.f36147c)) {
            lineLoginResultA = LineLoginResult.a(LineApiResponseCode.CANCEL, LineApiError.f36059e);
        } else if (TextUtils.isEmpty(result.f36148e) && TextUtils.isEmpty(str2)) {
            lineLoginResultA = LineLoginResult.a(LineApiResponseCode.AUTHENTICATION_AGENT_ERROR, result.a());
        } else {
            lineLoginResultA = LineLoginResult.a(LineApiResponseCode.INTERNAL_ERROR, result.a());
        }
        this.f36156a.a(lineLoginResultA);
    }
}
