package com.vuitton.android.presentation.screen.aicompanion.models.tracking;

import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionTrackingUiModelKt {
    public static final Hit a(AICompanionTrackingUiModel aICompanionTrackingUiModel) {
        aICompanionTrackingUiModel.getClass();
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.MainScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "my_companion", "my_companion", "my_companion", null, 17, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.HistoryScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "my_companion_history", "my_companion_history", "my_companion", null, 17, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitCompanionEntryButtonEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "button_my_companion", "my_companion", "click", null, CollectionsKt.O(new AdditionalProperty.Origin(((AICompanionTrackingUiModel.OnHitCompanionEntryButtonEvent) aICompanionTrackingUiModel).f52917a)), 33, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitCompanionBannerEvent) {
            AICompanionTrackingUiModel.OnHitCompanionBannerEvent onHitCompanionBannerEvent = (AICompanionTrackingUiModel.OnHitCompanionBannerEvent) aICompanionTrackingUiModel;
            String str = onHitCompanionBannerEvent.f52915a;
            return new Hit.EventHit.DefaultEventHit(null, str, "select_push_card", str, "click", null, CollectionsKt.P(new AdditionalProperty.Origin(str), new AdditionalProperty.ContentId(onHitCompanionBannerEvent.f52916b)), 33, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitExitOnboardingEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion_onboarding", "close_my_companion", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitSkipOnboardingEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion_onboarding", "skip", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitVersionLabelEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "version_label", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitExitCompanionButtonEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "close_my_companion_intention", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitLeaveConfirmationButtonEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "close_my_companion_confirmation", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitStayButtonEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "stay_on_my_companion", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnCloseExitPopinEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "close_leave_popin", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitHistoryButtonEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "open_history", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitSuggestionCardEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "push_suggestion", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitMicrophoneButtonEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "start_transcription", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitSendButtonEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "send_request", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnLongPressMessageEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "open_dropdown_menu_message", "my_companion", "long_press", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitCopyMessageEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "copy_message", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitEditMessageEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "edit_message", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitNewConversationEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "new_conversation", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitHistoryConversationEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion_history", "load_conversation", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitDeleteHistoryConversationEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion_history", "delete_conversation", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitHistoryNewConversationEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion_history", "new_conversation", "my_companion", "click", null, null, 97, null);
        }
        if (aICompanionTrackingUiModel instanceof AICompanionTrackingUiModel.OnHitRedirectCardEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_companion", "select_carousel", "my_companion", "click", null, CollectionsKt.P(new AdditionalProperty.ContentId(((AICompanionTrackingUiModel.OnHitRedirectCardEvent) aICompanionTrackingUiModel).f52929a), new AdditionalProperty.ContentType("CarouselMedium")), 33, null);
        }
        v40.g();
        return null;
    }
}
