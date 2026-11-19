package com.vuitton.android.data.dto.authentication.oauth.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.authentication.common.RegistrationAddressDto;
import com.vuitton.android.data.dto.authentication.common.UserInformationDto;
import com.vuitton.android.data.dto.authentication.common.UserInformationDtoKt;
import com.vuitton.android.data.dto.authentication.oauth.RegisterInitiateBodyDto;
import com.vuitton.android.data.dto.profile.UserConsentsMapperKt;
import com.vuitton.foundation.model.domain.model.authentication.LoginParam;
import com.vuitton.foundation.model.domain.model.authentication.RegistrationAddress;
import com.vuitton.foundation.model.domain.model.authentication.oauth.RegisterInitiateBody;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RegisterInitiateMapperKt {
    public static final RegisterInitiateBodyDto a(RegisterInitiateBody registerInitiateBody) {
        registerInitiateBody.getClass();
        UserInformationDto userInformationDtoA = UserInformationDtoKt.a(registerInitiateBody.f66640a);
        RegistrationAddress registrationAddress = registerInitiateBody.f66641b;
        RegistrationAddressDto registrationAddressDto = registrationAddress != null ? new RegistrationAddressDto(registrationAddress.f66603a, registrationAddress.f66604b, registrationAddress.f66605c, registrationAddress.d, registrationAddress.f66606e, registrationAddress.f66607f) : null;
        LoginParam loginParam = registerInitiateBody.f66642c;
        return new RegisterInitiateBodyDto(userInformationDtoA, registrationAddressDto, new RegisterInitiateBodyDto.CredentialsDto(loginParam.f66599a, loginParam.f66600b), UserConsentsMapperKt.c(registerInitiateBody.d));
    }
}
