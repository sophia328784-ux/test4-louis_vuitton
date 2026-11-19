package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterErrorListException;
import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterException;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterErrorListExceptionUiModelKt {
    public static final NativeRegisterErrorListUiModelException a(NativeRegisterErrorListException nativeRegisterErrorListException) {
        NativeRegisterExceptionUiModel unknownError;
        NativeRegisterExceptionUiModel invalidAddress;
        InvalidAddressScopeUiModel invalidAddressScopeUiModel;
        InvalidNameScopeUiModel invalidNameScopeUiModel;
        List<NativeRegisterException> list = nativeRegisterErrorListException.f66636b;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (NativeRegisterException nativeRegisterException : list) {
            nativeRegisterException.getClass();
            String str = nativeRegisterException.f66637b;
            if (nativeRegisterException instanceof NativeRegisterException.BirthdateInconsistent) {
                unknownError = new NativeRegisterExceptionUiModel.BirthdateInconsistent(str);
            } else if (nativeRegisterException instanceof NativeRegisterException.EmailAndUsernameNotMatch) {
                unknownError = new NativeRegisterExceptionUiModel.EmailAndUsernameNotMatch(str);
            } else if (nativeRegisterException instanceof NativeRegisterException.InvalidCallingCode) {
                unknownError = new NativeRegisterExceptionUiModel.InvalidCallingCode(str);
            } else if (nativeRegisterException instanceof NativeRegisterException.InvalidEmail) {
                unknownError = new NativeRegisterExceptionUiModel.InvalidEmail(str);
            } else {
                if (nativeRegisterException instanceof NativeRegisterException.InvalidName) {
                    int i2 = NativeRegisterExceptionUiModelKt$WhenMappings.f53983a[((NativeRegisterException.InvalidName) nativeRegisterException).f66639c.ordinal()];
                    if (i2 == 1) {
                        invalidNameScopeUiModel = InvalidNameScopeUiModel.FIRST_NAME;
                    } else if (i2 == 2) {
                        invalidNameScopeUiModel = InvalidNameScopeUiModel.LAST_NAME;
                    } else if (i2 == 3) {
                        invalidNameScopeUiModel = InvalidNameScopeUiModel.FIRST_NAME2;
                    } else if (i2 == 4) {
                        invalidNameScopeUiModel = InvalidNameScopeUiModel.LAST_NAME2;
                    } else {
                        if (i2 != 5) {
                            v40.g();
                            return null;
                        }
                        invalidNameScopeUiModel = InvalidNameScopeUiModel.UNDEFINED;
                    }
                    invalidAddress = new NativeRegisterExceptionUiModel.InvalidName(str, invalidNameScopeUiModel);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidPassword) {
                    unknownError = new NativeRegisterExceptionUiModel.InvalidPassword(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidPasswordContainsEmail) {
                    unknownError = new NativeRegisterExceptionUiModel.InvalidPasswordContainsEmail(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidPasswordContainsName) {
                    unknownError = new NativeRegisterExceptionUiModel.InvalidPasswordContainsName(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidPasswordRules) {
                    unknownError = new NativeRegisterExceptionUiModel.InvalidPasswordRules(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidPhone) {
                    unknownError = new NativeRegisterExceptionUiModel.InvalidPhone(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidTitle) {
                    unknownError = new NativeRegisterExceptionUiModel.InvalidTitle(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.LegalAgeBlocked) {
                    unknownError = new NativeRegisterExceptionUiModel.LegalAgeBlocked(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.LegalAgeToBeBlocked) {
                    unknownError = new NativeRegisterExceptionUiModel.LegalAgeToBeBlocked(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.PhoneNumberInvalid) {
                    unknownError = new NativeRegisterExceptionUiModel.PhoneNumberInvalid(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.PhoneNumberInvalidCountry) {
                    unknownError = new NativeRegisterExceptionUiModel.PhoneNumberInvalidCountry(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.PhoneNumberTooLong) {
                    unknownError = new NativeRegisterExceptionUiModel.PhoneNumberTooLong(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.PhoneNumberTooShort) {
                    unknownError = new NativeRegisterExceptionUiModel.PhoneNumberTooShort(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.UserAlreadyExists) {
                    unknownError = new NativeRegisterExceptionUiModel.UserAlreadyExists(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidOtp) {
                    unknownError = new NativeRegisterExceptionUiModel.InvalidOtp(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidPostalCode) {
                    unknownError = new NativeRegisterExceptionUiModel.InvalidPostalCode(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidState) {
                    unknownError = new NativeRegisterExceptionUiModel.InvalidState(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidCity) {
                    unknownError = new NativeRegisterExceptionUiModel.InvalidCity(str);
                } else if (nativeRegisterException instanceof NativeRegisterException.InvalidAddress) {
                    int i3 = NativeRegisterExceptionUiModelKt$WhenMappings.f53984b[((NativeRegisterException.InvalidAddress) nativeRegisterException).f66638c.ordinal()];
                    if (i3 == 1) {
                        invalidAddressScopeUiModel = InvalidAddressScopeUiModel.ADDRESS1;
                    } else if (i3 == 2) {
                        invalidAddressScopeUiModel = InvalidAddressScopeUiModel.ADDRESS2;
                    } else if (i3 == 3) {
                        invalidAddressScopeUiModel = InvalidAddressScopeUiModel.ADDRESS3;
                    } else {
                        if (i3 != 4) {
                            v40.g();
                            return null;
                        }
                        invalidAddressScopeUiModel = InvalidAddressScopeUiModel.UNDEFINED;
                    }
                    invalidAddress = new NativeRegisterExceptionUiModel.InvalidAddress(str, invalidAddressScopeUiModel);
                } else {
                    unknownError = new NativeRegisterExceptionUiModel.UnknownError(str);
                }
                unknownError = invalidAddress;
            }
            arrayList.add(unknownError);
        }
        return new NativeRegisterErrorListUiModelException(arrayList);
    }
}
