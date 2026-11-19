package com.vuitton.android.presentation.screen.authentication.register.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0018\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u0082\u0001\u0018\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./01¨\u00062"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "BirthdateInconsistent", "EmailAndUsernameNotMatch", "InvalidCallingCode", "InvalidEmail", "InvalidName", "InvalidPassword", "InvalidPasswordContainsEmail", "InvalidPasswordContainsName", "InvalidPasswordRules", "InvalidPhone", "InvalidTitle", "LegalAgeBlocked", "LegalAgeToBeBlocked", "PhoneNumberInvalid", "PhoneNumberInvalidCountry", "PhoneNumberTooLong", "PhoneNumberTooShort", "UserAlreadyExists", "InvalidOtp", "UnknownError", "InvalidPostalCode", "InvalidState", "InvalidCity", "InvalidAddress", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$BirthdateInconsistent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$EmailAndUsernameNotMatch;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidAddress;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCallingCode;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCity;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidEmail;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidOtp;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPassword;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsEmail;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsName;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordRules;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPhone;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPostalCode;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidState;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidTitle;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeBlocked;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeToBeBlocked;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalid;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalidCountry;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooLong;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooShort;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UnknownError;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UserAlreadyExists;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterExceptionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f53956a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$BirthdateInconsistent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BirthdateInconsistent extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53957b;

        public BirthdateInconsistent(String str) {
            super(str, null);
            this.f53957b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53957b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BirthdateInconsistent) && Intrinsics.c(this.f53957b, ((BirthdateInconsistent) obj).f53957b);
        }

        public final int hashCode() {
            String str = this.f53957b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("BirthdateInconsistent(message=", this.f53957b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$EmailAndUsernameNotMatch;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EmailAndUsernameNotMatch extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53958b;

        public EmailAndUsernameNotMatch(String str) {
            super(str, null);
            this.f53958b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53958b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EmailAndUsernameNotMatch) && Intrinsics.c(this.f53958b, ((EmailAndUsernameNotMatch) obj).f53958b);
        }

        public final int hashCode() {
            String str = this.f53958b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("EmailAndUsernameNotMatch(message=", this.f53958b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidAddress;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;", "scope", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidAddress extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53959b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final InvalidAddressScopeUiModel f53960c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InvalidAddress(String str, InvalidAddressScopeUiModel invalidAddressScopeUiModel) {
            super(str, null);
            invalidAddressScopeUiModel.getClass();
            this.f53959b = str;
            this.f53960c = invalidAddressScopeUiModel;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53959b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InvalidAddress)) {
                return false;
            }
            InvalidAddress invalidAddress = (InvalidAddress) obj;
            return Intrinsics.c(this.f53959b, invalidAddress.f53959b) && this.f53960c == invalidAddress.f53960c;
        }

        public final int hashCode() {
            String str = this.f53959b;
            return this.f53960c.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return "InvalidAddress(message=" + this.f53959b + ", scope=" + this.f53960c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCallingCode;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidCallingCode extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53961b;

        public InvalidCallingCode(String str) {
            super(str, null);
            this.f53961b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53961b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidCallingCode) && Intrinsics.c(this.f53961b, ((InvalidCallingCode) obj).f53961b);
        }

        public final int hashCode() {
            String str = this.f53961b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidCallingCode(message=", this.f53961b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCity;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidCity extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53962b;

        public InvalidCity(String str) {
            super(str, null);
            this.f53962b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53962b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidCity) && Intrinsics.c(this.f53962b, ((InvalidCity) obj).f53962b);
        }

        public final int hashCode() {
            String str = this.f53962b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidCity(message=", this.f53962b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidEmail;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidEmail extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53963b;

        public InvalidEmail(String str) {
            super(str, null);
            this.f53963b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53963b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidEmail) && Intrinsics.c(this.f53963b, ((InvalidEmail) obj).f53963b);
        }

        public final int hashCode() {
            String str = this.f53963b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidEmail(message=", this.f53963b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;", "scope", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidName extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53964b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final InvalidNameScopeUiModel f53965c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InvalidName(String str, InvalidNameScopeUiModel invalidNameScopeUiModel) {
            super(str, null);
            invalidNameScopeUiModel.getClass();
            this.f53964b = str;
            this.f53965c = invalidNameScopeUiModel;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53964b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InvalidName)) {
                return false;
            }
            InvalidName invalidName = (InvalidName) obj;
            return Intrinsics.c(this.f53964b, invalidName.f53964b) && this.f53965c == invalidName.f53965c;
        }

        public final int hashCode() {
            String str = this.f53964b;
            return this.f53965c.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return "InvalidName(message=" + this.f53964b + ", scope=" + this.f53965c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidOtp;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidOtp extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53966b;

        public InvalidOtp(String str) {
            super(str, null);
            this.f53966b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53966b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidOtp) && Intrinsics.c(this.f53966b, ((InvalidOtp) obj).f53966b);
        }

        public final int hashCode() {
            String str = this.f53966b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidOtp(message=", this.f53966b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPassword;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidPassword extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53967b;

        public InvalidPassword(String str) {
            super(str, null);
            this.f53967b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53967b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidPassword) && Intrinsics.c(this.f53967b, ((InvalidPassword) obj).f53967b);
        }

        public final int hashCode() {
            String str = this.f53967b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidPassword(message=", this.f53967b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsEmail;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidPasswordContainsEmail extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53968b;

        public InvalidPasswordContainsEmail(String str) {
            super(str, null);
            this.f53968b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53968b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidPasswordContainsEmail) && Intrinsics.c(this.f53968b, ((InvalidPasswordContainsEmail) obj).f53968b);
        }

        public final int hashCode() {
            String str = this.f53968b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidPasswordContainsEmail(message=", this.f53968b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsName;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidPasswordContainsName extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53969b;

        public InvalidPasswordContainsName(String str) {
            super(str, null);
            this.f53969b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53969b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidPasswordContainsName) && Intrinsics.c(this.f53969b, ((InvalidPasswordContainsName) obj).f53969b);
        }

        public final int hashCode() {
            String str = this.f53969b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidPasswordContainsName(message=", this.f53969b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordRules;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidPasswordRules extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53970b;

        public InvalidPasswordRules(String str) {
            super(str, null);
            this.f53970b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53970b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidPasswordRules) && Intrinsics.c(this.f53970b, ((InvalidPasswordRules) obj).f53970b);
        }

        public final int hashCode() {
            String str = this.f53970b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidPasswordRules(message=", this.f53970b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPhone;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidPhone extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53971b;

        public InvalidPhone(String str) {
            super(str, null);
            this.f53971b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53971b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidPhone) && Intrinsics.c(this.f53971b, ((InvalidPhone) obj).f53971b);
        }

        public final int hashCode() {
            String str = this.f53971b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidPhone(message=", this.f53971b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPostalCode;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidPostalCode extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53972b;

        public InvalidPostalCode(String str) {
            super(str, null);
            this.f53972b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53972b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidPostalCode) && Intrinsics.c(this.f53972b, ((InvalidPostalCode) obj).f53972b);
        }

        public final int hashCode() {
            String str = this.f53972b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidPostalCode(message=", this.f53972b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidState;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidState extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53973b;

        public InvalidState(String str) {
            super(str, null);
            this.f53973b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53973b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidState) && Intrinsics.c(this.f53973b, ((InvalidState) obj).f53973b);
        }

        public final int hashCode() {
            String str = this.f53973b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidState(message=", this.f53973b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidTitle;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidTitle extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53974b;

        public InvalidTitle(String str) {
            super(str, null);
            this.f53974b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53974b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidTitle) && Intrinsics.c(this.f53974b, ((InvalidTitle) obj).f53974b);
        }

        public final int hashCode() {
            String str = this.f53974b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidTitle(message=", this.f53974b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeBlocked;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LegalAgeBlocked extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53975b;

        public LegalAgeBlocked(String str) {
            super(str, null);
            this.f53975b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53975b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LegalAgeBlocked) && Intrinsics.c(this.f53975b, ((LegalAgeBlocked) obj).f53975b);
        }

        public final int hashCode() {
            String str = this.f53975b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("LegalAgeBlocked(message=", this.f53975b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeToBeBlocked;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LegalAgeToBeBlocked extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53976b;

        public LegalAgeToBeBlocked(String str) {
            super(str, null);
            this.f53976b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53976b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LegalAgeToBeBlocked) && Intrinsics.c(this.f53976b, ((LegalAgeToBeBlocked) obj).f53976b);
        }

        public final int hashCode() {
            String str = this.f53976b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("LegalAgeToBeBlocked(message=", this.f53976b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalid;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PhoneNumberInvalid extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53977b;

        public PhoneNumberInvalid(String str) {
            super(str, null);
            this.f53977b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53977b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PhoneNumberInvalid) && Intrinsics.c(this.f53977b, ((PhoneNumberInvalid) obj).f53977b);
        }

        public final int hashCode() {
            String str = this.f53977b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("PhoneNumberInvalid(message=", this.f53977b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalidCountry;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PhoneNumberInvalidCountry extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53978b;

        public PhoneNumberInvalidCountry(String str) {
            super(str, null);
            this.f53978b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53978b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PhoneNumberInvalidCountry) && Intrinsics.c(this.f53978b, ((PhoneNumberInvalidCountry) obj).f53978b);
        }

        public final int hashCode() {
            String str = this.f53978b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("PhoneNumberInvalidCountry(message=", this.f53978b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooLong;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PhoneNumberTooLong extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53979b;

        public PhoneNumberTooLong(String str) {
            super(str, null);
            this.f53979b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53979b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PhoneNumberTooLong) && Intrinsics.c(this.f53979b, ((PhoneNumberTooLong) obj).f53979b);
        }

        public final int hashCode() {
            String str = this.f53979b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("PhoneNumberTooLong(message=", this.f53979b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooShort;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PhoneNumberTooShort extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53980b;

        public PhoneNumberTooShort(String str) {
            super(str, null);
            this.f53980b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53980b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PhoneNumberTooShort) && Intrinsics.c(this.f53980b, ((PhoneNumberTooShort) obj).f53980b);
        }

        public final int hashCode() {
            String str = this.f53980b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("PhoneNumberTooShort(message=", this.f53980b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UnknownError;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UnknownError extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53981b;

        public UnknownError(String str) {
            super(str, null);
            this.f53981b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53981b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnknownError) && Intrinsics.c(this.f53981b, ((UnknownError) obj).f53981b);
        }

        public final int hashCode() {
            String str = this.f53981b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("UnknownError(message=", this.f53981b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UserAlreadyExists;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UserAlreadyExists extends NativeRegisterExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53982b;

        public UserAlreadyExists(String str) {
            super(str, null);
            this.f53982b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53956a() {
            return this.f53982b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UserAlreadyExists) && Intrinsics.c(this.f53982b, ((UserAlreadyExists) obj).f53982b);
        }

        public final int hashCode() {
            String str = this.f53982b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("UserAlreadyExists(message=", this.f53982b, ")");
        }
    }

    public NativeRegisterExceptionUiModel(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f53956a = str;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public String getF53956a() {
        return this.f53956a;
    }
}
