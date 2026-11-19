package com.vuitton.android.data.net.auth;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.v40;
import kotlin.Metadata;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AuthTokenExpirationExtKt {
    public static final boolean a(AuthToken authToken, long j2) {
        authToken.getClass();
        if (authToken instanceof AuthToken.Twist.User) {
            Instant instant = ((AuthToken.Twist.User) authToken).f66598f;
            return instant != null && instant.a() <= j2;
        }
        if (authToken instanceof AuthToken.Atg) {
            Instant instant2 = ((AuthToken.Atg) authToken).d;
            return instant2 != null && instant2.a() <= j2;
        }
        if (!(authToken instanceof AuthToken.Twist.Guest) && !authToken.equals(AuthToken.None.f66591a)) {
            v40.g();
        }
        return false;
    }
}
