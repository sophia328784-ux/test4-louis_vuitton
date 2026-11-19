package com.vuitton.android.presentation.screen.options.models;

import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OptionsTrackingUiModelKt {
    public static final Hit a(OptionsTrackingUiModel optionsTrackingUiModel) {
        if (optionsTrackingUiModel.equals(OptionsTrackingUiModel.LegalMentionsScreen.f59853a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/LegalMention", null, "legalAndPrivacy", null, 17, null);
        }
        if (optionsTrackingUiModel.equals(OptionsTrackingUiModel.ContactScreen.f59852a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/ContactForm", null, "EmailForm", null, 17, null);
        }
        if (optionsTrackingUiModel.equals(OptionsTrackingUiModel.ShareScreen.f59855a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/ShareApp", null, "socialNetworks", null, 17, null);
        }
        if (optionsTrackingUiModel.equals(OptionsTrackingUiModel.LogOutEvent.f59854a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Profil", "EditProfil", "MyLV", "Disconnect", null, null, 97, null);
        }
        if (optionsTrackingUiModel.equals(OptionsTrackingUiModel.ClosePopInClickEvent.f59851a)) {
            return new Hit.EventHit.DefaultEventHit(null, "mylv_myprivacysettings", "close_popin", "google_customer_match_consent", "click", null, null, 97, null);
        }
        v40.g();
        return null;
    }
}
