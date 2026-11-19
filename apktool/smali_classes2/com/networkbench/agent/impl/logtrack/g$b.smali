.class Lcom/networkbench/agent/impl/logtrack/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/logtrack/SendLogRunnable$OnSendLogCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/logtrack/g;->a(Lcom/networkbench/agent/impl/logtrack/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/logtrack/g;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/logtrack/g;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/g$b;->a:Lcom/networkbench/agent/impl/logtrack/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(I)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g$b;->a:Lcom/networkbench/agent/impl/logtrack/g;

    invoke-static {v0}, Lcom/networkbench/agent/impl/logtrack/g;->a(Lcom/networkbench/agent/impl/logtrack/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/g$b;->a:Lcom/networkbench/agent/impl/logtrack/g;

    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/logtrack/g;->a(Lcom/networkbench/agent/impl/logtrack/g;I)I

    const/16 v1, 0x2712

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/networkbench/agent/impl/logtrack/g$b;->a:Lcom/networkbench/agent/impl/logtrack/g;

    invoke-static {p1}, Lcom/networkbench/agent/impl/logtrack/g;->c(Lcom/networkbench/agent/impl/logtrack/g;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/g$b;->a:Lcom/networkbench/agent/impl/logtrack/g;

    invoke-static {v1}, Lcom/networkbench/agent/impl/logtrack/g;->b(Lcom/networkbench/agent/impl/logtrack/g;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/networkbench/agent/impl/logtrack/g$b;->a:Lcom/networkbench/agent/impl/logtrack/g;

    invoke-static {p1}, Lcom/networkbench/agent/impl/logtrack/g;->b(Lcom/networkbench/agent/impl/logtrack/g;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g$b;->a:Lcom/networkbench/agent/impl/logtrack/g;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/logtrack/g;->d()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
