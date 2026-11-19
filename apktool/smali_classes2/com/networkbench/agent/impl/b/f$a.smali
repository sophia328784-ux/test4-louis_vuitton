.class Lcom/networkbench/agent/impl/b/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/b/f;


# direct methods
.method private constructor <init>(Lcom/networkbench/agent/impl/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/f$a;->a:Lcom/networkbench/agent/impl/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/agent/impl/b/f;Lcom/networkbench/agent/impl/b/f$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/b/f$a;-><init>(Lcom/networkbench/agent/impl/b/f;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 5

    const-string v0, "error happened in doFrame:"

    :try_start_0
    sget v1, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/f$a;->a:Lcom/networkbench/agent/impl/b/f;

    invoke-static {v1}, Lcom/networkbench/agent/impl/b/f;->b(Lcom/networkbench/agent/impl/b/f;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/f$a;->a:Lcom/networkbench/agent/impl/b/f;

    invoke-static {v1}, Lcom/networkbench/agent/impl/b/f;->c(Lcom/networkbench/agent/impl/b/f;)Lcom/networkbench/agent/impl/b/g;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/networkbench/agent/impl/b/g;->a(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/b/f$a;->a:Lcom/networkbench/agent/impl/b/f;

    invoke-static {v1, p1, p2}, Lcom/networkbench/agent/impl/b/f;->a(Lcom/networkbench/agent/impl/b/f;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/b/f;->g()Lcom/networkbench/agent/impl/c/e;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    throw p1
.end method
