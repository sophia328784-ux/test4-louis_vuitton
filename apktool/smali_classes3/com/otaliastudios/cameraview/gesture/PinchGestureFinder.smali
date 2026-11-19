.class public Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;
.super Lcom/otaliastudios/cameraview/gesture/GestureFinder;
.source "SourceFile"


# instance fields
.field public final e:Landroid/view/ScaleGestureDetector;

.field public f:Z

.field public g:F


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->g:F

    sget-object v0, Lcom/otaliastudios/cameraview/gesture/Gesture;->PINCH:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->b:Lcom/otaliastudios/cameraview/gesture/Gesture;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder$1;-><init>(Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->e:Landroid/view/ScaleGestureDetector;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final b(FFF)F
    .locals 0

    iget p0, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->g:F

    invoke-static {p3, p2, p0, p1}, Ltr;->a(FFFF)F

    move-result p0

    return p0
.end method
