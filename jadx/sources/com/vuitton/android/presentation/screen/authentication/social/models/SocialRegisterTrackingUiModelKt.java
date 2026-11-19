package com.vuitton.android.presentation.screen.authentication.social.models;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SocialRegisterTrackingUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54225a;

        static {
            int[] iArr = new int[SocialAuthMode.values().length];
            try {
                iArr[SocialAuthMode.LINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SocialAuthMode.KAKAO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f54225a = iArr;
        }
    }

    public static final String a(SocialAuthMode socialAuthMode) {
        int i2 = WhenMappings.f54225a[socialAuthMode.ordinal()];
        if (i2 != 1) {
            return i2 != 2 ? "google_sign_up" : "kakao_sign_up";
        }
        return "line_sign_up";
    }

    public static final Hit.EventHit.DefaultEventHit b(SocialRegisterTrackingUiModel socialRegisterTrackingUiModel) {
        String trackingKey;
        String str;
        String str2;
        String str3;
        boolean z = socialRegisterTrackingUiModel instanceof SocialRegisterTrackingUiModel.OnSocialRegisterClickEvent;
        HitType.Interaction interaction = HitType.Interaction.f66511a;
        if (z) {
            SocialRegisterTrackingUiModel.OnSocialRegisterClickEvent onSocialRegisterClickEvent = (SocialRegisterTrackingUiModel.OnSocialRegisterClickEvent) socialRegisterTrackingUiModel;
            int i2 = WhenMappings.f54225a[onSocialRegisterClickEvent.f54204c.ordinal()];
            if (i2 != 1) {
                str3 = i2 != 2 ? "continue_with_google_cta" : "continue_with_kakao_cta";
            } else {
                str3 = "continue_with_line_cta";
            }
            AdditionalProperty.ChannelId channelId = new AdditionalProperty.ChannelId("social_sign_up");
            TrackingAuthOrigin trackingAuthOrigin = onSocialRegisterClickEvent.f54202a;
            String trackingKey2 = trackingAuthOrigin != null ? trackingAuthOrigin.getTrackingKey() : null;
            if (trackingKey2 == null) {
                trackingKey2 = "";
            }
            AdditionalProperty.Origin origin = new AdditionalProperty.Origin(trackingKey2);
            TrackingAuthEntryPoint trackingAuthEntryPoint = onSocialRegisterClickEvent.f54203b;
            trackingKey = trackingAuthEntryPoint != null ? trackingAuthEntryPoint.getTrackingKey() : null;
            return new Hit.EventHit.DefaultEventHit(interaction, "account_creation", str3, "mylv_native", "click", "mylv_native_authentification", CollectionsKt.P(channelId, origin, new AdditionalProperty.EntryPoint(trackingKey != null ? trackingKey : "")));
        }
        if (socialRegisterTrackingUiModel instanceof SocialRegisterTrackingUiModel.OnSocialRegisterCloseEvent) {
            AdditionalProperty.ChannelId channelId2 = new AdditionalProperty.ChannelId("social_sign_up");
            SocialRegisterTrackingUiModel.OnSocialRegisterCloseEvent onSocialRegisterCloseEvent = (SocialRegisterTrackingUiModel.OnSocialRegisterCloseEvent) socialRegisterTrackingUiModel;
            TrackingAuthOrigin trackingAuthOrigin2 = onSocialRegisterCloseEvent.f54205a;
            String trackingKey3 = trackingAuthOrigin2 != null ? trackingAuthOrigin2.getTrackingKey() : null;
            if (trackingKey3 == null) {
                trackingKey3 = "";
            }
            AdditionalProperty.Origin origin2 = new AdditionalProperty.Origin(trackingKey3);
            TrackingAuthEntryPoint trackingAuthEntryPoint2 = onSocialRegisterCloseEvent.f54206b;
            trackingKey = trackingAuthEntryPoint2 != null ? trackingAuthEntryPoint2.getTrackingKey() : null;
            return new Hit.EventHit.DefaultEventHit(interaction, "account_creation", "close_popin", "mylv_native", "click", "mylv_native_authentification", CollectionsKt.P(channelId2, origin2, new AdditionalProperty.EntryPoint(trackingKey != null ? trackingKey : "")));
        }
        if (socialRegisterTrackingUiModel instanceof SocialRegisterTrackingUiModel.OnSocialRegisterConfirmEvent) {
            SocialRegisterTrackingUiModel.OnSocialRegisterConfirmEvent onSocialRegisterConfirmEvent = (SocialRegisterTrackingUiModel.OnSocialRegisterConfirmEvent) socialRegisterTrackingUiModel;
            SocialAuthMode socialAuthMode = onSocialRegisterConfirmEvent.f54212c;
            int i3 = WhenMappings.f54225a[socialAuthMode.ordinal()];
            if (i3 != 1) {
                str2 = i3 != 2 ? "confirm_google_sign_up_cta" : "confirm_kakao_sign_up_cta";
            } else {
                str2 = "confirm_line_sign_up_cta";
            }
            AdditionalProperty.ChannelId channelId3 = new AdditionalProperty.ChannelId("social_sign_up");
            AdditionalProperty.ContentId contentId = new AdditionalProperty.ContentId(a(socialAuthMode));
            TrackingAuthOrigin trackingAuthOrigin3 = onSocialRegisterConfirmEvent.f54210a;
            String trackingKey4 = trackingAuthOrigin3 != null ? trackingAuthOrigin3.getTrackingKey() : null;
            if (trackingKey4 == null) {
                trackingKey4 = "";
            }
            AdditionalProperty.Origin origin3 = new AdditionalProperty.Origin(trackingKey4);
            TrackingAuthEntryPoint trackingAuthEntryPoint3 = onSocialRegisterConfirmEvent.f54211b;
            trackingKey = trackingAuthEntryPoint3 != null ? trackingAuthEntryPoint3.getTrackingKey() : null;
            return new Hit.EventHit.DefaultEventHit(interaction, "account_creation", str2, "mylv_native", "click", "mylv_native_authentification", CollectionsKt.P(channelId3, contentId, origin3, new AdditionalProperty.EntryPoint(trackingKey != null ? trackingKey : "")));
        }
        if (socialRegisterTrackingUiModel instanceof SocialRegisterTrackingUiModel.OnSocialRegisterPrivacyCheckBoxEvent) {
            SocialRegisterTrackingUiModel.OnSocialRegisterPrivacyCheckBoxEvent onSocialRegisterPrivacyCheckBoxEvent = (SocialRegisterTrackingUiModel.OnSocialRegisterPrivacyCheckBoxEvent) socialRegisterTrackingUiModel;
            String str4 = onSocialRegisterPrivacyCheckBoxEvent.f54218c ? "untick_checkbox" : "tick_checkbox";
            AdditionalProperty.ChannelId channelId4 = new AdditionalProperty.ChannelId("social_sign_up");
            AdditionalProperty.ContentId contentId2 = new AdditionalProperty.ContentId(a(onSocialRegisterPrivacyCheckBoxEvent.d));
            TrackingAuthOrigin trackingAuthOrigin4 = onSocialRegisterPrivacyCheckBoxEvent.f54216a;
            String trackingKey5 = trackingAuthOrigin4 != null ? trackingAuthOrigin4.getTrackingKey() : null;
            if (trackingKey5 == null) {
                trackingKey5 = "";
            }
            AdditionalProperty.Origin origin4 = new AdditionalProperty.Origin(trackingKey5);
            TrackingAuthEntryPoint trackingAuthEntryPoint4 = onSocialRegisterPrivacyCheckBoxEvent.f54217b;
            trackingKey = trackingAuthEntryPoint4 != null ? trackingAuthEntryPoint4.getTrackingKey() : null;
            return new Hit.EventHit.DefaultEventHit(interaction, "account_creation", str4, "mylv_native", "click", "mylv_native_authentification", CollectionsKt.P(channelId4, contentId2, origin4, new AdditionalProperty.EntryPoint(trackingKey != null ? trackingKey : "")));
        }
        if (socialRegisterTrackingUiModel instanceof SocialRegisterTrackingUiModel.OnSocialRegisterPrivacyLinkEvent) {
            AdditionalProperty.ChannelId channelId5 = new AdditionalProperty.ChannelId("social_sign_up");
            SocialRegisterTrackingUiModel.OnSocialRegisterPrivacyLinkEvent onSocialRegisterPrivacyLinkEvent = (SocialRegisterTrackingUiModel.OnSocialRegisterPrivacyLinkEvent) socialRegisterTrackingUiModel;
            AdditionalProperty.ContentId contentId3 = new AdditionalProperty.ContentId(a(onSocialRegisterPrivacyLinkEvent.f54221c));
            TrackingAuthOrigin trackingAuthOrigin5 = onSocialRegisterPrivacyLinkEvent.f54219a;
            String trackingKey6 = trackingAuthOrigin5 != null ? trackingAuthOrigin5.getTrackingKey() : null;
            if (trackingKey6 == null) {
                trackingKey6 = "";
            }
            AdditionalProperty.Origin origin5 = new AdditionalProperty.Origin(trackingKey6);
            TrackingAuthEntryPoint trackingAuthEntryPoint5 = onSocialRegisterPrivacyLinkEvent.f54220b;
            trackingKey = trackingAuthEntryPoint5 != null ? trackingAuthEntryPoint5.getTrackingKey() : null;
            return new Hit.EventHit.DefaultEventHit(interaction, "account_creation", "privacy_policy", "mylv_native", "click", "mylv_native_authentification", CollectionsKt.P(channelId5, contentId3, origin5, new AdditionalProperty.EntryPoint(trackingKey != null ? trackingKey : "")));
        }
        if (socialRegisterTrackingUiModel instanceof SocialRegisterTrackingUiModel.OnSocialRegisterCloseProfileEvent) {
            SocialRegisterTrackingUiModel.OnSocialRegisterCloseProfileEvent onSocialRegisterCloseProfileEvent = (SocialRegisterTrackingUiModel.OnSocialRegisterCloseProfileEvent) socialRegisterTrackingUiModel;
            SocialAuthMode socialAuthMode2 = onSocialRegisterCloseProfileEvent.f54209c;
            int i4 = WhenMappings.f54225a[socialAuthMode2.ordinal()];
            if (i4 != 1) {
                str = i4 != 2 ? "close_google_sign_up" : "close_kakao_sign_up";
            } else {
                str = "close_line_sign_up";
            }
            AdditionalProperty.ChannelId channelId6 = new AdditionalProperty.ChannelId("social_sign_up");
            AdditionalProperty.ContentId contentId4 = new AdditionalProperty.ContentId(a(socialAuthMode2));
            TrackingAuthOrigin trackingAuthOrigin6 = onSocialRegisterCloseProfileEvent.f54207a;
            String trackingKey7 = trackingAuthOrigin6 != null ? trackingAuthOrigin6.getTrackingKey() : null;
            if (trackingKey7 == null) {
                trackingKey7 = "";
            }
            AdditionalProperty.Origin origin6 = new AdditionalProperty.Origin(trackingKey7);
            TrackingAuthEntryPoint trackingAuthEntryPoint6 = onSocialRegisterCloseProfileEvent.f54208b;
            trackingKey = trackingAuthEntryPoint6 != null ? trackingAuthEntryPoint6.getTrackingKey() : null;
            return new Hit.EventHit.DefaultEventHit(interaction, "account_creation", str, "mylv_native", "click", "mylv_native_authentification", CollectionsKt.P(channelId6, contentId4, origin6, new AdditionalProperty.EntryPoint(trackingKey != null ? trackingKey : "")));
        }
        if (socialRegisterTrackingUiModel instanceof SocialRegisterTrackingUiModel.OnSocialRegisterSuccessEvent) {
            AdditionalProperty.ChannelId channelId7 = new AdditionalProperty.ChannelId("social_sign_up");
            SocialRegisterTrackingUiModel.OnSocialRegisterSuccessEvent onSocialRegisterSuccessEvent = (SocialRegisterTrackingUiModel.OnSocialRegisterSuccessEvent) socialRegisterTrackingUiModel;
            AdditionalProperty.ContentId contentId5 = new AdditionalProperty.ContentId(a(onSocialRegisterSuccessEvent.f54224c));
            TrackingAuthOrigin trackingAuthOrigin7 = onSocialRegisterSuccessEvent.f54222a;
            String trackingKey8 = trackingAuthOrigin7 != null ? trackingAuthOrigin7.getTrackingKey() : null;
            if (trackingKey8 == null) {
                trackingKey8 = "";
            }
            AdditionalProperty.Origin origin7 = new AdditionalProperty.Origin(trackingKey8);
            TrackingAuthEntryPoint trackingAuthEntryPoint7 = onSocialRegisterSuccessEvent.f54223b;
            trackingKey = trackingAuthEntryPoint7 != null ? trackingAuthEntryPoint7.getTrackingKey() : null;
            return new Hit.EventHit.DefaultEventHit(HitType.Register.f66517a, "account_creation", "registration_successful", "mylv_native", "create_an_account", "mylv_native_authentification", CollectionsKt.P(channelId7, contentId5, origin7, new AdditionalProperty.EntryPoint(trackingKey != null ? trackingKey : "")));
        }
        if (!(socialRegisterTrackingUiModel instanceof SocialRegisterTrackingUiModel.OnSocialRegisterFailureEvent)) {
            v40.g();
            return null;
        }
        AdditionalProperty.ChannelId channelId8 = new AdditionalProperty.ChannelId("social_sign_up");
        SocialRegisterTrackingUiModel.OnSocialRegisterFailureEvent onSocialRegisterFailureEvent = (SocialRegisterTrackingUiModel.OnSocialRegisterFailureEvent) socialRegisterTrackingUiModel;
        AdditionalProperty.ContentId contentId6 = new AdditionalProperty.ContentId(a(onSocialRegisterFailureEvent.f54215c));
        TrackingAuthOrigin trackingAuthOrigin8 = onSocialRegisterFailureEvent.f54213a;
        String trackingKey9 = trackingAuthOrigin8 != null ? trackingAuthOrigin8.getTrackingKey() : null;
        if (trackingKey9 == null) {
            trackingKey9 = "";
        }
        AdditionalProperty.Origin origin8 = new AdditionalProperty.Origin(trackingKey9);
        TrackingAuthEntryPoint trackingAuthEntryPoint8 = onSocialRegisterFailureEvent.f54214b;
        trackingKey = trackingAuthEntryPoint8 != null ? trackingAuthEntryPoint8.getTrackingKey() : null;
        return new Hit.EventHit.DefaultEventHit(interaction, "account_creation", "registration_failed", "mylv_native", MvelScriptManager.VAR_EVENT, "mylv_native_authentification", CollectionsKt.P(channelId8, contentId6, origin8, new AdditionalProperty.EntryPoint(trackingKey != null ? trackingKey : "")));
    }
}
