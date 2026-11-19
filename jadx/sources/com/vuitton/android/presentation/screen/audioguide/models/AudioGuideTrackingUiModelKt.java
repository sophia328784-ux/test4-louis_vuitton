package com.vuitton.android.presentation.screen.audioguide.models;

import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideTrackingUiModelKt {
    public static final Hit a(AudioGuideTrackingUiModel audioGuideTrackingUiModel) {
        audioGuideTrackingUiModel.getClass();
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.AudioGuideScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "audio_guide_main_screen", "audio_guide", "audio_guide", null, 17, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.TrackDetailScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "audio_guide_track_detail", "audio_guide_track_detail", "audio_guide", null, 17, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.StartBottomSheetScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "audio_guide_start_popin", "start_popin", "audio_guide", null, 17, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.LeaveBottomSheetScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "audio_guide_leaving_popin", "leaving_popin", "audio_guide", null, 17, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitStartEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_start_popin", "start_audio_guide", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitLeaveEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_leaving_popin", "leave_audio_guide", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitContinueEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_leaving_popin", "stay_on_audio_guide", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitExitEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_main_screen", "close_audio_guide", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitLanguageSelectorEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_main_screen", "display_languages", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnLanguageSelectedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_main_screen", "select_languages", "audio_guide", "click", "audio_guide", CollectionsKt.O(new AdditionalProperty.ContentId(((AudioGuideTrackingUiModel.OnLanguageSelectedEvent) audioGuideTrackingUiModel).f53191a)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitNarratorCardEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_main_screen", "narrator_preview", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitTrackListItemEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_main_screen", "open_track_detail", "audio_guide", "click", "audio_guide", CollectionsKt.O(new AdditionalProperty.ContentId(((AudioGuideTrackingUiModel.OnHitTrackListItemEvent) audioGuideTrackingUiModel).f53188a)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitPlayMiniPlayerMainScreenEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_main_screen_mini_player", "play", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitPauseMiniPlayerMainScreenEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_main_screen_mini_player", "pause", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitNextMiniPlayerMainScreenEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_main_screen_mini_player", "next", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitNextCoverEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", "next", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitPreviousCoverEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", "previous", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitPlayEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", "play", "audio_guide", "click", "audio_guide", CollectionsKt.O(new AdditionalProperty.ContentId(((AudioGuideTrackingUiModel.OnHitPlayEvent) audioGuideTrackingUiModel).f53181a)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitPauseEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", "pause", "audio_guide", "click", "audio_guide", CollectionsKt.O(new AdditionalProperty.ContentId(((AudioGuideTrackingUiModel.OnHitPauseEvent) audioGuideTrackingUiModel).f53178a)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitPlus15sEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", "plus_15s", "audio_guide", "click", "audio_guide", CollectionsKt.O(new AdditionalProperty.ContentId(((AudioGuideTrackingUiModel.OnHitPlus15sEvent) audioGuideTrackingUiModel).f53184a)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitMinus15sEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", "less_15s", "audio_guide", "click", "audio_guide", CollectionsKt.O(new AdditionalProperty.ContentId(((AudioGuideTrackingUiModel.OnHitMinus15sEvent) audioGuideTrackingUiModel).f53172a)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitTranscriptEvent) {
            AudioGuideTrackingUiModel.OnHitTranscriptEvent onHitTranscriptEvent = (AudioGuideTrackingUiModel.OnHitTranscriptEvent) audioGuideTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", onHitTranscriptEvent.f53190b ? "transcript_on" : "transcript_off", "audio_guide", "click", "audio_guide", CollectionsKt.O(new AdditionalProperty.ContentId(onHitTranscriptEvent.f53189a)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitListeningQueueEvent) {
            AudioGuideTrackingUiModel.OnHitListeningQueueEvent onHitListeningQueueEvent = (AudioGuideTrackingUiModel.OnHitListeningQueueEvent) audioGuideTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", onHitListeningQueueEvent.f53171b ? "show_listening_queue" : "hide_listening_queue", "audio_guide", "click", "audio_guide", CollectionsKt.O(new AdditionalProperty.ContentId(onHitListeningQueueEvent.f53170a)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitSpeedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", "speed_change", "audio_guide", "click", "audio_guide", CollectionsKt.O(new AdditionalProperty.ContentId(((AudioGuideTrackingUiModel.OnHitSpeedEvent) audioGuideTrackingUiModel).f53186a)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitCarouselCardEvent) {
            AudioGuideTrackingUiModel.OnHitCarouselCardEvent onHitCarouselCardEvent = (AudioGuideTrackingUiModel.OnHitCarouselCardEvent) audioGuideTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", "select_carousel", "audio_guide", "click", "audio_guide", CollectionsKt.P(new AdditionalProperty.ContentId(onHitCarouselCardEvent.f53164a), new AdditionalProperty.Index(onHitCarouselCardEvent.f53165b)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnSwipeCarouselEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", "swipe_carousel", "audio_guide", "swipe", "audio_guide", CollectionsKt.O(new AdditionalProperty.ContentId(((AudioGuideTrackingUiModel.OnSwipeCarouselEvent) audioGuideTrackingUiModel).f53192a)), 1, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitNextContentEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail", "next_content", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitPlayMiniPlayerTrackDetailEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail_mini_player", "play", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitPauseMiniPlayerTrackDetailEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail_mini_player", "pause", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        if (audioGuideTrackingUiModel instanceof AudioGuideTrackingUiModel.OnHitNextMiniPlayerTrackDetailEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "audio_guide_track_detail_mini_player", "next", "audio_guide", "click", "audio_guide", null, 65, null);
        }
        v40.g();
        return null;
    }
}
