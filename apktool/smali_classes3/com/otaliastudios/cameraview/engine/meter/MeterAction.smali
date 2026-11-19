.class public Lcom/otaliastudios/cameraview/engine/meter/MeterAction;
.super Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;
.source "SourceFile"


# static fields
.field public static final j:Lcom/otaliastudios/cameraview/CameraLogger;


# instance fields
.field public e:Ljava/util/List;

.field public f:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

.field public final g:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

.field public final h:Lcom/otaliastudios/cameraview/engine/CameraEngine;

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MeterAction"

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->j:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;-><init>()V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->g:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->h:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    iput-boolean p3, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->i:Z

    return-void
.end method


# virtual methods
.method public final i(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 12

    const-string v0, "initializing."

    const-string v1, "onStart:"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->j:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->g:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    if-eqz v4, :cond_0

    new-instance v5, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->h:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    move-object v6, v0

    check-cast v6, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    move-object v7, v6

    iget-object v6, v7, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    iget-object v7, v7, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    move-object v8, v7

    new-instance v7, Lcom/otaliastudios/cameraview/size/Size;

    iget v9, v8, Lcom/otaliastudios/cameraview/preview/CameraPreview;->d:I

    iget v8, v8, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    invoke-direct {v7, v9, v8}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    sget-object v8, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v8}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->q(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v8

    check-cast v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    iget-boolean v9, v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->c:Z

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->a()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;-><init>(Lcom/otaliastudios/cameraview/engine/offset/Angles;Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/Size;ZLandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, v5}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->c(Lcom/otaliastudios/cameraview/metering/MeteringTransform;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object v0

    const v4, 0x7fffffff

    invoke-virtual {v0, v4, v5}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->b(ILcom/otaliastudios/cameraview/metering/MeteringTransform;)Ljava/util/List;

    move-result-object v0

    :cond_0
    new-instance v4, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;

    iget-boolean v5, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->i:Z

    invoke-direct {v4, v0, v5}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;-><init>(Ljava/util/List;Z)V

    new-instance v6, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;

    invoke-direct {v6, v0, v5}, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;-><init>(Ljava/util/List;Z)V

    new-instance v7, Lcom/otaliastudios/cameraview/engine/meter/WhiteBalanceMeter;

    invoke-direct {v7, v0, v5}, Lcom/otaliastudios/cameraview/engine/meter/WhiteBalanceMeter;-><init>(Ljava/util/List;Z)V

    const/4 v0, 0x3

    new-array v5, v0, [Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;

    const/4 v8, 0x0

    aput-object v4, v5, v8

    const/4 v9, 0x1

    aput-object v6, v5, v9

    aput-object v7, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->e:Ljava/util/List;

    new-array v0, v0, [Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    aput-object v4, v0, v8

    aput-object v6, v0, v9

    aput-object v7, v0, v3

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/action/Actions;->c([Lcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->f:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    const-string v0, "initialized."

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->i(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method

.method public final n()Lcom/otaliastudios/cameraview/engine/action/BaseAction;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->f:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-object p0
.end method
