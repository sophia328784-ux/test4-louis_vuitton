.class final Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableStateFlow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;"
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
    c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModePLPFiltersDelegate$viewState$2"
    f = "StoreModePLPFiltersDelegate.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

.field public final synthetic e:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lkotlinx/coroutines/flow/MutableStateFlow;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->d:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->d:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lkotlinx/coroutines/flow/MutableStateFlow;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->f:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->a:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    const/4 v3, 0x6

    invoke-static {v1, v2, v0, v0, v3}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {v1, v2, v3, v3}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :goto_2
    const/4 v2, 0x5

    invoke-static {p1, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;I)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    move-result-object v0

    :cond_4
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;->d:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lkotlin/collections/MapsKt;->r(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
