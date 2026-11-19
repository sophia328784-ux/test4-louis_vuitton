.class final Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$getArticleDetail$1"
    f = "ImmersiveArticleViewModelImpl.kt"
    l = {
        0x102,
        0x108,
        0x11c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

.field public d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:J

.field public final synthetic j:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;JLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->g:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->h:Ljava/lang/String;

    iput-wide p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->i:J

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->j:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;

    iget-wide v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->i:J

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->j:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->g:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->h:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;JLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->f:I

    iget-wide v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->i:J

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->j:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->g:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v6, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->e:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_3
    move-object v11, v2

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->f:I

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->h:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    goto/16 :goto_a

    :goto_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v11, Lkotlin/Result$Failure;

    if-nez v2, :cond_18

    move-object v2, v11

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_1
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    iget-object v14, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;

    iget-object v15, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->c:Ljava/util/List;

    if-eqz v14, :cond_6

    new-instance v16, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    iget-object v7, v14, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;->d:Lcom/vuitton/foundation/model/domain/model/common/Sound;

    iget-wide v8, v7, Lcom/vuitton/foundation/model/domain/model/common/Sound;->c:J

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/Sound;->b:Ljava/lang/String;

    iget-object v6, v14, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-object/from16 v20, v6

    iget-object v6, v14, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;->b:Ljava/lang/String;

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;->c:Ljava/lang/String;

    if-nez v14, :cond_5

    const-string v14, ""

    :cond_5
    move-object/from16 v21, v6

    move-object/from16 v19, v7

    move-wide/from16 v17, v8

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v22}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;-><init>(JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v16

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v12, v13, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    if-eqz v15, :cond_10

    move-object v6, v15

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;

    instance-of v8, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;

    if-eqz v8, :cond_9

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->k:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/Asset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    if-eqz v7, :cond_8

    invoke-static {v7}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_5

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_9
    instance-of v8, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;

    if-eqz v8, :cond_a

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->h:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/Asset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    if-eqz v7, :cond_8

    invoke-static {v7}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_5

    :cond_a
    instance-of v8, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;

    if-eqz v8, :cond_b

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->l:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/Asset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    if-eqz v7, :cond_8

    invoke-static {v7}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_b
    instance-of v8, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;

    if-eqz v8, :cond_c

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;->e:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/Asset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    if-eqz v7, :cond_8

    invoke-static {v7}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_c
    instance-of v8, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;

    if-eqz v8, :cond_8

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;->d:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v9, :cond_e

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    goto :goto_3

    :cond_e
    const/4 v9, 0x0

    :goto_3
    invoke-static {v9}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_4

    :cond_f
    const/4 v8, 0x0

    :goto_4
    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;

    if-eqz v8, :cond_8

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    :goto_5
    if-eqz v7, :cond_7

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    :goto_6
    invoke-static {v10}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v6

    new-instance v8, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$preloadSharedImage$1;

    const/4 v9, 0x0

    invoke-direct {v8, v10, v7, v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$preloadSharedImage$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    invoke-static {v6, v9, v9, v8, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v10, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->l:Z

    :cond_11
    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->b:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->e:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->f:I

    invoke-static {v3, v4, v0}, Lcom/vuitton/android/presentation/loading/LoaderExt;->a(JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_12

    goto/16 :goto_a

    :cond_12
    move-object v7, v5

    move-object v8, v10

    :goto_7
    iget-object v6, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    move-result-object v9

    invoke-interface {v6, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v6, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz v6, :cond_15

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    :cond_13
    move-object v9, v6

    check-cast v9, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

    instance-of v12, v12, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;

    if-eqz v12, :cond_13

    goto :goto_8

    :cond_14
    const/4 v9, 0x0

    :goto_8
    check-cast v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

    if-eqz v9, :cond_15

    check-cast v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;

    iget-object v6, v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;->b:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;)V

    :cond_15
    invoke-static {v8, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_16
    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v6, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->H:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v7, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$LoadImmersiveProducts;->a:Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$LoadImmersiveProducts;

    invoke-interface {v2, v6, v7}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v2

    invoke-static {v8}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v2, v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {v6, v9, v9, v7, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_9

    :cond_17
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_18
    :goto_9
    invoke-static {v11}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v6, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v7, "ImmersiveArticleViewModelImpl"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->b:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->e:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;->f:I

    invoke-static {v3, v4, v0}, Lcom/vuitton/android/presentation/loading/LoaderExt;->a(JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_19

    :goto_a
    return-object v1

    :cond_19
    move-object v1, v2

    move-object v0, v10

    :goto_b
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v2, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleError;

    invoke-direct {v2, v1}, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    invoke-interface {v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->I:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v2, :cond_1a

    new-instance v3, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleFull;

    invoke-direct {v3, v1}, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleFull;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_1a
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->I:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_1b
    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
