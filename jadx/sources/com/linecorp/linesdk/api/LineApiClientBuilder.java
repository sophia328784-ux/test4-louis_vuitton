package com.linecorp.linesdk.api;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.linecorp.linesdk.ManifestParser;
import com.linecorp.linesdk.api.internal.AutoRefreshLineApiClientProxy;
import com.linecorp.linesdk.api.internal.LineApiClientImpl;
import com.linecorp.linesdk.internal.AccessTokenCache;
import com.linecorp.linesdk.internal.EncryptorHolder;
import com.linecorp.linesdk.internal.nwclient.LineAuthenticationApiClient;
import com.linecorp.linesdk.internal.nwclient.TalkApiClient;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class LineApiClientBuilder {
    private Uri apiBaseUri;
    private final String channelId;
    private final Context context;
    private boolean isEncryptorPreparationDisabled;
    private boolean isTokenAutoRefreshDisabled;
    private Uri openidDiscoveryDocumentUrl;

    public LineApiClientBuilder(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            md.n("channel id is empty");
            throw null;
        }
        this.context = context.getApplicationContext();
        this.channelId = str;
        LineEnvConfig lineDefaultEnvConfig = new ManifestParser().parse(context);
        lineDefaultEnvConfig = lineDefaultEnvConfig == null ? new LineDefaultEnvConfig() : lineDefaultEnvConfig;
        this.openidDiscoveryDocumentUrl = Uri.parse(lineDefaultEnvConfig.getOpenIdDiscoveryDocumentUrl());
        this.apiBaseUri = Uri.parse(lineDefaultEnvConfig.getApiServerBaseUri());
    }

    @Deprecated
    public LineApiClientBuilder apiBaseUri(Uri uri) {
        if (uri != null) {
            this.apiBaseUri = uri;
        }
        return this;
    }

    public LineApiClient build() {
        if (!this.isEncryptorPreparationDisabled) {
            EncryptorHolder.a(this.context);
        }
        LineApiClientImpl lineApiClientImpl = new LineApiClientImpl(this.channelId, new LineAuthenticationApiClient(this.context, this.openidDiscoveryDocumentUrl, this.apiBaseUri), new TalkApiClient(this.context, this.apiBaseUri), new AccessTokenCache(this.context, this.channelId));
        return this.isTokenAutoRefreshDisabled ? lineApiClientImpl : AutoRefreshLineApiClientProxy.a(lineApiClientImpl);
    }

    public LineApiClientBuilder disableEncryptorPreparation() {
        this.isEncryptorPreparationDisabled = true;
        return this;
    }

    public LineApiClientBuilder disableTokenAutoRefresh() {
        this.isTokenAutoRefreshDisabled = true;
        return this;
    }

    @Deprecated
    public LineApiClientBuilder openidDiscoveryDocumentUrl(Uri uri) {
        if (uri != null) {
            this.openidDiscoveryDocumentUrl = uri;
        }
        return this;
    }
}
