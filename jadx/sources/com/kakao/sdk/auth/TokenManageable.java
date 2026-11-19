package com.kakao.sdk.auth;

import com.kakao.sdk.auth.model.OAuthToken;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/auth/TokenManageable;", "", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface TokenManageable {
    OAuthToken a();

    void b(OAuthToken oAuthToken);
}
