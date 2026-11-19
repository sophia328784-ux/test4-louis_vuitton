.class Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;->this$0:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
