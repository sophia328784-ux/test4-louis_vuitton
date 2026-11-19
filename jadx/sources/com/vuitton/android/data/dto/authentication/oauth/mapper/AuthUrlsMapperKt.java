package com.vuitton.android.data.dto.authentication.oauth.mapper;

import android.net.Uri;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.authentication.oauth.AuthUrlsDto;
import com.vuitton.foundation.model.domain.model.authentication.oauth.AuthenticationUrls;
import com.vuitton.foundation.model.domain.model.authentication.oauth.ClientCredentials;
import java.util.UUID;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AuthUrlsMapperKt {
    public static final AuthenticationUrls a(AuthUrlsDto authUrlsDto) {
        Uri uri;
        authUrlsDto.getClass();
        String str = authUrlsDto.f44561a;
        String str2 = authUrlsDto.f44562b;
        String str3 = str == null ? "" : str;
        String str4 = str2 == null ? "" : str2;
        String queryParameter = null;
        Uri uri2 = str != null ? Uri.parse(str) : null;
        String queryParameter2 = uri2 != null ? uri2.getQueryParameter("client-id") : null;
        String str5 = queryParameter2 == null ? "" : queryParameter2;
        String queryParameter3 = uri2 != null ? uri2.getQueryParameter("state") : null;
        if (queryParameter3 == null) {
            queryParameter3 = "";
        }
        UUID uuidFromString = UUID.fromString(queryParameter3);
        uuidFromString.getClass();
        String queryParameter4 = uri2 != null ? uri2.getQueryParameter("code-challenge") : null;
        String str6 = queryParameter4 == null ? "" : queryParameter4;
        String queryParameter5 = uri2 != null ? uri2.getQueryParameter("redirect-uri") : null;
        String str7 = queryParameter5 == null ? "" : queryParameter5;
        if (str2 != null && (uri = Uri.parse(str2)) != null) {
            queryParameter = uri.getQueryParameter(m.v);
        }
        return new AuthenticationUrls(str3, str4, new ClientCredentials(str5, str7, str6, uuidFromString, queryParameter == null ? "" : queryParameter));
    }
}
