.class public interface abstract Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$AudioGuideScreen;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$LeaveBottomSheetScreen;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitCarouselCardEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitContinueEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitExitEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitLanguageSelectorEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitLeaveEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitListeningQueueEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitMinus15sEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNarratorCardEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextContentEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextCoverEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextMiniPlayerMainScreenEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextMiniPlayerTrackDetailEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerMainScreenEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerTrackDetailEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerMainScreenEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerTrackDetailEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlus15sEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPreviousCoverEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitSpeedEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitStartEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTrackListItemEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTranscriptEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnLanguageSelectedEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnSwipeCarouselEvent;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$StartBottomSheetScreen;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$TrackDetailScreen;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u001e\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u0082\u0001\u001e !\"#$%&\'()*+,-./0123456789:;<=\u00a8\u0006>\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;",
        "",
        "AudioGuideScreen",
        "TrackDetailScreen",
        "StartBottomSheetScreen",
        "LeaveBottomSheetScreen",
        "OnHitStartEvent",
        "OnHitLeaveEvent",
        "OnHitContinueEvent",
        "OnHitExitEvent",
        "OnHitLanguageSelectorEvent",
        "OnLanguageSelectedEvent",
        "OnHitNarratorCardEvent",
        "OnHitTrackListItemEvent",
        "OnHitPlayMiniPlayerMainScreenEvent",
        "OnHitPauseMiniPlayerMainScreenEvent",
        "OnHitNextMiniPlayerMainScreenEvent",
        "OnHitNextCoverEvent",
        "OnHitPreviousCoverEvent",
        "OnHitPlayEvent",
        "OnHitPauseEvent",
        "OnHitPlus15sEvent",
        "OnHitMinus15sEvent",
        "OnHitTranscriptEvent",
        "OnHitListeningQueueEvent",
        "OnHitSpeedEvent",
        "OnHitCarouselCardEvent",
        "OnSwipeCarouselEvent",
        "OnHitNextContentEvent",
        "OnHitPlayMiniPlayerTrackDetailEvent",
        "OnHitPauseMiniPlayerTrackDetailEvent",
        "OnHitNextMiniPlayerTrackDetailEvent",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$AudioGuideScreen;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$LeaveBottomSheetScreen;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitCarouselCardEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitContinueEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitExitEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitLanguageSelectorEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitLeaveEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitListeningQueueEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitMinus15sEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNarratorCardEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextContentEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextCoverEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextMiniPlayerMainScreenEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextMiniPlayerTrackDetailEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerMainScreenEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerTrackDetailEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerMainScreenEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerTrackDetailEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlus15sEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPreviousCoverEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitSpeedEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitStartEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTrackListItemEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTranscriptEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnLanguageSelectedEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnSwipeCarouselEvent;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$StartBottomSheetScreen;",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$TrackDetailScreen;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation
