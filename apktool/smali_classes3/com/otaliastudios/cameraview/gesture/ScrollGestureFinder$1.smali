.class Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;

.field public final synthetic c:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder$1;->c:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder$1;->b:Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder$1;->c:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->c:[Landroid/graphics/PointF;

    sget-object v2, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->h:Lcom/otaliastudios/cameraview/CameraLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "distanceX="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "distanceY="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onScroll:"

    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aget-object v5, v1, v2

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aget-object v5, v1, v2

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->b:Lcom/otaliastudios/cameraview/gesture/Gesture;

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    if-ne p1, v3, :cond_5

    move v2, v4

    goto :goto_3

    :cond_2
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    sget-object v5, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_VERTICAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    :goto_2
    iput-object v5, v0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->b:Lcom/otaliastudios/cameraview/gesture/Gesture;

    aget-object v2, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v2, v5, p1}, Landroid/graphics/PointF;->set(FF)V

    move v2, v3

    :cond_5
    :goto_3
    aget-object p1, v1, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder$1;->b:Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;

    if-eqz v2, :cond_6

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p3, p0

    goto :goto_4

    :cond_6
    invoke-interface {p0}, Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float p3, p4, p0

    :goto_4
    iput p3, v0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->g:F

    if-eqz v2, :cond_7

    neg-float p3, p3

    :cond_7
    iput p3, v0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->g:F

    iput-boolean v4, v0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->f:Z

    return v4

    :cond_8
    :goto_5
    return v2
.end method
