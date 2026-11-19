.class public final Lcom/dynatrace/agent/communication/RequestScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/RequestScheduler;",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public b:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/RequestScheduler;->a:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;

    iget v1, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;

    invoke-direct {v0, p0, p4}, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;-><init>(Lcom/dynatrace/agent/communication/RequestScheduler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-wide p1, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->d:J

    iget-object p0, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->c:Ljava/lang/Object;

    move-object p3, p0

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->b:Lcom/dynatrace/agent/communication/RequestScheduler;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/dynatrace/agent/communication/RequestScheduler;->b:Lkotlinx/coroutines/Job;

    if-eqz p4, :cond_3

    iput-object p0, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->b:Lcom/dynatrace/agent/communication/RequestScheduler;

    iput-object p3, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->c:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->d:J

    iput v4, v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$1;->g:I

    invoke-static {p4, v0}, Lkotlinx/coroutines/JobKt;->c(Lkotlinx/coroutines/Job;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p4, p0, Lcom/dynatrace/agent/communication/RequestScheduler;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$2;

    invoke-direct {v0, p1, p2, p3, v3}, Lcom/dynatrace/agent/communication/RequestScheduler$schedule$2;-><init>(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p4, v3, v3, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/communication/RequestScheduler;->b:Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
