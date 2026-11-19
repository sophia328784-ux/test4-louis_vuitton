.class final Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1"
    f = "ImmersiveArticleViewModelImpl.kt"
    l = {
        0x12d,
        0x132,
        0x143
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

.field public d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->g:Ljava/lang/String;

    iput-wide p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->h:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->g:Ljava/lang/String;

    iget-wide v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->h:J

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->e:I

    iget-wide v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->h:J

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    if-eqz v1, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

    check-cast v0, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;

    iput v7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->e:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto/16 :goto_3

    :cond_4
    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_b

    move-object v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

    invoke-static {v8, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->c:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;

    iput-boolean v7, v9, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->l:Z

    :cond_5
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->b:Ljava/lang/Object;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->e:I

    invoke-static {v2, v3, p0}, Lcom/vuitton/android/presentation/loading/LoaderExt;->a(JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_6

    goto/16 :goto_3

    :cond_6
    move-object v7, p1

    move-object v6, v8

    :goto_1
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    move-result-object v9

    invoke-interface {p1, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_7
    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

    instance-of v10, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;

    if-eqz v10, :cond_7

    goto :goto_2

    :cond_8
    move-object v9, v4

    :goto_2
    check-cast v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

    if-eqz v9, :cond_9

    check-cast v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;

    iget-object p1, v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;->b:Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;)V

    :cond_9
    invoke-static {v6, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_a
    move-object p1, v7

    :cond_b
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v6, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v7, "ImmersiveArticleViewModelImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v9, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->b:Ljava/lang/Object;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;->e:I

    invoke-static {v2, v3, p0}, Lcom/vuitton/android/presentation/loading/LoaderExt;->a(JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c

    :goto_3
    return-object v0

    :cond_c
    move-object p0, v8

    :goto_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_d
    iget-object p0, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
