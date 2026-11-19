.class public Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;


# instance fields
.field private uiHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "nbs ui handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;->uiHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;
    .locals 2

    const-class v0, Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;->instance:Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;->instance:Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;->instance:Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getUIHandlerLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSUIHandlerThread;->uiHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
