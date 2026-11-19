.class public abstract Lcom/otaliastudios/cameraview/preview/CameraPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;,
        Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Output:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final i:Lcom/otaliastudios/cameraview/CameraLogger;


# instance fields
.field public a:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

.field public final b:Landroid/view/View;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CameraPreview"

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->i:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->l(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    return-void
.end method

.method public final f(II)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "h="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dispatchOnSurfaceAvailable:"

    const-string v4, "w="

    filled-new-array {v3, v4, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/otaliastudios/cameraview/preview/CameraPreview;->i:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iput p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->d:I

    iput p2, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e()V

    :cond_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->a:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;->f()V

    :cond_1
    return-void
.end method

.method public final g(II)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "h="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dispatchOnSurfaceSizeChanged:"

    const-string v4, "w="

    filled-new-array {v3, v4, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/otaliastudios/cameraview/preview/CameraPreview;->i:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->d:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    if-eq p2, v0, :cond_2

    :cond_0
    iput p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->d:I

    iput p2, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e()V

    :cond_1
    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->a:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;->m()V

    :cond_2
    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public abstract i()Ljava/lang/Class;
.end method

.method public abstract j()Landroid/view/View;
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->d:I

    if-lez v0, :cond_0

    iget p0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract l(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public m()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->j()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v2, Lcom/otaliastudios/cameraview/preview/CameraPreview$1;

    invoke-direct {v2, p0, v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview$1;-><init>(Lcom/otaliastudios/cameraview/preview/CameraPreview;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object p0, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->h:I

    return-void
.end method

.method public final q(II)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "desiredH="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "setStreamSize:"

    const-string v4, "desiredW="

    filled-new-array {v3, v4, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/otaliastudios/cameraview/preview/CameraPreview;->i:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iput p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->f:I

    iput p2, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->g:I

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e()V

    :cond_0
    return-void
.end method

.method public final r(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V
    .locals 1

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->a:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;->g()V

    :cond_0
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->a:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->a:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;->f()V

    :cond_1
    return-void
.end method

.method public s()Z
    .locals 0

    instance-of p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    return p0
.end method
