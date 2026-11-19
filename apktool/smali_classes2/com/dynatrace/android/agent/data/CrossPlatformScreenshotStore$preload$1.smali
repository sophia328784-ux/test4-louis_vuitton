.class final Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;
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
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynatrace.android.agent.data.CrossPlatformScreenshotStore$preload$1"
    f = "CrossPlatformScreenshotStore.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;->c:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;

    iget-object p0, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;->c:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    invoke-direct {p1, p0, p2}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;-><init>(Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;->c:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    iget-object p1, p1, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->a:Landroidx/datastore/core/DataStore;

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1$prefs$1;

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {v2, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput v3, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;->b:I

    invoke-static {v2, p0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    iget-object v0, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;->c:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    iget-object v0, v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v1}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;->c:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    sget-object v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->h:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->d:Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
