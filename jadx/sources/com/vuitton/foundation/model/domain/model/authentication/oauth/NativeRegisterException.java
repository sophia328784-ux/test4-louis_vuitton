package com.vuitton.foundation.model.domain.model.authentication.oauth;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0018\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u0082\u0001\u0018\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./012¨\u00063"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "InvalidPassword", "PhoneNumberTooShort", "PhoneNumberTooLong", "PhoneNumberInvalidCountry", "PhoneNumberInvalid", "InvalidPasswordRules", "InvalidPasswordContainsName", "InvalidPasswordContainsEmail", "InvalidEmail", "UserAlreadyExists", "BirthdateInconsistent", "LegalAgeBlocked", "LegalAgeToBeBlocked", "InvalidPhone", "InvalidCallingCode", "InvalidTitle", "InvalidName", "EmailAndUsernameNotMatch", "InvalidOtp", "UnknownError", "InvalidPostalCode", "InvalidState", "InvalidCity", "InvalidAddress", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$BirthdateInconsistent;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$EmailAndUsernameNotMatch;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidAddress;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidCallingCode;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidCity;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidEmail;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidName;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidOtp;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPassword;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordContainsEmail;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordContainsName;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordRules;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPhone;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPostalCode;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidState;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidTitle;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$LegalAgeBlocked;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$LegalAgeToBeBlocked;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberInvalid;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberInvalidCountry;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberTooLong;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberTooShort;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UserAlreadyExists;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66637b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$BirthdateInconsistent;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class BirthdateInconsistent extends NativeRegisterException {
        public BirthdateInconsistent(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$EmailAndUsernameNotMatch;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class EmailAndUsernameNotMatch extends NativeRegisterException {
        public EmailAndUsernameNotMatch(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidAddress;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;", "scope", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidAddress extends NativeRegisterException {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final InvalidAddressScope f66638c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InvalidAddress(String str, InvalidAddressScope invalidAddressScope) {
            super(str, null);
            invalidAddressScope.getClass();
            this.f66638c = invalidAddressScope;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidCallingCode;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidCallingCode extends NativeRegisterException {
        public InvalidCallingCode(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidCity;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidCity extends NativeRegisterException {
        public InvalidCity(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidEmail;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidEmail extends NativeRegisterException {
        public InvalidEmail(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidName;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;", "scope", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidName extends NativeRegisterException {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final InvalidNameScope f66639c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InvalidName(String str, InvalidNameScope invalidNameScope) {
            super(str, null);
            invalidNameScope.getClass();
            this.f66639c = invalidNameScope;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidOtp;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidOtp extends NativeRegisterException {
        public InvalidOtp(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPassword;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidPassword extends NativeRegisterException {
        public InvalidPassword(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordContainsEmail;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidPasswordContainsEmail extends NativeRegisterException {
        public InvalidPasswordContainsEmail(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordContainsName;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidPasswordContainsName extends NativeRegisterException {
        public InvalidPasswordContainsName(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordRules;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidPasswordRules extends NativeRegisterException {
        public InvalidPasswordRules(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPhone;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidPhone extends NativeRegisterException {
        public InvalidPhone(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPostalCode;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidPostalCode extends NativeRegisterException {
        public InvalidPostalCode(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidState;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidState extends NativeRegisterException {
        public InvalidState(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidTitle;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidTitle extends NativeRegisterException {
        public InvalidTitle(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$LegalAgeBlocked;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class LegalAgeBlocked extends NativeRegisterException {
        public LegalAgeBlocked(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$LegalAgeToBeBlocked;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class LegalAgeToBeBlocked extends NativeRegisterException {
        public LegalAgeToBeBlocked(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberInvalid;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PhoneNumberInvalid extends NativeRegisterException {
        public PhoneNumberInvalid(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberInvalidCountry;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PhoneNumberInvalidCountry extends NativeRegisterException {
        public PhoneNumberInvalidCountry(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberTooLong;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PhoneNumberTooLong extends NativeRegisterException {
        public PhoneNumberTooLong(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberTooShort;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PhoneNumberTooShort extends NativeRegisterException {
        public PhoneNumberTooShort(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class UnknownError extends NativeRegisterException {
        public UnknownError(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UserAlreadyExists;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class UserAlreadyExists extends NativeRegisterException {
        public UserAlreadyExists(String str) {
            super(str, null);
        }
    }

    public NativeRegisterException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f66637b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f66637b;
    }
}
