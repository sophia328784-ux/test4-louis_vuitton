.class final Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;
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
    c = "com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl$fetchPortal$3"
    f = "PortalSliderViewModelImpl.kt"
    l = {
        0x67
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;->c:Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;->c:Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;-><init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;->c:Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->j:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;->b:I

    invoke-virtual {v2, v6, v0}, Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_a

    move-object v1, v0

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/portal/Portal;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_1
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Lcom/vuitton/foundation/model/domain/model/portal/Portal;->a:Ljava/lang/String;

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/portal/Portal;->b:Ljava/lang/String;

    iget-object v11, v1, Lcom/vuitton/foundation/model/domain/model/portal/Portal;->c:Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/portal/Portal;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v7}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v12

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/portal/Portal;->e:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/portal/Portal$Slide;

    new-instance v14, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    iget-object v15, v8, Lcom/vuitton/foundation/model/domain/model/portal/Portal$Slide;->a:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v8, Lcom/vuitton/foundation/model/domain/model/portal/Portal$Slide;->b:Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

    sget-object v17, Lcom/vuitton/android/presentation/screen/portal/models/mapper/PortalMapperKt$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v17, v3

    if-ne v3, v4, :cond_6

    sget-object v3, Lcom/vuitton/android/presentation/screen/portal/models/PortalSlideTypeUiModel;->CONTENT:Lcom/vuitton/android/presentation/screen/portal/models/PortalSlideTypeUiModel;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/portal/Portal$Slide;->c:Lcom/vuitton/foundation/model/domain/model/portal/PortalData;

    new-instance v17, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;

    iget-object v4, v8, Lcom/vuitton/foundation/model/domain/model/portal/PortalData;->a:Ljava/lang/String;

    move-object/from16 p0, v0

    iget-object v0, v8, Lcom/vuitton/foundation/model/domain/model/portal/PortalData;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/vuitton/foundation/model/domain/model/portal/PortalData;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v8, Lcom/vuitton/foundation/model/domain/model/portal/PortalData;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v21

    iget-object v0, v8, Lcom/vuitton/foundation/model/domain/model/portal/PortalData;->e:Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;

    move-object/from16 v18, v4

    if-eqz v0, :cond_3

    new-instance v4, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;

    move-object/from16 p1, v7

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;->b:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v0

    invoke-direct {v4, v7, v0}, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    move-object/from16 v22, v4

    goto :goto_3

    :cond_3
    move-object/from16 p1, v7

    move-object/from16 v22, v16

    :goto_3
    iget-object v0, v8, Lcom/vuitton/foundation/model/domain/model/portal/PortalData;->f:Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;

    if-eqz v0, :cond_5

    new-instance v24, Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;->a:Ljava/time/Instant;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;->b:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v7}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v26

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;->d:Ljava/lang/String;

    move-object/from16 v25, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;->f:Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;

    move-object/from16 v29, v4

    if-eqz v0, :cond_4

    new-instance v4, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;

    move-object/from16 v27, v7

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;->b:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v0

    invoke-direct {v4, v7, v0}, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    move-object/from16 v30, v4

    :goto_4
    move-object/from16 v28, v8

    goto :goto_5

    :cond_4
    move-object/from16 v27, v7

    move-object/from16 v30, v16

    goto :goto_4

    :goto_5
    invoke-direct/range {v24 .. v30}, Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;-><init>(Ljava/time/Instant;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;)V

    move-object/from16 v23, v24

    goto :goto_6

    :cond_5
    move-object/from16 v23, v16

    :goto_6
    invoke-direct/range {v17 .. v23}, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;)V

    move-object/from16 v0, v17

    invoke-direct {v14, v15, v3, v0}, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/portal/models/PortalSlideTypeUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v3, v16

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-object v16

    :cond_7
    move-object/from16 p0, v0

    move-object/from16 v16, v3

    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/portal/Portal;->f:Lcom/vuitton/foundation/model/domain/model/common/Sound;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/Sound;->b:Ljava/lang/String;

    move-object v14, v0

    goto :goto_7

    :cond_8
    move-object/from16 v14, v16

    :goto_7
    new-instance v8, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    invoke-direct/range {v8 .. v14}, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v2, v6, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v3, v16

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 p0, v0

    move-object/from16 v16, v3

    :goto_8
    invoke-static/range {p0 .. p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "openPortalMonitor"

    if-eqz v0, :cond_d

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->n:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v2, :cond_c

    new-instance v3, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$OpenPortalError;

    invoke-direct {v3, v0}, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$OpenPortalError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_b
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_d
    :goto_9
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->n:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16
.end method
