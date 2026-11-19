.class public final synthetic Lra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lra;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    iput-object p2, p0, Lra;->d:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iput-object p3, p0, Lra;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 13
    iput p4, p0, Lra;->b:I

    iput-object p1, p0, Lra;->d:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iput-object p2, p0, Lra;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    iput-object p3, p0, Lra;->e:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lra;->b:I

    iget-object v1, p0, Lra;->e:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lra;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    iget-object p0, p0, Lra;->d:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a:F

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->c:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne p0, v0, :cond_0

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerTrackDetailEvent;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerTrackDetailEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_0

    :cond_0
    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerTrackDetailEvent;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerTrackDetailEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a:F

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->e:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitSpeedEvent;

    invoke-direct {v2, p0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitSpeedEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->c:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne p0, v0, :cond_1

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerMainScreenEvent;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerMainScreenEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_1

    :cond_1
    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerMainScreenEvent;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerMainScreenEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_1
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
