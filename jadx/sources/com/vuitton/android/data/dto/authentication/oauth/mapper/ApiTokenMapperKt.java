package com.vuitton.android.data.dto.authentication.oauth.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.authentication.oauth.ApiTokenDto;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import com.vuitton.foundation.util.StringKtExtKt;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ApiTokenMapperKt {
    public static final AuthToken a(ApiTokenDto apiTokenDto, AuthToken authToken) {
        apiTokenDto.getClass();
        authToken.getClass();
        if (authToken instanceof AuthToken.Twist.Guest) {
            String str = apiTokenDto.f44554c;
            if (str == null) {
                str = "";
            }
            String str2 = apiTokenDto.d;
            return new AuthToken.Twist.Guest(str, str2 != null ? str2 : "");
        }
        if (authToken instanceof AuthToken.Twist.User) {
            return b(apiTokenDto);
        }
        if (!(authToken instanceof AuthToken.Atg)) {
            if (Intrinsics.c(authToken, AuthToken.None.f66591a)) {
                md.n("Cannot refresh token from None state");
                return null;
            }
            v40.g();
            return null;
        }
        String str3 = apiTokenDto.f44555e;
        if (str3 == null) {
            str3 = "";
        }
        String str4 = apiTokenDto.f44552a;
        String str5 = apiTokenDto.f44553b;
        String str6 = str5 != null ? str5 : "";
        String str7 = apiTokenDto.g;
        return new AuthToken.Atg(str3, str4, str6, str7 != null ? StringKtExtKt.e(str7) : null);
    }

    public static final AuthToken.Twist.User b(ApiTokenDto apiTokenDto) {
        apiTokenDto.getClass();
        String str = apiTokenDto.f44555e;
        String str2 = str == null ? "" : str;
        String str3 = apiTokenDto.f44552a;
        String str4 = str3 == null ? "" : str3;
        String str5 = apiTokenDto.f44554c;
        String str6 = str5 == null ? "" : str5;
        String str7 = apiTokenDto.f44553b;
        String str8 = str7 == null ? "" : str7;
        String str9 = apiTokenDto.f44556f;
        String str10 = str9 == null ? "" : str9;
        String str11 = apiTokenDto.g;
        return new AuthToken.Twist.User(str2, str4, str8, str6, str10, str11 != null ? StringKtExtKt.e(str11) : null, null);
    }
}
