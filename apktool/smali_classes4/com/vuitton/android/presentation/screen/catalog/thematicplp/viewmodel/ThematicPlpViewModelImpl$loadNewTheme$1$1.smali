.class final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;
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
    c = "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$loadNewTheme$1$1"
    f = "ThematicPlpViewModelImpl.kt"
    l = {
        0x10d,
        0x113
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

.field public d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

.field public e:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;

.field public f:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

.field public final synthetic j:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Lcom/vuitton/android/domain/monitoring/MonitorAction;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->h:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->i:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->j:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->j:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->h:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->i:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Lcom/vuitton/android/domain/monitoring/MonitorAction;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->h:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->g:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->j:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->i:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    if-eqz v3, :cond_2

    if-eq v3, v7, :cond_1

    if-ne v3, v6, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->f:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->e:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->o:Ljava/util/LinkedHashMap;

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz p1, :cond_4

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$triggerThemeVocalization$1;

    invoke-direct {p1, v0, v5}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$triggerThemeVocalization$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v5, v5, p1, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->p()V

    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->g:I

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->k:Ljava/lang/String;

    invoke-virtual {p1, v7, v3, v10, p0}, Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    move-object v3, p1

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->c:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/mapper/ThematicPlpThemesMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    move-result-object v7

    iget-object v10, v7, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->e:Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->f:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;->g:I

    invoke-static {v0, v10, p0}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_6

    :goto_1
    return-object v2

    :cond_6
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    move-object v6, v0

    move-object v2, v7

    :goto_2
    check-cast p1, Ljava/util/List;

    invoke-static {v2, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    move-result-object p1

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->o:Ljava/util/LinkedHashMap;

    iget-object v7, v9, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->a:Ljava/lang/String;

    invoke-interface {v2, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;->b:Ljava/util/List;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/mapper/ThematicPlpThemesMapperKt;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$triggerThemeVocalization$1;

    invoke-direct {v2, v6, v5}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$triggerThemeVocalization$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v5, v5, v2, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-object p1, p0

    :cond_7
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_8

    if-eqz v8, :cond_8

    new-instance p1, Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error$OpenThematicPagesError;

    invoke-direct {p1, p0}, Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error$OpenThematicPagesError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v8, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_8
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->p()V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz v8, :cond_9

    invoke-interface {v8}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
