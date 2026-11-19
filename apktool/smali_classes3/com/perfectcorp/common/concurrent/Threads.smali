.class public abstract Lcom/perfectcorp/common/concurrent/Threads;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 1

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "You must call this method on the main thread."

    invoke-static {v0}, Lmd;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public static b()V
    .locals 1

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "You must call this method on a worker thread."

    invoke-static {v0}, Lmd;->h(Ljava/lang/Object;)V

    return-void
.end method
