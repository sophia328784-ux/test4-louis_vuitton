.class public Lcom/otaliastudios/cameraview/engine/Camera1Engine;
.super Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$ErrorCallback;
.implements Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;


# static fields
.field public static final synthetic Z:I


# instance fields
.field public final W:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

.field public X:Landroid/hardware/Camera;

.field public Y:I


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V

    sget-object p1, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->a:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    if-nez p1, :cond_0

    new-instance p1, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->a:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    :cond_0
    sget-object p1, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->a:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->W:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    return-void
.end method


# virtual methods
.method public final B(F[F[Landroid/graphics/PointF;Z)V
    .locals 8

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->w:F

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->w:F

    const/16 p1, 0x14

    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string v7, "exposure correction"

    invoke-virtual {v6, p1, v7}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d(ILjava/lang/String;)V

    sget-object p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;FZ[F[Landroid/graphics/PointF;)V

    invoke-virtual {v6, v7, p1, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final C(Lcom/otaliastudios/cameraview/controls/Flash;)V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->o:Lcom/otaliastudios/cameraview/controls/Flash;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->o:Lcom/otaliastudios/cameraview/controls/Flash;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "flash ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/controls/Flash;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {p0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final D(I)V
    .locals 0

    const/16 p1, 0x11

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->m:I

    return-void
.end method

.method public final E(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->n:Z

    return-void
.end method

.method public final F(Lcom/otaliastudios/cameraview/controls/Hdr;)V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->s:Lcom/otaliastudios/cameraview/controls/Hdr;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->s:Lcom/otaliastudios/cameraview/controls/Hdr;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hdr ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/controls/Hdr;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {p0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->u:Landroid/location/Location;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->u:Landroid/location/Location;

    sget-object p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$2;

    invoke-direct {v1, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$2;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/location/Location;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string v0, "location"

    invoke-virtual {p0, v0, p1, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final H(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V
    .locals 1

    sget-object v0, Lcom/otaliastudios/cameraview/controls/PictureFormat;->JPEG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    if-ne p1, v0, :cond_0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->t:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    return-void

    :cond_0
    const-string p0, "Unsupported picture format: "

    invoke-static {p1, p0}, Lb21;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final I(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->x:Z

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->x:Z

    const-string v1, "play sounds ("

    const-string v2, ")"

    invoke-static {v1, v2, p1}, Ltr;->i(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Z)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {p0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final J(F)V
    .locals 3

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->A:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preview fps ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$8;

    invoke-direct {v2, p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$8;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;F)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {p0, v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final K(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->p:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->p:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "white balance ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$3;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$3;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {p0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final L(F[Landroid/graphics/PointF;Z)V
    .locals 4

    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->v:F

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->v:F

    const/16 p1, 0x14

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string v2, "zoom"

    invoke-virtual {v1, p1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d(ILjava/lang/String;)V

    sget-object p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;

    invoke-direct {v3, p0, v0, p3, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;FZ[Landroid/graphics/PointF;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final N(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V
    .locals 2

    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string p1, "auto focus"

    invoke-virtual {p0, p1, v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W()Ljava/util/ArrayList;
    .locals 6

    const-string v0, "getPreviewStreamAvailableSizes:"

    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    :try_start_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    new-instance v4, Lcom/otaliastudios/cameraview/size/Size;

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v3}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    return-object v2

    :catch_0
    move-exception p0

    const-string v2, "Failed to compute preview size. Camera params is empty"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final Z(I)Lcom/otaliastudios/cameraview/frame/FrameManager;
    .locals 1

    new-instance v0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    invoke-direct {v0, p1, p0}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;-><init>(ILcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;)V

    return-object v0
.end method

.method public final a0()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v1, "RESTART PREVIEW:"

    const-string v2, "scheduled. State:"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->R(Z)V

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->O()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final b([B)V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->a(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->g:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->a(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void
.end method

.method public final b0(Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V
    .locals 6

    const-string p2, "executing."

    const-string v0, "onTakePicture:"

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    sget-object p2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v4, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-virtual {v5, p2, v3, v4}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->c(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p2

    iput p2, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->c:I

    invoke-virtual {p0, v3}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->V(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p2

    iput-object p2, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->d:Lcom/otaliastudios/cameraview/size/Size;

    new-instance p2, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-direct {p2, p1, p0, v3}, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera;)V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b()V

    const-string p0, "executed."

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public final c0(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;Z)V
    .locals 9

    const-string p3, "executing."

    const-string v0, "onTakePictureSnapshot:"

    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p3}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    sget-object p3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, p3}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->Y(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v3

    iput-object v3, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->d:Lcom/otaliastudios/cameraview/size/Size;

    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    instance-of v3, v3, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v5, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {v4, v3, p3, v5}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->c(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p3

    iput p3, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->c:I

    new-instance v3, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    iget-object p3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    move-object v6, p3

    check-cast v6, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    iget-object v8, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->V:Lcom/otaliastudios/cameraview/overlay/Overlay;

    move-object v5, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/size/AspectRatio;Lcom/otaliastudios/cameraview/overlay/Overlay;)V

    iput-object v3, v5, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    goto :goto_0

    :cond_0
    move-object v5, p0

    move-object p0, p1

    move-object v7, p2

    sget-object p1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object p2, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {v4, p1, p3, p2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->c(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->c:I

    new-instance p1, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    iget-object p2, v5, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-direct {p1, p0, v5, p2, v7}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera;Lcom/otaliastudios/cameraview/size/AspectRatio;)V

    iput-object p1, v5, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    :goto_0
    iget-object p0, v5, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b()V

    const-string p0, "executed."

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public final i0(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->j0(Landroid/hardware/Camera$Parameters;)V

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Flash;->OFF:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->l0(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->n0(Landroid/hardware/Camera$Parameters;)V

    sget-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->AUTO:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->q0(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Z

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Hdr;->OFF:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->m0(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Hdr;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->r0(Landroid/hardware/Camera$Parameters;F)Z

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->k0(Landroid/hardware/Camera$Parameters;F)Z

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->x:Z

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->o0(Z)Z

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->p0(Landroid/hardware/Camera$Parameters;F)Z

    return-void
.end method

.method public final j0(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne p0, v1, :cond_0

    const-string p0, "continuous-video"

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "continuous-picture"

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "infinity"

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "fixed"

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final k0(Landroid/hardware/Camera$Parameters;F)Z
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-boolean v1, v0, Lcom/otaliastudios/cameraview/CameraOptions;->l:Z

    if-eqz v1, :cond_2

    iget p2, v0, Lcom/otaliastudios/cameraview/CameraOptions;->n:F

    iget v0, v0, Lcom/otaliastudios/cameraview/CameraOptions;->m:F

    iget v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->w:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, p2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->w:F

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result p0

    div-float/2addr p2, p0

    float-to-int p0, p2

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->w:F

    const/4 p0, 0x0

    return p0
.end method

.method public final l0(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Flash;)Z
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->o:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraOptions;->a(Lcom/otaliastudios/cameraview/controls/Control;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->o:Lcom/otaliastudios/cameraview/controls/Flash;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->W:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->o:Lcom/otaliastudios/cameraview/controls/Flash;

    const/4 p0, 0x0

    return p0
.end method

.method public final m0(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Hdr;)Z
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->s:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraOptions;->a(Lcom/otaliastudios/cameraview/controls/Control;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->s:Lcom/otaliastudios/cameraview/controls/Hdr;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->W:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->s:Lcom/otaliastudios/cameraview/controls/Hdr;

    const/4 p0, 0x0

    return p0
.end method

.method public final n0(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->u:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->u:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->u:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->u:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->u:Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final o(Lcom/otaliastudios/cameraview/controls/Facing;)Z
    .locals 8

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->W:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v1, "collectCameraInfo"

    const-string v2, "Facing:"

    const-string v4, "Internal:"

    const-string v6, "Cameras:"

    move-object v3, p1

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_2

    invoke-static {v5, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v6, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v0, :cond_1

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->e(I)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->a:Lcom/otaliastudios/cameraview/controls/Facing;

    iput p1, v0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b:I

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Facing;->FRONT:Lcom/otaliastudios/cameraview/controls/Facing;

    if-ne v3, v1, :cond_0

    rsub-int p1, p1, 0x168

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->f(I)I

    move-result p1

    iput p1, v0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b:I

    :cond_0
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->d()V

    iput v5, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->Y:I

    return v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public final o0(Z)Z
    .locals 2

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->Y:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget-boolean v0, v0, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->x:Z

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->x:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->x:Z

    return v1
.end method

.method public final onError(ILandroid/hardware/Camera;)V
    .locals 1

    const-string p0, "Internal Camera1 error."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/16 p0, 0x64

    if-eq p1, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance p0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {p0, p2, v0}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw p0
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->U()Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Lcom/otaliastudios/cameraview/frame/FrameManager;->a(JLjava/lang/Object;)Lcom/otaliastudios/cameraview/frame/Frame;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    invoke-interface {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->a(Lcom/otaliastudios/cameraview/frame/Frame;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p0(Landroid/hardware/Camera$Parameters;F)Z
    .locals 10

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->B:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->A:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    new-instance v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$9;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$10;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->A:F

    cmpl-float v2, v1, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v2, v1, v4

    int-to-float v6, v2

    div-float/2addr v6, v3

    aget v1, v1, v5

    int-to-float v7, v1

    div-float/2addr v7, v3

    const/high16 v8, 0x41f00000    # 30.0f

    cmpg-float v9, v6, v8

    if-gtz v9, :cond_2

    cmpg-float v8, v8, v7

    if-lez v8, :cond_3

    :cond_2
    const/high16 v8, 0x41c00000    # 24.0f

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_1

    cmpg-float v6, v8, v7

    if-gtz v6, :cond_1

    :cond_3
    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    return v5

    :cond_4
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget v2, v2, Lcom/otaliastudios/cameraview/CameraOptions;->q:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->A:F

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget v2, v2, Lcom/otaliastudios/cameraview/CameraOptions;->p:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->A:F

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v2, v1, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    aget v6, v1, v5

    int-to-float v6, v6

    div-float/2addr v6, v3

    iget v7, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->A:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_5

    cmpg-float v2, v7, v6

    if-gtz v2, :cond_5

    aget p0, v1, v4

    aget p2, v1, v5

    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    return v5

    :cond_6
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->A:F

    return v4
.end method

.method public final q0(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Z
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->p:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraOptions;->a(Lcom/otaliastudios/cameraview/controls/Control;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->p:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->W:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    const-string p0, "auto-whitebalance-lock"

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->p:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const/4 p0, 0x0

    return p0
.end method

.method public final r0(Landroid/hardware/Camera$Parameters;F)Z
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-boolean v0, v0, Lcom/otaliastudios/cameraview/CameraOptions;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->v:F

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->v:F

    const/4 p0, 0x0

    return p0
.end method

.method public final s()Lcom/google/android/gms/tasks/Task;
    .locals 5

    const-string v0, "Started"

    const-string v1, "onStartBind:"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->i()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Landroid/view/SurfaceHolder;

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->i()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Landroid/graphics/SurfaceTexture;

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->S(Lcom/otaliastudios/cameraview/controls/Mode;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->j:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->T()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->k:Lcom/otaliastudios/cameraview/size/Size;

    const-string p0, "Returning"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown CameraPreview output class."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string v0, "Failed to bind."

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final t()Lcom/google/android/gms/tasks/Task;
    .locals 11

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v2, "onStartEngine:"

    const/4 v3, 0x3

    const/4 v4, 0x1

    :try_start_0
    iget v5, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->Y:I

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_0

    invoke-virtual {v5, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    const-string v5, "Applying default parameters."

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    :try_start_1
    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    new-instance v6, Lcom/otaliastudios/cameraview/engine/options/Camera1Options;

    iget v7, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->Y:I

    sget-object v8, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v9, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v8, v9}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result v10

    invoke-direct {v6, v5, v7, v10}, Lcom/otaliastudios/cameraview/engine/options/Camera1Options;-><init>(Landroid/hardware/Camera$Parameters;IZ)V

    iput-object v6, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {p0, v5}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->i0(Landroid/hardware/Camera$Parameters;)V

    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    sget-object v6, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {v0, v8, v9, v6}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->c(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "Ended"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "Failed to connect. Can\'t set display orientation, maybe preview already exists?"

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance p0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {p0, v4}, Lcom/otaliastudios/cameraview/CameraException;-><init>(I)V

    throw p0

    :catch_1
    move-exception p0

    const-string v0, "Failed to connect. Problem with camera params"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, p0, v4}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_0
    const-string p0, "Failed to connect. Camera is null, maybe in use by another app or already released?"

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance p0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {p0, v4}, Lcom/otaliastudios/cameraview/CameraException;-><init>(I)V

    throw p0

    :catch_2
    move-exception p0

    const-string v0, "Failed to connect. Maybe in use by another app?"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, p0, v4}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final u()Lcom/google/android/gms/tasks/Task;
    .locals 11

    const-string v0, "onStartPreview:"

    const-string v1, "Dispatching onCameraPreviewStreamSizeChanged."

    const-string v2, "onStartPreview"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    invoke-interface {v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->k()V

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->q(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    iget v7, v1, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget v1, v1, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-virtual {v6, v7, v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->q(II)V

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->p(I)V

    const/4 v1, 0x2

    const/4 v6, 0x3

    :try_start_0
    iget-object v7, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    iget-object v9, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->k:Lcom/otaliastudios/cameraview/size/Size;

    iget v10, v9, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget v9, v9, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-virtual {v7, v10, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v9, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    sget-object v10, Lcom/otaliastudios/cameraview/controls/Mode;->PICTURE:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->j:Lcom/otaliastudios/cameraview/size/Size;

    iget v10, v9, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget v9, v9, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-virtual {v7, v10, v9}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v10}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->S(Lcom/otaliastudios/cameraview/controls/Mode;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v9

    iget v10, v9, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget v9, v9, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-virtual {v7, v10, v9}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :goto_0
    :try_start_1
    iget-object v9, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v9, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->U()Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    iget-object v7, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->k:Lcom/otaliastudios/cameraview/size/Size;

    iget-object v9, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-virtual {v0, v8, v7, v9}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->d(ILcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/engine/offset/Angles;)V

    const-string v0, "Starting preview with startPreview()."

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    :try_start_2
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "Started preview."

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Failed to start preview."

    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, p0, v1}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_1
    move-exception p0

    const-string v2, "Failed to set params for camera. Maybe incorrect parameter put in params?"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, p0, v1}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_2
    move-exception p0

    const-string v2, "Failed to get params from camera. Maybe low level problem with camera or camera has already released?"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, p0, v1}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_1
    const-string p0, "previewStreamSize should not be null at this point."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5
.end method

.method public final v()Lcom/google/android/gms/tasks/Task;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->k:Lcom/otaliastudios/cameraview/size/Size;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->j:Lcom/otaliastudios/cameraview/size/Size;

    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->i()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/view/SurfaceHolder;

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->i()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/graphics/SurfaceTexture;

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown CameraPreview output class."

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "onStopBind"

    const-string v2, "Could not release surface"

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x3

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final w()Lcom/google/android/gms/tasks/Task;
    .locals 7

    const-string v0, "About to clean up."

    const-string v1, "onStopEngine:"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const/4 v4, 0x0

    const-string v5, "focus reset"

    invoke-virtual {v0, v4, v5}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d(ILjava/lang/String;)V

    const-string v5, "focus end"

    invoke-virtual {v0, v4, v5}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    const/4 v4, 0x2

    const-string v5, "Clean up."

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "Releasing camera."

    filled-new-array {v1, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const-string v0, "Released camera."

    filled-new-array {v1, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Exception while releasing camera."

    filled-new-array {v1, v5, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    iput-object v6, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    iput-object v6, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    :cond_0
    iput-object v6, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iput-object v6, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    const-string p0, "Returning."

    filled-new-array {v1, v5, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final x()Lcom/google/android/gms/tasks/Task;
    .locals 5

    const-string v0, "Started."

    const-string v1, "onStopPreview:"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->U()Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object v4

    check-cast v4, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->c()V

    const-string v4, "Releasing preview buffers."

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    :try_start_0
    const-string v4, "Stopping preview."

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->stopPreview()V

    const-string p0, "Stopped preview."

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "stopPreview"

    const-string v3, "Could not stop preview"

    filled-new-array {v1, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {v2, v1, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
