package com.vuitton.android.data.dto.profile;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.account.updatepassword.PasswordUpdateErrorReason;
import com.vuitton.foundation.model.domain.model.account.updatepassword.UpdatePasswordException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PasswordErrorDtoMapperKt {
    public static final UpdatePasswordException.UpdatePasswordFailed a(String str) {
        if (Intrinsics.c(str, PasswordUpdateErrorCode.INVALID_OLD_PASSWORD.getCode())) {
            return new UpdatePasswordException.UpdatePasswordFailed(PasswordUpdateErrorReason.INVALID_OLD_PASSWORD);
        }
        if (Intrinsics.c(str, PasswordUpdateErrorCode.INVALID_NEW_PASSWORD.getCode())) {
            return new UpdatePasswordException.UpdatePasswordFailed(PasswordUpdateErrorReason.INVALID_NEW_PASSWORD);
        }
        return Intrinsics.c(str, PasswordUpdateErrorCode.ERROR_INVALID_REPEATED_PASSWORD.getCode()) ? new UpdatePasswordException.UpdatePasswordFailed(PasswordUpdateErrorReason.INVALID_REPEATED_PASSWORD) : new UpdatePasswordException.UpdatePasswordFailed(PasswordUpdateErrorReason.UNKNOWN);
    }
}
