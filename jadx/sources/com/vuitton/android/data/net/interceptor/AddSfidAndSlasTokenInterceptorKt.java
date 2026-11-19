package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import lv.nfc.reader.utils.LVConstants;
import okhttp3.Request;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddSfidAndSlasTokenInterceptorKt {
    public static final Pair a(AuthToken authToken) {
        authToken.getClass();
        if (authToken instanceof AuthToken.Twist.Guest) {
            return new Pair(((AuthToken.Twist.Guest) authToken).f66592a, "");
        }
        if (authToken instanceof AuthToken.Twist.User) {
            AuthToken.Twist.User user = (AuthToken.Twist.User) authToken;
            return new Pair(user.d, user.f66595b);
        }
        if (authToken instanceof AuthToken.Atg) {
            String str = ((AuthToken.Atg) authToken).f66589b;
            if (str == null) {
                str = "";
            }
            return new Pair("", str);
        }
        if (Intrinsics.c(authToken, AuthToken.None.f66591a)) {
            return new Pair("", "");
        }
        v40.g();
        return null;
    }

    public static final Request b(Request request, Logger logger, String str, String str2) {
        request.getClass();
        logger.getClass();
        str.getClass();
        str2.getClass();
        Request.Builder builder = new Request.Builder(request);
        if (str.length() > 0) {
            builder.b(LVConstants.SLAS_ACCESS_TOKEN, str);
        }
        if (str2.length() > 0) {
            builder.b(LVConstants.SFID_ACCESS_TOKEN, str2);
        }
        return new Request(builder);
    }
}
