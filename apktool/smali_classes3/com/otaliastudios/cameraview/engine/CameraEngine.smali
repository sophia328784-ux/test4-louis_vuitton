.class public abstract Lcom/otaliastudios/cameraview/engine/CameraEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;
.implements Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;
.implements Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/engine/CameraEngine$NoOpExceptionHandler;,
        Lcom/otaliastudios/cameraview/engine/CameraEngine$CrashExceptionHandler;,
        Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;
    }
.end annotation


# static fields
.field public static final f:Lcom/otaliastudios/cameraview/CameraLogger;


# instance fields
.field public b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

.field public final c:Landroid/os/Handler;

.field public final d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

.field public final e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CameraEngine"

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/CameraEngine$1;

    move-object v2, p0

    check-cast v2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-direct {v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine$1;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->y(Z)V

    return-void
.end method

.method public static n(Lcom/otaliastudios/cameraview/engine/CameraEngine;Ljava/lang/Throwable;Z)V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "EXCEPTION:"

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    if-eqz p2, :cond_0

    const-string p2, "Handler thread is gone. Replacing."

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->y(Z)V

    :cond_0
    const-string p2, "Scheduling on the crash handler..."

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->c:Landroid/os/Handler;

    new-instance v0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 5

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v2, "RESTART BIND:"

    const-string v3, "scheduled. State:"

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->R(Z)V

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->Q(Z)V

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v4, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;

    invoke-direct {v4, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->e(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->O()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public abstract B(F[F[Landroid/graphics/PointF;Z)V
.end method

.method public abstract C(Lcom/otaliastudios/cameraview/controls/Flash;)V
.end method

.method public abstract D(I)V
.end method

.method public abstract E(Z)V
.end method

.method public abstract F(Lcom/otaliastudios/cameraview/controls/Hdr;)V
.end method

.method public abstract G(Landroid/location/Location;)V
.end method

.method public abstract H(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V
.end method

.method public abstract I(Z)V
.end method

.method public abstract J(F)V
.end method

.method public abstract K(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V
.end method

.method public abstract L(F[Landroid/graphics/PointF;Z)V
.end method

.method public final M()V
    .locals 5

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v2, "START:"

    const-string v3, "scheduled. State:"

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v4, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;

    invoke-direct {v4, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->e(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v4, Lcom/otaliastudios/cameraview/engine/CameraEngine$4;

    invoke-direct {v4, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$4;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/tasks/Task;->l(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v4, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;

    invoke-direct {v4, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->e(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->O()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public abstract N(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V
.end method

.method public final O()Lcom/google/android/gms/tasks/Task;
    .locals 4

    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/CameraEngine$10;

    invoke-direct {v2, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$10;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->e(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final P(Z)Lcom/google/android/gms/tasks/Task;
    .locals 4

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v2, "STOP:"

    const-string v3, "scheduled. State:"

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->R(Z)V

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->Q(Z)V

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    xor-int/2addr p1, v3

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraEngine$7;

    invoke-direct {v3, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$7;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->e(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/otaliastudios/cameraview/engine/CameraEngine$6;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$6;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method public final Q(Z)V
    .locals 3

    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    xor-int/lit8 p1, p1, 0x1

    new-instance v2, Lcom/otaliastudios/cameraview/engine/CameraEngine$9;

    invoke-direct {v2, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$9;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->e(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final R(Z)V
    .locals 3

    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    xor-int/lit8 p1, p1, 0x1

    new-instance v2, Lcom/otaliastudios/cameraview/engine/CameraEngine$11;

    invoke-direct {v2, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$11;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->e(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final f()V
    .locals 5

    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    iget v2, v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->d:I

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    invoke-direct {v1, v2, v0}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    const-string v0, "onSurfaceAvailable:"

    const-string v2, "Size is"

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;

    invoke-direct {v3, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->e(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->O()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final g()V
    .locals 3

    const-string v0, "onSurfaceDestroyed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->R(Z)V

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->Q(Z)V

    return-void
.end method

.method public abstract o(Lcom/otaliastudios/cameraview/controls/Facing;)Z
.end method

.method public final p(IZ)V
    .locals 10

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v3, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "unrecoverably:"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v1, "DESTROY:"

    const-string v2, "state:"

    const-string v4, "thread:"

    const-string v6, "depth:"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->b:Landroid/os/HandlerThread;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraEngine$NoOpExceptionHandler;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->P(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    iget-object v4, v4, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->d:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/otaliastudios/cameraview/engine/CameraEngine$3;

    invoke-direct {v5, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x6

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DESTROY: Could not destroy synchronously after 6 seconds."

    const-string v3, "Current thread:"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Handler thread:"

    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    iget-object v6, v6, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->b:Landroid/os/HandlerThread;

    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    add-int/2addr p1, v2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->y(Z)V

    const-string v0, "DESTROY: Trying again on thread:"

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->b:Landroid/os/HandlerThread;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->p(IZ)V

    return-void

    :cond_1
    const-string p0, "DESTROY: Giving up because DESTROY_RETRIES was reached."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public abstract q(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
.end method

.method public final r()Z
    .locals 4

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Job;

    iget-object v2, v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Job;->a:Ljava/lang/String;

    const-string v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Job;->a:Ljava/lang/String;

    const-string v3, " << "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Job;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->k()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_2
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract s()Lcom/google/android/gms/tasks/Task;
.end method

.method public abstract t()Lcom/google/android/gms/tasks/Task;
.end method

.method public abstract u()Lcom/google/android/gms/tasks/Task;
.end method

.method public abstract v()Lcom/google/android/gms/tasks/Task;
.end method

.method public abstract w()Lcom/google/android/gms/tasks/Task;
.end method

.method public abstract x()Lcom/google/android/gms/tasks/Task;
.end method

.method public final y(Z)V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    sget-object v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "CameraViewEngine"

    invoke-static {v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->b:Landroid/os/HandlerThread;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/CameraEngine$CrashExceptionHandler;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$CrashExceptionHandler;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Job;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Job;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    return-void
.end method

.method public final z()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v1, "RESTART:"

    const-string v2, "scheduled. State:"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->P(Z)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->M()V

    return-void
.end method
