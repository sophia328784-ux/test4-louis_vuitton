.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;
.implements Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;
.implements Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraCallbacks"
.end annotation


# instance fields
.field public final a:Lcom/otaliastudios/cameraview/CameraLogger;

.field public final synthetic b:Lcom/otaliastudios/cameraview/CameraView;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/CameraView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    const-class p1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/otaliastudios/cameraview/CameraLogger;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method


# virtual methods
.method public final a(Lcom/otaliastudios/cameraview/frame/Frame;)V
    .locals 6

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/frame/Frame;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v2, v1, Lcom/otaliastudios/cameraview/CameraView;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dispatchFrame:"

    const-string v5, "processors:"

    filled-new-array {v4, v0, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v4, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/frame/Frame;->b()V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/otaliastudios/cameraview/CameraView;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/frame/Frame;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/otaliastudios/cameraview/CameraOptions;)V
    .locals 3

    const-string v0, "dispatchOnCameraOpened"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$1;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$1;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/CameraOptions;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 3

    const-string v0, "dispatchOnCameraClosed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$2;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$2;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Lcom/otaliastudios/cameraview/gesture/Gesture;ZLandroid/graphics/PointF;)V
    .locals 3

    const-string v0, "dispatchOnFocusEnd"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, p1, v1, p3}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;ZLcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 3

    const-string v0, "dispatchOnPictureTaken"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    if-eqz p1, :cond_1

    iget-boolean p1, v0, Lcom/otaliastudios/cameraview/CameraView;->b:Z

    if-eqz p1, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/otaliastudios/cameraview/CameraView;->r:Landroid/media/MediaActionSound;

    if-nez p1, :cond_0

    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, v0, Lcom/otaliastudios/cameraview/CameraView;->r:Landroid/media/MediaActionSound;

    :cond_0
    iget-object p1, v0, Lcom/otaliastudios/cameraview/CameraView;->r:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/media/MediaActionSound;->play(I)V

    :cond_1
    iget-object p1, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$4;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$4;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g(Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V
    .locals 3

    const-string v0, "dispatchOnFocusStart"

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Landroid/graphics/PointF;Lcom/otaliastudios/cameraview/gesture/Gesture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public final h(F[F[Landroid/graphics/PointF;)V
    .locals 3

    const-string v0, "dispatchOnExposureCorrectionChanged"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$11;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;F[F[Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i(Lcom/otaliastudios/cameraview/CameraException;)V
    .locals 3

    const-string v0, "dispatchError"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$13;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$13;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/CameraException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j(I)V
    .locals 4

    const-string v0, "onDeviceOrientationChanged"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/CameraView;->o:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    iget v1, v1, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->g:I

    iget-boolean v2, v0, Lcom/otaliastudios/cameraview/CameraView;->c:Z

    iget-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    if-nez v2, :cond_0

    rsub-int v2, v1, 0x168

    rem-int/lit16 v2, v2, 0x168

    iget-object v3, v3, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->e(I)V

    iput v2, v3, Lcom/otaliastudios/cameraview/engine/offset/Angles;->d:I

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->d()V

    goto :goto_0

    :cond_0
    iget-object v2, v3, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->e(I)V

    iput p1, v2, Lcom/otaliastudios/cameraview/engine/offset/Angles;->d:I

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->d()V

    :goto_0
    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k()V
    .locals 6

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->q(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/otaliastudios/cameraview/CameraView;->q:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/size/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    if-eqz v2, :cond_0

    const-string p0, "onCameraPreviewStreamSizeChanged:"

    const-string v0, "swallowing because the preview size has not changed."

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, v3, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_0
    const-string v2, "onCameraPreviewStreamSizeChanged: posting a requestLayout call."

    const-string v5, "Preview stream size:"

    filled-new-array {v2, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$3;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$3;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string p0, "Preview stream size should not be null here."

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onDisplayOffsetChanged"

    const-string v2, "restarting the camera."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {p0, v2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->close()V

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->open()V

    :cond_0
    return-void
.end method

.method public final m(F[Landroid/graphics/PointF;)V
    .locals 3

    const-string v0, "dispatchOnZoomChanged"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;F[Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
