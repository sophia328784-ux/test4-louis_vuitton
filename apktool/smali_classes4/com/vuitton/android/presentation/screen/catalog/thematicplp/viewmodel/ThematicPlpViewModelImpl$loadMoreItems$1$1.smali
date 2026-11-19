.class final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;
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
    c = "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$loadMoreItems$1$1"
    f = "ThematicPlpViewModelImpl.kt"
    l = {
        0x14a,
        0x154
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/util/Collection;

.field public e:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:I

.field public final synthetic k:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->i:Ljava/lang/String;

    iput p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->j:I

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->k:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->j:I

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->k:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->i:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->e:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->d:Ljava/util/Collection;

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_2
    move-object v3, p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;

    new-instance v3, Ljava/lang/Integer;

    iget v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->j:I

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    iput v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->f:I

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->i:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v3, p0}, Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    goto :goto_1

    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, v3, Lkotlin/Result$Failure;

    if-nez p1, :cond_7

    move-object p1, v3

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->c:Ljava/util/List;

    if-nez v5, :cond_5

    :cond_4
    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_5
    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->b:Ljava/util/List;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/mapper/ThematicPlpThemesMapperKt;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->c:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/mapper/ThematicPlpThemesMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    move-result-object p1

    check-cast v5, Ljava/util/Collection;

    iget-object v6, p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->c:Ljava/util/List;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->c:Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->d:Ljava/util/Collection;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->e:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->f:I

    invoke-static {v0, v6, p0}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    :goto_1
    return-object v2

    :cond_6
    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    move-object v2, v1

    move-object v1, v5

    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_7
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;->k:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_8

    new-instance v0, Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error$OpenThematicPagesError;

    invoke-direct {v0, p1}, Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error$OpenThematicPagesError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_8
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
