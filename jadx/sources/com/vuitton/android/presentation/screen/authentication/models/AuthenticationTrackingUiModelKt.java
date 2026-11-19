package com.vuitton.android.presentation.screen.authentication.models;

import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import defpackage.o60;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AuthenticationTrackingUiModelKt {
    public static final Hit a(AuthenticationTrackingUiModel authenticationTrackingUiModel, String str) {
        String trackingKey;
        authenticationTrackingUiModel.getClass();
        if (authenticationTrackingUiModel.equals(AuthenticationTrackingUiModel.NotLoggedScreen.f53699a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Identification", "mylv/identification", "connexion_module", null, 17, null);
        }
        if (authenticationTrackingUiModel.equals(AuthenticationTrackingUiModel.RegisterScreen.f53704a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Identification/CreateAnAccount", "mylv/account_creation", "account_creation", null, 17, null);
        }
        if (authenticationTrackingUiModel.equals(AuthenticationTrackingUiModel.SignInScreen.f53708a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Identification/Login", "mylv/identification", "connexion_module", null, 17, null);
        }
        if (authenticationTrackingUiModel.equals(AuthenticationTrackingUiModel.OsaAuthenticationScreen.f53702a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Authentication", "LVPass/Authentication", "OSA", null, 17, null);
        }
        if (authenticationTrackingUiModel instanceof AuthenticationTrackingUiModel.KisaConsentsScreen) {
            TrackingAuthOrigin trackingAuthOrigin = ((AuthenticationTrackingUiModel.KisaConsentsScreen) authenticationTrackingUiModel).f53696a;
            trackingKey = trackingAuthOrigin != null ? trackingAuthOrigin.getTrackingKey() : null;
            return new Hit.ScreenHit.DefaultScreenHit(null, "account_creation_kisa_consents", "account_creation_kisa_consents", "mylv_native_authentification", CollectionsKt.P(new AdditionalProperty.Origin(trackingKey != null ? trackingKey : ""), new AdditionalProperty.EntryPoint(TrackingAuthEntryPoint.SIGN_UP.getTrackingKey())), 1, null);
        }
        if (authenticationTrackingUiModel instanceof AuthenticationTrackingUiModel.RegisterClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Identification", "CreateAnAccount", str, "navigation", null, ((AuthenticationTrackingUiModel.RegisterClickEvent) authenticationTrackingUiModel).f53703a ? o60.t("OSA") : EmptyList.f71768b, 33, null);
        }
        if (authenticationTrackingUiModel.equals(AuthenticationTrackingUiModel.OpenConnectivityFromWelcomePageEvent.f53701a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Identification", "connected_objects", "MyLV", "navigation", null, null, 97, null);
        }
        if (authenticationTrackingUiModel.equals(AuthenticationTrackingUiModel.RegistrationFailedEvent.f53705a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Identification/CreateAnAccount", "Registration_Failed", str, Payload.RESPONSE, null, null, 97, null);
        }
        if (authenticationTrackingUiModel.equals(AuthenticationTrackingUiModel.RegistrationSuccessfulEvent.f53706a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Identification/CreateAnAccount", "Registration_Successful", str, Payload.RESPONSE, null, null, 97, null);
        }
        if (authenticationTrackingUiModel instanceof AuthenticationTrackingUiModel.LoginInClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Identification", "Login", str, "navigation", null, ((AuthenticationTrackingUiModel.LoginInClickEvent) authenticationTrackingUiModel).f53697a ? o60.t("OSA") : EmptyList.f71768b, 33, null);
        }
        if (authenticationTrackingUiModel.equals(AuthenticationTrackingUiModel.SignInFailedEvent.f53707a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Identification/Login", "Login_Failed", str, Payload.RESPONSE, null, null, 97, null);
        }
        if (authenticationTrackingUiModel.equals(AuthenticationTrackingUiModel.SignInSuccessfulEvent.f53709a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Identification/Login", "Login_Successful", str, Payload.RESPONSE, null, null, 97, null);
        }
        if (authenticationTrackingUiModel instanceof AuthenticationTrackingUiModel.ContinueAsGuestClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Identification", "guest", str, "navigation", null, ((AuthenticationTrackingUiModel.ContinueAsGuestClickedEvent) authenticationTrackingUiModel).f53695a ? o60.t("OSA") : EmptyList.f71768b, 33, null);
        }
        if (authenticationTrackingUiModel.equals(AuthenticationTrackingUiModel.ManageSettingsClickedEvent.f53698a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Identification", "manage_settings", str, "navigation", null, null, 97, null);
        }
        if (!(authenticationTrackingUiModel instanceof AuthenticationTrackingUiModel.OnConfirmKisaConsentsEvent)) {
            v40.g();
            return null;
        }
        AdditionalProperty.ContentId contentId = new AdditionalProperty.ContentId("kisa_consent_step");
        TrackingAuthOrigin trackingAuthOrigin2 = ((AuthenticationTrackingUiModel.OnConfirmKisaConsentsEvent) authenticationTrackingUiModel).f53700a;
        trackingKey = trackingAuthOrigin2 != null ? trackingAuthOrigin2.getTrackingKey() : null;
        return new Hit.EventHit.DefaultEventHit(HitType.Interaction.f66511a, "account_creation_kisa_consents", "consent_confirm", "mylv_native", "click", "mylv_native_authentification", CollectionsKt.P(contentId, new AdditionalProperty.Origin(trackingKey != null ? trackingKey : ""), new AdditionalProperty.EntryPoint(TrackingAuthEntryPoint.SIGN_UP.getTrackingKey())));
    }
}
