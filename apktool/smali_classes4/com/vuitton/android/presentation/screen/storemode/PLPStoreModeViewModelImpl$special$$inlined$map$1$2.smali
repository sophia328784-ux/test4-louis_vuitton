.class public final Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2;->c:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2$1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2$1;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    new-instance p2, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2;->c:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;->l:Z

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;->m:Z

    invoke-direct {p2, p1, v4, v2}, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;-><init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;ZZ)V

    iput v3, v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2$1;->c:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
