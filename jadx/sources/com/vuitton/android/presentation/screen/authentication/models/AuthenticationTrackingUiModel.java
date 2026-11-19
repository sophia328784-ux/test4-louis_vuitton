package com.vuitton.android.presentation.screen.authentication.models;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u000f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0082\u0001\u000f\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f¨\u0006 "}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "", "NotLoggedScreen", "SignInScreen", "RegisterScreen", "OsaAuthenticationScreen", "KisaConsentsScreen", "LoginInClickEvent", "RegisterClickEvent", "RegistrationSuccessfulEvent", "RegistrationFailedEvent", "SignInFailedEvent", "SignInSuccessfulEvent", "ContinueAsGuestClickedEvent", "ManageSettingsClickedEvent", "OpenConnectivityFromWelcomePageEvent", "OnConfirmKisaConsentsEvent", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ContinueAsGuestClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$KisaConsentsScreen;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$LoginInClickEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ManageSettingsClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$NotLoggedScreen;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OnConfirmKisaConsentsEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OpenConnectivityFromWelcomePageEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OsaAuthenticationScreen;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterScreen;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegistrationFailedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegistrationSuccessfulEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInFailedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInScreen;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInSuccessfulEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AuthenticationTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$KisaConsentsScreen;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class KisaConsentsScreen extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f53696a;

        public KisaConsentsScreen(TrackingAuthOrigin trackingAuthOrigin) {
            super(null);
            this.f53696a = trackingAuthOrigin;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof KisaConsentsScreen) && this.f53696a == ((KisaConsentsScreen) obj).f53696a;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f53696a;
            if (trackingAuthOrigin == null) {
                return 0;
            }
            return trackingAuthOrigin.hashCode();
        }

        public final String toString() {
            return "KisaConsentsScreen(origin=" + this.f53696a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ManageSettingsClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ManageSettingsClickedEvent extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ManageSettingsClickedEvent f53698a = new ManageSettingsClickedEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ManageSettingsClickedEvent);
        }

        public final int hashCode() {
            return -665338096;
        }

        public final String toString() {
            return "ManageSettingsClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$NotLoggedScreen;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotLoggedScreen extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotLoggedScreen f53699a = new NotLoggedScreen(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotLoggedScreen);
        }

        public final int hashCode() {
            return -623701364;
        }

        public final String toString() {
            return "NotLoggedScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OnConfirmKisaConsentsEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnConfirmKisaConsentsEvent extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f53700a;

        public OnConfirmKisaConsentsEvent(TrackingAuthOrigin trackingAuthOrigin) {
            super(null);
            this.f53700a = trackingAuthOrigin;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnConfirmKisaConsentsEvent) && this.f53700a == ((OnConfirmKisaConsentsEvent) obj).f53700a;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f53700a;
            if (trackingAuthOrigin == null) {
                return 0;
            }
            return trackingAuthOrigin.hashCode();
        }

        public final String toString() {
            return "OnConfirmKisaConsentsEvent(origin=" + this.f53700a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OpenConnectivityFromWelcomePageEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenConnectivityFromWelcomePageEvent extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenConnectivityFromWelcomePageEvent f53701a = new OpenConnectivityFromWelcomePageEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenConnectivityFromWelcomePageEvent);
        }

        public final int hashCode() {
            return -859213847;
        }

        public final String toString() {
            return "OpenConnectivityFromWelcomePageEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OsaAuthenticationScreen;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OsaAuthenticationScreen extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OsaAuthenticationScreen f53702a = new OsaAuthenticationScreen(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OsaAuthenticationScreen);
        }

        public final int hashCode() {
            return 271211564;
        }

        public final String toString() {
            return "OsaAuthenticationScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterScreen;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RegisterScreen extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RegisterScreen f53704a = new RegisterScreen(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RegisterScreen);
        }

        public final int hashCode() {
            return -465389564;
        }

        public final String toString() {
            return "RegisterScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegistrationFailedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RegistrationFailedEvent extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RegistrationFailedEvent f53705a = new RegistrationFailedEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RegistrationFailedEvent);
        }

        public final int hashCode() {
            return -1716170129;
        }

        public final String toString() {
            return "RegistrationFailedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegistrationSuccessfulEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RegistrationSuccessfulEvent extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RegistrationSuccessfulEvent f53706a = new RegistrationSuccessfulEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RegistrationSuccessfulEvent);
        }

        public final int hashCode() {
            return 1495356722;
        }

        public final String toString() {
            return "RegistrationSuccessfulEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInFailedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SignInFailedEvent extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SignInFailedEvent f53707a = new SignInFailedEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SignInFailedEvent);
        }

        public final int hashCode() {
            return 1373094918;
        }

        public final String toString() {
            return "SignInFailedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInScreen;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SignInScreen extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SignInScreen f53708a = new SignInScreen(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SignInScreen);
        }

        public final int hashCode() {
            return 1424171811;
        }

        public final String toString() {
            return "SignInScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInSuccessfulEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SignInSuccessfulEvent extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SignInSuccessfulEvent f53709a = new SignInSuccessfulEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SignInSuccessfulEvent);
        }

        public final int hashCode() {
            return 1894982473;
        }

        public final String toString() {
            return "SignInSuccessfulEvent";
        }
    }

    public AuthenticationTrackingUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ContinueAsGuestClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "", "isOsa", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContinueAsGuestClickedEvent extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f53695a;

        public /* synthetic */ ContinueAsGuestClickedEvent(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ContinueAsGuestClickedEvent) && this.f53695a == ((ContinueAsGuestClickedEvent) obj).f53695a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f53695a);
        }

        public final String toString() {
            return tr.i("ContinueAsGuestClickedEvent(isOsa=", ")", this.f53695a);
        }

        public ContinueAsGuestClickedEvent(boolean z) {
            super(null);
            this.f53695a = z;
        }

        public ContinueAsGuestClickedEvent() {
            this(false, 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$LoginInClickEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "", "isOsa", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LoginInClickEvent extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f53697a;

        public /* synthetic */ LoginInClickEvent(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LoginInClickEvent) && this.f53697a == ((LoginInClickEvent) obj).f53697a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f53697a);
        }

        public final String toString() {
            return tr.i("LoginInClickEvent(isOsa=", ")", this.f53697a);
        }

        public LoginInClickEvent(boolean z) {
            super(null);
            this.f53697a = z;
        }

        public LoginInClickEvent() {
            this(false, 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;", "Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;", "", "isOsa", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RegisterClickEvent extends AuthenticationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f53703a;

        public /* synthetic */ RegisterClickEvent(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RegisterClickEvent) && this.f53703a == ((RegisterClickEvent) obj).f53703a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f53703a);
        }

        public final String toString() {
            return tr.i("RegisterClickEvent(isOsa=", ")", this.f53703a);
        }

        public RegisterClickEvent(boolean z) {
            super(null);
            this.f53703a = z;
        }

        public RegisterClickEvent() {
            this(false, 1, null);
        }
    }
}
