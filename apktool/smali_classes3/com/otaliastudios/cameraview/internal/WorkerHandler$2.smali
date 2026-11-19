.class Lcom/otaliastudios/cameraview/internal/WorkerHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$2;->b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$2;->b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->b:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
