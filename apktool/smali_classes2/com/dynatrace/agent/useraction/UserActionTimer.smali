.class public final Lcom/dynatrace/agent/useraction/UserActionTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/useraction/UserActionTimer;",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "lock",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/locks/ReentrantLock;)V",
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

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;

.field public c:Lkotlinx/coroutines/Job;

.field public d:Lkotlinx/coroutines/Job;

.field public e:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->a:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "cancelling all timers"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->c:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->c:Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->d:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->d:Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->e:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->e:Lkotlinx/coroutines/Job;

    return-void
.end method
