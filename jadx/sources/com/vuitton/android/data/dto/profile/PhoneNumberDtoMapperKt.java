package com.vuitton.android.data.dto.profile;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import com.vuitton.foundation.model.domain.model.account.PhoneNumberType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PhoneNumberDtoMapperKt {
    public static final PhoneNumberDto a(PhoneNumber phoneNumber) {
        String value;
        phoneNumber.getClass();
        String str = phoneNumber.f66232a;
        String value2 = phoneNumber.f66233b.getValue();
        PhoneNumberType phoneNumberType = PhoneNumberType.MOBILE;
        if (Intrinsics.c(value2, phoneNumberType.getValue())) {
            value = phoneNumberType.getValue();
        } else {
            PhoneNumberType phoneNumberType2 = PhoneNumberType.HOME;
            if (Intrinsics.c(value2, phoneNumberType2.getValue())) {
                value = phoneNumberType2.getValue();
            } else {
                PhoneNumberType phoneNumberType3 = PhoneNumberType.WORK;
                value = Intrinsics.c(value2, phoneNumberType3.getValue()) ? phoneNumberType3.getValue() : PhoneNumberType.UNKNOWN.getValue();
            }
        }
        return new PhoneNumberDto(str, value, phoneNumber.f66234c);
    }
}
