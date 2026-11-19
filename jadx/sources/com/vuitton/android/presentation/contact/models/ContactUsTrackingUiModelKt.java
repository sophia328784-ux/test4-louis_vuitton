package com.vuitton.android.presentation.contact.models;

import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContactUsTrackingUiModelKt {
    public static final Hit a(ContactUsTrackingUiModel contactUsTrackingUiModel) {
        contactUsTrackingUiModel.getClass();
        if (contactUsTrackingUiModel instanceof ContactUsTrackingUiModel.ContactUsScreen) {
            ContactUsTrackingUiModel.ContactUsScreen contactUsScreen = (ContactUsTrackingUiModel.ContactUsScreen) contactUsTrackingUiModel;
            return new Hit.ScreenHit.DefaultScreenHit(null, "contact_us", "contact_us", "contact_us", CollectionsKt.P(new AdditionalProperty.ContentId(contactUsScreen.f51140a ? "chat_enabled" : "chat_disabled"), new AdditionalProperty.Origin(contactUsScreen.f51141b)), 1, null);
        }
        if (contactUsTrackingUiModel instanceof ContactUsTrackingUiModel.PowerfrontScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "powerfront_chat", "powerfront_chat", "powerfront_chat", null, 17, null);
        }
        if (contactUsTrackingUiModel instanceof ContactUsTrackingUiModel.OnViewMoreClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "contact_us", "click_view_more", "contact_us", "click", null, CollectionsKt.O(new AdditionalProperty.Origin(((ContactUsTrackingUiModel.OnViewMoreClickEvent) contactUsTrackingUiModel).f51152a)), 33, null);
        }
        String str = "open_chat";
        if (contactUsTrackingUiModel instanceof ContactUsTrackingUiModel.OnIconClickEvent) {
            ContactUsTrackingUiModel.OnIconClickEvent onIconClickEvent = (ContactUsTrackingUiModel.OnIconClickEvent) contactUsTrackingUiModel;
            boolean z = onIconClickEvent.f51145a;
            return new Hit.EventHit.DefaultEventHit(null, onIconClickEvent.f51146b, z ? "open_chat" : "open_contact_us_bottom", "contact_us", "click", null, CollectionsKt.P(new AdditionalProperty.Origin(onIconClickEvent.f51147c), new AdditionalProperty.ContentId(z ? "with_notif_message" : "without_notif_message")), 33, null);
        }
        if (!(contactUsTrackingUiModel instanceof ContactUsTrackingUiModel.OnContactMethodClickEvent)) {
            boolean z2 = contactUsTrackingUiModel instanceof ContactUsTrackingUiModel.OnPowerfrontCloseEvent;
            HitType.LiveChat liveChat = HitType.LiveChat.f66513a;
            if (z2) {
                return new Hit.EventHit.DefaultEventHit(liveChat, "powerfront_chat", "close_chat", "powerfront", "click", null, CollectionsKt.O(new AdditionalProperty.Origin(((ContactUsTrackingUiModel.OnPowerfrontCloseEvent) contactUsTrackingUiModel).f51149a)), 32, null);
            }
            if (contactUsTrackingUiModel instanceof ContactUsTrackingUiModel.OnPowerfrontMinimiseEvent) {
                return new Hit.EventHit.DefaultEventHit(liveChat, "powerfront_chat", "minimise_chat", "powerfront", "click", null, CollectionsKt.O(new AdditionalProperty.Origin(((ContactUsTrackingUiModel.OnPowerfrontMinimiseEvent) contactUsTrackingUiModel).f51150a)), 32, null);
            }
            if (contactUsTrackingUiModel instanceof ContactUsTrackingUiModel.OnAppLinkClickEvent) {
                return new Hit.EventHit.DefaultEventHit(liveChat, "powerfront_chat", "open_app_link", "powerfront", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(((ContactUsTrackingUiModel.OnAppLinkClickEvent) contactUsTrackingUiModel).f51142a)), 32, null);
            }
            if (contactUsTrackingUiModel instanceof ContactUsTrackingUiModel.OnPowerfrontAcceptConsentEvent) {
                return new Hit.EventHit.DefaultEventHit(liveChat, "contact_us", "accept_consent", "powerfront", "click", null, CollectionsKt.O(new AdditionalProperty.Origin(((ContactUsTrackingUiModel.OnPowerfrontAcceptConsentEvent) contactUsTrackingUiModel).f51148a)), 32, null);
            }
            if (contactUsTrackingUiModel instanceof ContactUsTrackingUiModel.OnPowerfrontNotificationClickEvent) {
                return new Hit.EventHit.DefaultEventHit(liveChat, "powerfront_chat", "open_notification_toast", "powerfront", "click", null, null, 96, null);
            }
            v40.g();
            return null;
        }
        ContactUsTrackingUiModel.OnContactMethodClickEvent onContactMethodClickEvent = (ContactUsTrackingUiModel.OnContactMethodClickEvent) contactUsTrackingUiModel;
        ContactUsMethod contactUsMethod = onContactMethodClickEvent.f51143a;
        if (!(contactUsMethod instanceof ContactUsMethod.Chat)) {
            if (contactUsMethod instanceof ContactUsMethod.Sms) {
                str = "open_sms";
            } else if (contactUsMethod instanceof ContactUsMethod.PhoneCall) {
                str = "open_call";
            } else if ((contactUsMethod instanceof ContactUsMethod.EmailForm) || (contactUsMethod instanceof ContactUsMethod.EmailNative)) {
                str = "open_email";
            } else if (contactUsMethod instanceof ContactUsMethod.WhatsApp) {
                str = "open_whatsapp";
            } else {
                if (!(contactUsMethod instanceof ContactUsMethod.KakaoTalk)) {
                    v40.g();
                    return null;
                }
                str = "open_kakaotalk";
            }
        }
        return new Hit.EventHit.DefaultEventHit(null, "contact_us", str, "contact_us", "click", null, CollectionsKt.O(new AdditionalProperty.Origin(onContactMethodClickEvent.f51144b)), 33, null);
    }
}
