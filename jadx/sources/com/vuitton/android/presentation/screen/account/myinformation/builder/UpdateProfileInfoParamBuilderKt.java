package com.vuitton.android.presentation.screen.account.myinformation.builder;

import com.vuitton.foundation.model.domain.model.account.UpdateProfileInfoParam;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class UpdateProfileInfoParamBuilderKt {
    public static UpdateProfileInfoParam a(AppConfig appConfig, Profile profile, String str, String str2, int i2) {
        String str3;
        String str4;
        if ((i2 & 4) != 0) {
            str3 = profile != null ? profile.f68171j : null;
        } else {
            str3 = str;
        }
        if ((i2 & 8) != 0) {
            str4 = profile != null ? profile.f68172k : null;
        } else {
            str4 = str2;
        }
        appConfig.getClass();
        return new UpdateProfileInfoParam(profile != null ? profile.f68165b : null, profile != null ? profile.f68166c : null, profile != null ? profile.f68167e : null, profile != null ? profile.d : null, profile != null ? profile.f68168f : null, profile != null ? profile.f68169h : null, profile != null ? profile.g : null, profile != null ? Profile.c(appConfig) : null, str3, str4, profile != null ? profile.q : null);
    }
}
