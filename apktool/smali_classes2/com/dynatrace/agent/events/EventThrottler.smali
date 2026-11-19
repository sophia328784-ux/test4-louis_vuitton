.class public final Lcom/dynatrace/agent/events/EventThrottler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;,
        Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB?\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dynatrace/agent/events/EventThrottler;",
        "",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "",
        "maxEventsPerWindow",
        "windowSizeSeconds",
        "summaryInterval",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;",
        "summaryReceiver",
        "<init>",
        "(Lcom/dynatrace/agent/common/time/TimeProvider;IIILkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;)V",
        "EventThrottlerType",
        "SummaryReceiver",
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
.field public final a:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;

.field public final g:Ljava/util/LinkedList;

.field public final h:Ljava/util/concurrent/locks/ReentrantLock;

.field public volatile i:I

.field public final j:Ljava/util/List;

.field public final k:Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventInvalid;

.field public final l:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;IIILcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;)V
    .locals 9

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/agent/events/EventThrottler;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;IIILkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;IIILkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/EventThrottler;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput p2, p0, Lcom/dynatrace/agent/events/EventThrottler;->b:I

    iput p3, p0, Lcom/dynatrace/agent/events/EventThrottler;->c:I

    iput p4, p0, Lcom/dynatrace/agent/events/EventThrottler;->d:I

    iput-object p5, p0, Lcom/dynatrace/agent/events/EventThrottler;->e:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/dynatrace/agent/events/EventThrottler;->f:Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/EventThrottler;->g:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/EventThrottler;->h:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventApi;

    invoke-direct {p1}, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventApi;-><init>()V

    new-instance p2, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventWrq;

    invoke-direct {p2}, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventWrq;-><init>()V

    new-instance p3, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventErr;

    invoke-direct {p3}, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventErr;-><init>()V

    new-instance p4, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventOth;

    invoke-direct {p4}, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventOth;-><init>()V

    new-instance p5, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventBiz;

    invoke-direct {p5}, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventBiz;-><init>()V

    new-instance p6, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventSfm;

    invoke-direct {p6}, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventSfm;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/events/EventThrottler;->j:Ljava/util/List;

    new-instance p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventInvalid;

    invoke-direct {p1}, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventInvalid;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/EventThrottler;->k:Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventInvalid;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/EventThrottler;->l:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;IIILkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x4

    const/16 v0, 0x3c

    if-eqz p8, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_1

    move p4, v0

    :cond_1
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_2

    .line 113
    sget-object p5, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 114
    sget-object p5, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 115
    invoke-static {p5}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p5

    .line 116
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/dynatrace/agent/events/EventThrottler;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;IIILkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;IILcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;)V
    .locals 9

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/agent/events/EventThrottler;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;IIILkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;ILcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;)V
    .locals 9

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/agent/events/EventThrottler;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;IIILkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final b(Lcom/dynatrace/agent/events/EventThrottler;Ljava/util/List;)Ljava/lang/String;
    .locals 6

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Lcom/dynatrace/agent/events/a;

    const/4 p1, 0x0

    invoke-direct {v4, p1}, Lcom/dynatrace/agent/events/a;-><init>(I)V

    const/16 v5, 0x1e

    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/dynatrace/agent/events/a;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Lcom/dynatrace/agent/events/a;-><init>(I)V

    const-string v1, ","

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dropped "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/dynatrace/agent/events/EventThrottler;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " events, current limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynatrace/agent/events/EventThrottler;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " - type sent: ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], dropped: ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-static {v1, v0, p0}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/List;Lorg/json/JSONObject;)Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;
    .locals 3

    const-string v0, "characteristics.is_self_monitoring"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Collection contains no element matching the predicate."

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of v0, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventSfm;

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v0, "characteristics.has_request"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of v0, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventWrq;

    if-eqz v0, :cond_3

    return-object p1

    :cond_4
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_5
    const-string v0, "characteristics.has_error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of v0, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventErr;

    if-eqz v0, :cond_6

    return-object p1

    :cond_7
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_8
    const-string v0, "characteristics.is_api_reported"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of v0, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventApi;

    if-eqz v0, :cond_9

    return-object p1

    :cond_a
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_b
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of v0, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventOth;

    if-eqz v0, :cond_c

    return-object p1

    :cond_d
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final a(I)Z
    .locals 7

    iget-object v0, p0, Lcom/dynatrace/agent/events/EventThrottler;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/dynatrace/agent/events/EventThrottler;->j:Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/dynatrace/agent/events/EventThrottler;->d(ILjava/util/List;)Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    move-result-object v1

    instance-of v2, v1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventInvalid;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dynatrace/agent/events/EventThrottler;->l:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dynatrace/agent/events/EventThrottler;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/dynatrace/agent/events/EventThrottler$processInvalidEvent$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/dynatrace/agent/events/EventThrottler$processInvalidEvent$1;-><init>(Lcom/dynatrace/agent/events/EventThrottler;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {v3, v5, v5, v4, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, v1}, Lcom/dynatrace/agent/events/EventThrottler;->e(Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final d(ILjava/util/List;)Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Collection contains no element matching the predicate."

    if-eq p1, v0, :cond_f

    const/4 v0, 0x6

    if-eq p1, v0, :cond_c

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_9

    const/16 v0, 0x28

    if-eq p1, v0, :cond_6

    const/16 v0, 0x32

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_f

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x61

    if-eq p1, v0, :cond_c

    const/16 v0, 0x62

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    iget-object p0, p0, Lcom/dynatrace/agent/events/EventThrottler;->k:Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventInvalid;

    return-object p0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of p2, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventBiz;

    if-eqz p2, :cond_1

    return-object p1

    :cond_2
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_3
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of p2, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventSfm;

    if-eqz p2, :cond_4

    return-object p1

    :cond_5
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_6
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of p2, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventErr;

    if-eqz p2, :cond_7

    return-object p1

    :cond_8
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_9
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of p2, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventWrq;

    if-eqz p2, :cond_a

    return-object p1

    :cond_b
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_c
    :pswitch_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of p2, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventOth;

    if-eqz p2, :cond_d

    return-object p1

    :cond_e
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_f
    :pswitch_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    instance-of p2, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventApi;

    if-eqz p2, :cond_10

    return-object p1

    :cond_11
    invoke-static {v2}, Lzy0;->c(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;)Z
    .locals 7

    iget-object v0, p0, Lcom/dynatrace/agent/events/EventThrottler;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v0}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dynatrace/agent/events/EventThrottler;->g:Ljava/util/LinkedList;

    sget-object v3, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    iget v3, p0, Lcom/dynatrace/agent/events/EventThrottler;->c:I

    sget-object v4, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/time/Duration;->e(J)J

    move-result-wide v3

    sub-long v3, v0, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gtz v5, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/dynatrace/agent/events/EventThrottler;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/dynatrace/agent/events/EventThrottler;->b:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    iget-object p0, p0, Lcom/dynatrace/agent/events/EventThrottler;->g:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget p0, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;->a:I

    add-int/2addr p0, v4

    iput p0, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;->a:I

    return v4

    :cond_1
    iget v0, p0, Lcom/dynatrace/agent/events/EventThrottler;->i:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/dynatrace/agent/events/EventThrottler;->i:I

    iget v0, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;->b:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;->b:I

    iget p1, p0, Lcom/dynatrace/agent/events/EventThrottler;->i:I

    if-ne p1, v4, :cond_2

    iget-object p1, p0, Lcom/dynatrace/agent/events/EventThrottler;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/dynatrace/agent/events/EventThrottler$processEventIfPossible$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/agent/events/EventThrottler$processEventIfPossible$1;-><init>(Lcom/dynatrace/agent/events/EventThrottler;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
