package com.sightcall.universal.agent.registration;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003¨\u0006\t"}, d2 = {"createNewRegistrationRequest", "Lcom/sightcall/universal/agent/registration/NewRegistrationRequest;", "ssoToken", "", "pushNotificationToken", "pushNotificationProvider", "createAccessTokensRequest", "Lcom/sightcall/universal/agent/registration/AccessTokensRequest;", "refreshToken", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class NewRegistrationMapperKt {
    public static final AccessTokensRequest createAccessTokensRequest(String str) {
        str.getClass();
        return new AccessTokensRequest(null, new AccessTokensRequest.Attributes(str), 1, null);
    }

    public static final NewRegistrationRequest createNewRegistrationRequest(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        return new NewRegistrationRequest(null, new NewRegistrationRequest.Attributes(str, str2, str3), 1, null);
    }
}
