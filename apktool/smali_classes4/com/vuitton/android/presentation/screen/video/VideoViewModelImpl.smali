.class public final Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/video/VideoViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/video/VideoViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/presentation/utils/TrackingFrom;

.field public final d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;)V
    .locals 22
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "extra_url"

    invoke-virtual {v1, v2}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "identifier"

    invoke-virtual {v1, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "extra_tracking_from"

    invoke-virtual {v1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/utils/TrackingFrom;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->c:Lcom/vuitton/android/presentation/utils/TrackingFrom;

    const-string v4, "VIDEO_TRACKING_NAME"

    invoke-virtual {v1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->d:Ljava/lang/String;

    const-string v4, "extra_url_srt"

    invoke-virtual {v1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "EXTRA_CURRENT_PLAY_POSITION"

    invoke-virtual {v1, v5}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v12, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl$viewState$1;

    const/4 v13, 0x4

    invoke-direct {v12, v13, v5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v7, v8, v11, v12}, Lkotlinx/coroutines/flow/FlowKt;->h(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v12

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v13

    sget-object v14, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v15, Lcom/vuitton/android/presentation/screen/video/models/VideoViewState;

    const/16 v20, 0x7

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v15 .. v21}, Lcom/vuitton/android/presentation/screen/video/models/VideoViewState;-><init>(Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v12, v13, v14, v15}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->n:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v7, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v8, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v9, v0

    :cond_0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    invoke-interface {v6, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "^https?://player.louisvuitton.com/mp4/(\\d+)/\\d+/[a-zA-Z\\d]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel;)V
    .locals 10

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->c:Lcom/vuitton/android/presentation/utils/TrackingFrom;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/utils/TrackingFrom;->b:Ljava/lang/String;

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$VideoStarted;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, "video"

    if-eqz v1, :cond_3

    move-object v1, v0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {p1, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    if-nez v1, :cond_2

    move-object v1, v7

    :cond_2
    invoke-direct {v8, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v1, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object p1, v1, v5

    aput-object v8, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v4, "video"

    const-string v5, "video_started"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$VideoCompleted;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {p1, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    if-nez v1, :cond_4

    move-object v1, v7

    :cond_4
    invoke-direct {v8, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v1, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object p1, v1, v5

    aput-object v8, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v4, "video"

    const-string v5, "video_completed"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_5
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$MilestonePassed;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$MilestonePassed;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$MilestonePassed;->a:Ljava/lang/String;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v9, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    if-nez v1, :cond_6

    move-object v1, v7

    :cond_6
    invoke-direct {v8, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v1, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v9, v1, v5

    aput-object v8, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v4, "video"

    const/4 v6, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->n:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final d4(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x4

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iget-object p2, p2, Landroidx/media3/common/Player$Events;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {p2, v0}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    const-wide/16 v3, 0x19

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x64

    div-long/2addr v0, v3

    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x32

    mul-long/2addr v5, v7

    div-long/2addr v5, v3

    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x4b

    mul-long/2addr v7, v9

    div-long/2addr v7, v3

    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v9

    const-wide/16 v11, 0x5a

    mul-long/2addr v9, v11

    div-long/2addr v9, v3

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v3

    const-wide/16 v11, 0x0

    cmp-long p2, v3, v11

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez p2, :cond_0

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->e:Z

    if-nez p2, :cond_0

    iput-boolean v4, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->e:Z

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl$trackVideoStarted$1;

    invoke-direct {p2, p0, v3}, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl$trackVideoStarted$1;-><init>(Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, p2, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v11

    cmp-long p2, v11, v0

    if-lez p2, :cond_1

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->g:Z

    if-nez p2, :cond_1

    iput-boolean v4, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->g:Z

    const-string p1, "milestone_25"

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->zc(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    cmp-long p2, v0, v5

    if-lez p2, :cond_2

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->h:Z

    if-nez p2, :cond_2

    iput-boolean v4, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->h:Z

    const-string p1, "milestone_50"

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->zc(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    cmp-long p2, v0, v7

    if-lez p2, :cond_3

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->i:Z

    if-nez p2, :cond_3

    iput-boolean v4, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->i:Z

    const-string p1, "milestone_75"

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->zc(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide p1

    cmp-long p1, p1, v9

    if-lez p1, :cond_4

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->f:Z

    if-nez p1, :cond_4

    iput-boolean v4, p0, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;->f:Z

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl$trackVideoCompleted$1;

    invoke-direct {p2, p0, v3}, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl$trackVideoCompleted$1;-><init>(Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, p2, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_4
    return-void
.end method

.method public final zc(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl$trackMilestone$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl$trackMilestone$1;-><init>(Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
