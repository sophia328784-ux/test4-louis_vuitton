.class final Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl$initAudioGuide$1"
    f = "AudioGuideViewModelImpl.kt"
    l = {
        0x91
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;->d:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;->d:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;->d:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->t:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;->c:I

    const-string v7, "AudioGuideViewModelImpl"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_1

    if-ne v6, v9, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-nez v3, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;

    invoke-interface {v4, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const-string v0, "AudioGuideId is missing"

    invoke-interface {v2, v7, v0, v8}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_2
    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->v:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v11, Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action$OpenTableOfContent;->a:Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action$OpenTableOfContent;

    invoke-interface {v6, v10, v11}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v6

    const-string v10, "id"

    invoke-virtual {v6, v3, v10}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;->c:I

    invoke-static {v1, v8, v0}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_3

    return-object v5

    :cond_3
    move-object v0, v6

    :goto_0
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v3, Lkotlin/Result$Failure;

    if-nez v5, :cond_c

    move-object v5, v3

    check-cast v5, Lkotlin/Unit;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->u:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v6, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$BeforeStart;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$BeforeStart;

    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v5, v9, v9}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->m6(Ljava/lang/String;ZZ)V

    :goto_1
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->ENHANCED_CONTRAST:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    filled-new-array {v5, v6, v9}, [Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;->a([Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v10

    if-nez v10, :cond_8

    check-cast v1, Ljava/util/Map;

    new-instance v10, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    const/4 v11, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_2

    :cond_5
    move v6, v11

    :goto_2
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_3

    :cond_6
    move v9, v11

    :goto_3
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :cond_7
    invoke-direct {v10, v6, v9, v11}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZ)V

    move-object/from16 v20, v10

    goto :goto_4

    :cond_8
    new-instance v12, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v20, v12

    :cond_9
    :goto_4
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v6, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v6, :cond_a

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-object v13, v6

    goto :goto_5

    :cond_a
    move-object v13, v8

    :goto_5
    if-eqz v13, :cond_b

    const/16 v19, 0x0

    const/16 v21, 0x1f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    invoke-static/range {v13 .. v21}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;JLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lcom/vuitton/android/presentation/model/common/A11ySettings;I)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-result-object v5

    :cond_b
    invoke-interface {v4, v1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_c
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_d

    sget-object v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;

    invoke-interface {v4, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const-string v3, "Failed to load audio guide"

    invoke-interface {v2, v7, v3, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error$OpenTableOfContentError;

    invoke-direct {v2, v1}, Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error$OpenTableOfContentError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_d
    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
