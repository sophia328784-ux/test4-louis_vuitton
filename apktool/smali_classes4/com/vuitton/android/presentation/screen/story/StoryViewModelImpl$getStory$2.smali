.class final Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;
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
    c = "com.vuitton.android.presentation.screen.story.StoryViewModelImpl$getStory$2"
    f = "StoryViewModelImpl.kt"
    l = {
        0x65
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;->c:Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;->c:Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;-><init>(Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;->c:Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    if-ne v5, v7, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v5, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/story/GetStoryUseCase;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;->b:I

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl$getStory$2;->d:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Lcom/vuitton/android/domain/usecase/story/GetStoryUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_3

    return-object v4

    :cond_3
    :goto_0
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v0, Lkotlin/Result$Failure;

    if-nez v4, :cond_d

    move-object v4, v0

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/story/Story;

    :cond_4
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v5, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_5
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v5, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_6
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;

    iget-object v9, v4, Lcom/vuitton/foundation/model/domain/model/story/Story;->b:Ljava/lang/String;

    iget-object v10, v4, Lcom/vuitton/foundation/model/domain/model/story/Story;->c:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_1
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/util/List;

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/story/Story;->d:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/story/StorySlide;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;

    iget-object v12, v10, Lcom/vuitton/foundation/model/domain/model/story/StorySlide;->a:Ljava/lang/String;

    iget-object v13, v10, Lcom/vuitton/foundation/model/domain/model/story/StorySlide;->b:Ljava/lang/String;

    iget-object v14, v10, Lcom/vuitton/foundation/model/domain/model/story/StorySlide;->c:Ljava/lang/String;

    iget-object v15, v10, Lcom/vuitton/foundation/model/domain/model/story/StorySlide;->d:Ljava/lang/String;

    iget-object v6, v10, Lcom/vuitton/foundation/model/domain/model/story/StorySlide;->e:Lcom/vuitton/foundation/model/domain/model/story/StoryAsset;

    move-object/from16 p0, v0

    if-eqz v6, :cond_9

    new-instance v0, Lcom/vuitton/android/presentation/screen/story/models/StoryAssetUiModel;

    move-object/from16 p1, v4

    iget-object v4, v6, Lcom/vuitton/foundation/model/domain/model/story/StoryAsset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v4, :cond_7

    invoke-static {v4}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v4

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/story/StoryAsset;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    if-eqz v6, :cond_8

    invoke-static {v6}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-result-object v6

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    invoke-direct {v0, v4, v6}, Lcom/vuitton/android/presentation/screen/story/models/StoryAssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    move-object/from16 v16, v0

    goto :goto_5

    :cond_9
    move-object/from16 p1, v4

    const/16 v16, 0x0

    :goto_5
    iget-object v0, v10, Lcom/vuitton/foundation/model/domain/model/story/StorySlide;->f:Lcom/vuitton/foundation/model/domain/model/story/StoryCta;

    if-eqz v0, :cond_a

    new-instance v4, Lcom/vuitton/android/presentation/screen/story/models/StoryCtaUiModel;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/story/StoryCta;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/story/StoryCta;->b:Ljava/lang/String;

    invoke-direct {v4, v6, v0}, Lcom/vuitton/android/presentation/screen/story/models/StoryCtaUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v4

    goto :goto_6

    :cond_a
    const/16 v17, 0x0

    :goto_6
    invoke-direct/range {v11 .. v17}, Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/story/models/StoryAssetUiModel;Lcom/vuitton/android/presentation/screen/story/models/StoryCtaUiModel;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    goto :goto_2

    :cond_b
    move-object/from16 p0, v0

    move-object/from16 p1, v4

    invoke-interface {v7, v5, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    goto/16 :goto_1

    :cond_d
    move-object/from16 p0, v0

    :goto_7
    invoke-static/range {p0 .. p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;->o:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v4, :cond_e

    new-instance v5, Lcom/vuitton/android/domain/monitoring/StoryMonitoring$Error$OpenStoryError;

    invoke-direct {v5, v0}, Lcom/vuitton/android/domain/monitoring/StoryMonitoring$Error$OpenStoryError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_e
    iget-boolean v0, v1, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;->e:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;->LAST_SLIDE_CHECKED:Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;->v9(Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;)V

    goto :goto_8

    :cond_f
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_10
    :goto_8
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_11
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;->o:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
