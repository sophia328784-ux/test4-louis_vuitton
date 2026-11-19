.class public abstract Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$MainScreen;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "my_companion"

    const-string v4, "my_companion"

    const-string v5, "my_companion"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$HistoryScreen;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "my_companion_history"

    const-string v4, "my_companion_history"

    const-string v5, "my_companion"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionEntryButtonEvent;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionEntryButtonEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionEntryButtonEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "my_companion"

    const-string v4, "button_my_companion"

    const-string v5, "my_companion"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionBannerEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionBannerEvent;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionBannerEvent;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-direct {v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionBannerEvent;->b:Ljava/lang/String;

    invoke-direct {v5, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v5, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x21

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v7, "select_push_card"

    const-string v9, "click"

    const/4 v10, 0x0

    move-object v8, v6

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitExitOnboardingEvent;

    if-eqz v0, :cond_4

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion_onboarding"

    const-string v7, "close_my_companion"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSkipOnboardingEvent;

    if-eqz v0, :cond_5

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion_onboarding"

    const-string v7, "skip"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_5
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitVersionLabelEvent;

    if-eqz v0, :cond_6

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "version_label"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_6
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitExitCompanionButtonEvent;

    if-eqz v0, :cond_7

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "close_my_companion_intention"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_7
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitLeaveConfirmationButtonEvent;

    if-eqz v0, :cond_8

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "close_my_companion_confirmation"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_8
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitStayButtonEvent;

    if-eqz v0, :cond_9

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "stay_on_my_companion"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_9
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnCloseExitPopinEvent;

    if-eqz v0, :cond_a

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "close_leave_popin"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_a
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryButtonEvent;

    if-eqz v0, :cond_b

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "open_history"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_b
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSuggestionCardEvent;

    if-eqz v0, :cond_c

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "push_suggestion"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_c
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitMicrophoneButtonEvent;

    if-eqz v0, :cond_d

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "start_transcription"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_d
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSendButtonEvent;

    if-eqz v0, :cond_e

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "send_request"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_e
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnLongPressMessageEvent;

    if-eqz v0, :cond_f

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "open_dropdown_menu_message"

    const-string v8, "my_companion"

    const-string v9, "long_press"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_f
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCopyMessageEvent;

    if-eqz v0, :cond_10

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "copy_message"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_10
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitEditMessageEvent;

    if-eqz v0, :cond_11

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "edit_message"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_11
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitNewConversationEvent;

    if-eqz v0, :cond_12

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "new_conversation"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_12
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryConversationEvent;

    if-eqz v0, :cond_13

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion_history"

    const-string v7, "load_conversation"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_13
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitDeleteHistoryConversationEvent;

    if-eqz v0, :cond_14

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion_history"

    const-string v7, "delete_conversation"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_14
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryNewConversationEvent;

    if-eqz v0, :cond_15

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion_history"

    const-string v7, "new_conversation"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_15
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitRedirectCardEvent;

    if-eqz v0, :cond_16

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitRedirectCardEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitRedirectCardEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    const-string v5, "CarouselMedium"

    invoke-direct {p0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, v3, v2

    aput-object p0, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x21

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "my_companion"

    const-string v7, "select_carousel"

    const-string v8, "my_companion"

    const-string v9, "click"

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_16
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
