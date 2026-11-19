.class public abstract Lcom/perfectcorp/common/PfCommons;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/os/Handler;

.field public static final b:Z

.field public static volatile c:Landroid/content/Context;

.field public static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "not mocked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/perfectcorp/common/PfCommons;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/perfectcorp/common/PfCommons;->b:Z

    return-void

    :cond_1
    throw v0
.end method

.method public static a()Z
    .locals 2

    sget-boolean v0, Lcom/perfectcorp/common/PfCommons;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/PfCommons;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perfectcorp/common/PfCommons;->c:Landroid/content/Context;

    return-object v0

    :cond_0
    const-string v0, "PfCommon.init() must be called first."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/PfCommons;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
