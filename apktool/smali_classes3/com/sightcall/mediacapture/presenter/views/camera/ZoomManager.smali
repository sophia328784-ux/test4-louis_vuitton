.class public final Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;",
        "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;",
        "camera",
        "Landroidx/camera/core/Camera;",
        "zoomState",
        "Landroidx/camera/core/ZoomState;",
        "<init>",
        "(Landroidx/camera/core/Camera;Landroidx/camera/core/ZoomState;)V",
        "zoomRatio",
        "",
        "computedZoom",
        "minZoomRatio",
        "maxZoomRatio",
        "onScale",
        "",
        "detector",
        "Landroid/view/ScaleGestureDetector;",
        "onScaleEnd",
        "",
        "computeZoom",
        "scaleFactor",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final camera:Landroidx/camera/core/Camera;

.field private computedZoom:F

.field private final maxZoomRatio:F

.field private final minZoomRatio:F

.field private zoomRatio:F


# direct methods
.method public constructor <init>(Landroidx/camera/core/Camera;Landroidx/camera/core/ZoomState;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->camera:Landroidx/camera/core/Camera;

    invoke-interface {p2}, Landroidx/camera/core/ZoomState;->d()F

    move-result p1

    iput p1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->zoomRatio:F

    iput p1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->computedZoom:F

    invoke-interface {p2}, Landroidx/camera/core/ZoomState;->c()F

    move-result p1

    iput p1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->minZoomRatio:F

    invoke-interface {p2}, Landroidx/camera/core/ZoomState;->a()F

    move-result p1

    iput p1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->maxZoomRatio:F

    return-void
.end method

.method private final computeZoom(F)F
    .locals 1

    iget v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->zoomRatio:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->maxZoomRatio:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->minZoomRatio:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->computeZoom(F)F

    move-result v0

    iput v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->computedZoom:F

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->camera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->a()Landroidx/camera/core/CameraControl;

    move-result-object v0

    iget v1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->computedZoom:F

    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->b(F)Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->computedZoom:F

    iput v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;->zoomRatio:F

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method
