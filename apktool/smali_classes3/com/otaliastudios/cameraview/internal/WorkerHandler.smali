.class public Lcom/otaliastudios/cameraview/internal/WorkerHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/otaliastudios/cameraview/CameraLogger;

.field public static final f:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field public d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkerHandler"

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->e:Lcom/otaliastudios/cameraview/CameraLogger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;
    .locals 7

    sget-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "get:"

    sget-object v3, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->e:Lcom/otaliastudios/cameraview/CameraLogger;

    if-eqz v1, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->b:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v0, "Reusing cached worker handler."

    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    return-object v1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    iget-object v1, v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Thread reference found, but not alive or interrupted."

    const-string v5, "Removing."

    filled-new-array {v2, v1, v5, p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "Thread reference died. Removing."

    filled-new-array {v2, v1, p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    const-string v1, "Creating new handler."

    filled-new-array {v2, v1, p0}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v3, v2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->a:Ljava/lang/String;

    new-instance v3, Lcom/otaliastudios/cameraview/internal/WorkerHandler$1;

    invoke-direct {v3, v1, p0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler$1;-><init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->b:Landroid/os/HandlerThread;

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->c:Landroid/os/Handler;

    new-instance v3, Lcom/otaliastudios/cameraview/internal/WorkerHandler$2;

    invoke-direct {v3, v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler$2;-><init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;)V

    iput-object v3, v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;

    invoke-direct {v2, v1, v3}, Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;-><init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
