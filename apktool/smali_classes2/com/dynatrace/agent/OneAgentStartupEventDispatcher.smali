.class public final Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$Companion;,
        Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u000eB1\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;",
        "",
        "",
        "cacheTimeMillis",
        "Lcom/dynatrace/agent/OneAgentConfiguration;",
        "oneAgentConfiguration",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "Lcom/dynatrace/agent/RumEventDispatcher;",
        "dispatcher",
        "Lcom/dynatrace/agent/di/SelfMonitoringComponent;",
        "selfMonitoring",
        "<init>",
        "(JLcom/dynatrace/agent/OneAgentConfiguration;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SelfMonitoringComponent;)V",
        "Companion",
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
.field public final a:J

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lcom/dynatrace/agent/RumEventDispatcher;

.field public final d:Lcom/dynatrace/agent/di/SelfMonitoringComponent;

.field public final e:Z

.field public f:Lorg/json/JSONObject;

.field public g:Lkotlinx/coroutines/Job;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLcom/dynatrace/agent/OneAgentConfiguration;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SelfMonitoringComponent;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->a:J

    iput-object p4, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->c:Lcom/dynatrace/agent/RumEventDispatcher;

    iput-object p6, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->d:Lcom/dynatrace/agent/di/SelfMonitoringComponent;

    iget-object p1, p3, Lcom/dynatrace/agent/OneAgentConfiguration;->i:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    sget-object p2, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-boolean p2, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(JLcom/dynatrace/agent/OneAgentConfiguration;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SelfMonitoringComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0x2710

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 43
    invoke-direct/range {v0 .. v6}, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;-><init>(JLcom/dynatrace/agent/OneAgentConfiguration;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SelfMonitoringComponent;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;JJLcom/dynatrace/agent/metrics/SessionInformationMetrics;)V
    .locals 1

    invoke-static {p1}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "start_time"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "duration"

    invoke-virtual {p1, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->e:Z

    const/4 p3, 0x3

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->h:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->h:Z

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->f:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;

    invoke-direct {p2, p0, p6, p4}, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;-><init>(Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p4, p4, p2, p3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->g:Lkotlinx/coroutines/Job;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean p2, p6, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->g:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p5, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1;

    invoke-direct {p5, p0, p1, p6, p4}, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1;-><init>(Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p4, p4, p5, p3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    const-string p1, "startup shouldn\'t be collected, DataCollectionLevel is Off"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
