.class public Lcom/dynatrace/agent/useraction/UserActionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/useraction/RumEventInterceptor;
.implements Lcom/dynatrace/agent/storage/preference/ServerConfigurationChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002B/\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynatrace/agent/useraction/UserActionController;",
        "Lcom/dynatrace/agent/useraction/RumEventInterceptor;",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationChangeListener;",
        "Lcom/dynatrace/agent/OneAgentEventDispatcher;",
        "eventDispatcher",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;",
        "serverConfigDataSource",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInfoProvider",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "<init>",
        "(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/di/SessionInformationProvider;Lkotlinx/coroutines/CoroutineScope;)V",
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
.field public final a:Lcom/dynatrace/agent/OneAgentEventDispatcher;

.field public final b:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

.field public final d:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Ljava/util/concurrent/locks/ReentrantLock;

.field public g:Z

.field public volatile h:Z

.field public final i:Lcom/dynatrace/agent/useraction/UserActionLifecycle;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/di/SessionInformationProvider;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionController;->a:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    iput-object p2, p0, Lcom/dynatrace/agent/useraction/UserActionController;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p3, p0, Lcom/dynatrace/agent/useraction/UserActionController;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iput-object p4, p0, Lcom/dynatrace/agent/useraction/UserActionController;->d:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p5, p0, Lcom/dynatrace/agent/useraction/UserActionController;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionController;->f:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Lcom/dynatrace/agent/useraction/UserActionTimer;

    invoke-direct {v1, p5, p1}, Lcom/dynatrace/agent/useraction/UserActionTimer;-><init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/locks/ReentrantLock;)V

    invoke-interface {p3}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object p1

    iget-boolean p1, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    iput-boolean p1, p0, Lcom/dynatrace/agent/useraction/UserActionController;->g:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dynatrace/agent/useraction/UserActionController;->h:Z

    new-instance v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    new-instance v6, Lp11;

    const/16 p1, 0xd

    invoke-direct {v6, p0, p1}, Lp11;-><init>(Ljava/lang/Object;I)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;-><init>(Lcom/dynatrace/agent/useraction/UserActionTimer;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lkotlin/collections/ArrayDeque;Lcom/dynatrace/agent/useraction/UserActionGraveyard;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionController;->i:Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionController;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/dynatrace/agent/useraction/UserActionController;->g:Z

    iget-boolean p1, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    iput-boolean p1, p0, Lcom/dynatrace/agent/useraction/UserActionController;->g:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const-string p1, "uaEnable changed to false: discarding in-flight UAs"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionController;->i:Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    invoke-virtual {p0}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final b(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Z)V
    .locals 0

    if-eqz p3, :cond_0

    const-string p0, "dropped suppressed UIA"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p3, "dispatching UIA as-is"

    invoke-static {p3}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionController;->a:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->d(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V

    return-void
.end method

.method public final c(Lcom/dynatrace/agent/useraction/SignificantEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionController;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {v0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object v0

    iget-boolean v0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ignoring significant "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " event: uaEnable=false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionController;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionController;->i:Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->c(Lcom/dynatrace/agent/useraction/SignificantEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
