package com.vuitton.android.data.dto.authentication.common;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.PhoneNumberDtoMapperKt;
import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import com.vuitton.foundation.model.domain.model.authentication.UserInformation;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class UserInformationDtoKt {
    public static final UserInformationDto a(UserInformation userInformation) {
        userInformation.getClass();
        String str = userInformation.f66609a;
        String str2 = userInformation.f66610b;
        String str3 = userInformation.f66611c;
        String str4 = userInformation.d;
        String str5 = userInformation.f66612e;
        String str6 = userInformation.f66613f;
        String str7 = userInformation.g;
        PhoneNumber phoneNumber = userInformation.f66614h;
        return new UserInformationDto(str, str2, str3, str4, str5, str6, str7, phoneNumber != null ? PhoneNumberDtoMapperKt.a(phoneNumber) : null);
    }
}
