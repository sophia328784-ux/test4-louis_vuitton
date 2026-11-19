.class Lcom/networkbench/agent/impl/b/a/a$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/b/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/b/a/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/a/a$1;->a:Lcom/networkbench/agent/impl/b/a/a;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/a/a$1;->a:Lcom/networkbench/agent/impl/b/a/a;

    invoke-static {v2}, Lcom/networkbench/agent/impl/b/a/a;->a(Lcom/networkbench/agent/impl/b/a/a;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const-string v3, "ANR.NBSStackService"

    if-eqz v2, :cond_3

    array-length v4, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    aget-object v4, v2, v4

    if-nez v4, :cond_1

    const-string p0, "stackTraceElements[0] is null"

    invoke-static {v3, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v3, Lcom/networkbench/agent/impl/b/a/b;

    invoke-direct {v3, v0, v1, v2}, Lcom/networkbench/agent/impl/b/a/b;-><init>(J[Ljava/lang/StackTraceElement;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/a/a$1;->a:Lcom/networkbench/agent/impl/b/a/a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/b/a/a;->b(Lcom/networkbench/agent/impl/b/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/a/a$1;->a:Lcom/networkbench/agent/impl/b/a/a;

    invoke-static {v1}, Lcom/networkbench/agent/impl/b/a/a;->c(Lcom/networkbench/agent/impl/b/a/a;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/a/a$1;->a:Lcom/networkbench/agent/impl/b/a/a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/b/a/a;->b(Lcom/networkbench/agent/impl/b/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/a/a$1;->a:Lcom/networkbench/agent/impl/b/a/a;

    invoke-static {p0}, Lcom/networkbench/agent/impl/b/a/a;->b(Lcom/networkbench/agent/impl/b/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_0
    const-string p0, "stackTraceElements is null or empty"

    invoke-static {v3, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
