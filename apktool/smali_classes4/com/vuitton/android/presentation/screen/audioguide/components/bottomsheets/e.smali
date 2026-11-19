.class public final synthetic Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

.field public final synthetic e:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/foundation/ScrollState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;I)V
    .locals 0

    iput p6, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->d:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->e:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->f:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->g:Landroidx/compose/foundation/ScrollState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->g:Landroidx/compose/foundation/ScrollState;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->f:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->e:Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->d:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/e;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a:F

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    sget-object v9, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v9, v0

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;->None:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitListeningQueueEvent;

    invoke-direct {v1, v0, v2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitListeningQueueEvent;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    sget-object v2, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;->None:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$7$1$5$1$1;

    invoke-direct {v0, v4, v8}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$7$1$5$1$1;-><init>(Landroidx/compose/foundation/ScrollState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v8, v8, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;->ListeningQueue:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitListeningQueueEvent;

    invoke-direct {v1, v0, v3}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitListeningQueueEvent;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a:F

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    sget-object v9, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v9, v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;->None:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTranscriptEvent;

    invoke-direct {v1, v0, v2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTranscriptEvent;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    sget-object v2, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;->None:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$7$1$4$1$1;

    invoke-direct {v0, v4, v8}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$7$1$4$1$1;-><init>(Landroidx/compose/foundation/ScrollState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v8, v8, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;->Transcript:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTranscriptEvent;

    invoke-direct {v1, v0, v3}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTranscriptEvent;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
