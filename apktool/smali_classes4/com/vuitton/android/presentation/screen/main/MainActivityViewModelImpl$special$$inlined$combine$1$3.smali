.class public final Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;",
        ">;[",
        "Ljava/lang/Object;",
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
        "\u0000\u0016\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000\"\u0006\u0008\u0001\u0010\u0001\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
        "it",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$special$$inlined$combine$1$3"
    f = "MainActivityViewModelImpl.kt"
    l = {
        0xea
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic d:[Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;

    invoke-direct {v0, p3, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->w:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v9, v4, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->k:Ljava/lang/String;

    iget-object v10, v4, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->l:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v13, v4

    check-cast v13, Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const/4 v4, 0x6

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    new-instance v7, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;IZZ)V

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1$3;->b:I

    invoke-interface {v1, v7, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2

    return-object v3

    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
