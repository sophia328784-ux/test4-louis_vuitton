.class public Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragGestureDetector"
.end annotation


# instance fields
.field dragging:Z

.field initialSpan:F

.field initialX:F

.field initialY:F

.field lastX:F

.field lastY:F

.field offsetX:F

.field offsetY:F

.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

.field touchSlope:I


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V
    .locals 1

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->dragging:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->touchSlope:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->constraintsRect()V

    return-void
.end method

.method private constraintsRect()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetY:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetY:F

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetY:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetY:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetY:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetY:F

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    if-gez v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetX:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetX:F

    return-void

    :cond_3
    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetX:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetX:F

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetX:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetX:F

    :cond_5
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    const/4 v4, 0x0

    if-eq p1, v3, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->initialX:F

    iput v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->initialY:F

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->b(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->initialSpan:F

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->b(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->b(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/view/ScaleGestureDetector;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->dragging:Z

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_7

    iget p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->initialX:F

    sub-float p1, v1, p1

    iget v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->initialY:F

    sub-float v0, v2, v0

    iget-boolean v4, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->dragging:Z

    if-nez v4, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v4, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->touchSlope:I

    int-to-float v4, v4

    cmpl-float p1, p1, v4

    if-gtz p1, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->touchSlope:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    :cond_3
    iput-boolean v3, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->dragging:Z

    iget p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetX:F

    iget v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->lastX:F

    sub-float v0, v1, v0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetX:F

    iget p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetY:F

    iget v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->lastY:F

    sub-float v0, v2, v0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetY:F

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_4
    iput v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->lastX:F

    iput v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->lastY:F

    goto :goto_0

    :cond_5
    iput-boolean v4, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->dragging:Z

    goto :goto_0

    :cond_6
    iput v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->lastX:F

    iput v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->lastY:F

    :cond_7
    :goto_0
    return v3
.end method
