.class public final synthetic Lcom/dynatrace/agent/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/dynatrace/agent/OneAgentEventDispatcher;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/a;->b:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    iput-wide p2, p0, Lcom/dynatrace/agent/a;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "event is accepted with size "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventRecord;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v1, 0x0

    iget-wide v4, p0, Lcom/dynatrace/agent/a;->c:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/dynatrace/agent/storage/db/EventRecord;-><init>(JLjava/lang/String;JZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/dynatrace/agent/a;->b:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/dynatrace/agent/OneAgentEventDispatcher$storeEvent$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/dynatrace/agent/OneAgentEventDispatcher$storeEvent$1;-><init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/storage/db/EventRecord;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, p2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
