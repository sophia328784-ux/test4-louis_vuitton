.class final Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;
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
    c = "com.dynatrace.android.agent.data.SessionParameterStore$update$1"
    f = "SessionParameterStore.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/dynatrace/android/agent/data/SessionParameterStore;

.field public final synthetic d:I

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/data/SessionParameterStore;IJLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->c:Lcom/dynatrace/android/agent/data/SessionParameterStore;

    iput p2, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->d:I

    iput-wide p3, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;

    iget v2, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->d:I

    iget-wide v3, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->e:J

    iget-object v1, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->c:Lcom/dynatrace/android/agent/data/SessionParameterStore;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;-><init>(Lcom/dynatrace/android/agent/data/SessionParameterStore;IJLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->c:Lcom/dynatrace/android/agent/data/SessionParameterStore;

    iget-object p1, p1, Lcom/dynatrace/android/agent/data/SessionParameterStore;->a:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1$1;

    iget v3, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->d:I

    iget-wide v4, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->e:J

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1$1;-><init>(IJLkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;->b:I

    invoke-static {p1, v1, p0}, Landroidx/datastore/preferences/core/PreferencesKt;->a(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v0, :cond_2

    return-object v0

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
