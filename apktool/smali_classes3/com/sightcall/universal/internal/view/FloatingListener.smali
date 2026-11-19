.class public Lcom/sightcall/universal/internal/view/FloatingListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private exitTouchSlop:Z

.field private final hasLocalBar:Z

.field private final hasRemoteBar:Z

.field private isDragging:Z

.field private final parent:Landroid/view/View;

.field private final rect:Landroid/graphics/Rect;

.field private startRawX:F

.field private startRawY:F

.field private startX:F

.field private startY:F

.field private final touchSlop:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->rect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->touchSlop:I

    iput-boolean p2, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->hasLocalBar:Z

    iput-boolean p3, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->hasRemoteBar:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/FloatingListener;->animatePosition(Landroid/graphics/Rect;)V

    return-void
.end method

.method private animatePosition(Landroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->rect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gtz v7, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gtz v10, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    sub-int/2addr v0, v2

    iget v2, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_2

    move v2, v9

    goto :goto_2

    :cond_2
    move v2, v8

    :goto_2
    sub-int/2addr v1, v3

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_3

    move v8, v9

    :cond_3
    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->rect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p1

    int-to-float p1, v3

    if-eqz v7, :cond_4

    move v2, p1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    int-to-float v2, v0

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    int-to-float v0, v0

    invoke-static {p1, v2, v0}, Lcom/sightcall/universal/internal/view/FloatingListener;->minMax(FFF)F

    move-result p1

    int-to-float v0, v6

    if-eqz v10, :cond_6

    move v2, v0

    goto :goto_4

    :cond_6
    if-eqz v8, :cond_7

    int-to-float v2, v1

    goto :goto_4

    :cond_7
    move v2, v5

    :goto_4
    int-to-float v1, v1

    invoke-static {v0, v2, v1}, Lcom/sightcall/universal/internal/view/FloatingListener;->minMax(FFF)F

    move-result v0

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->isDragging:Z

    if-nez v1, :cond_9

    cmpl-float v1, v4, p1

    if-nez v1, :cond_8

    cmpl-float v1, v5, v0

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0, p1, v0}, Lcom/sightcall/universal/internal/view/FloatingListener;->animateViewPosition(FF)V

    :cond_9
    return-void
.end method

.method private animateViewPosition(FF)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/FloatingListener;->setPosition(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getSafeRect(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;ILcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p3}, Lcom/sightcall/universal/util/SystemUiHelper;->isShowing()Z

    move-result p3

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget v0, Lcom/sightcall/universal/R$dimen;->universal_call_button_bar_height:I

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    iput p2, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p4, v0}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->getPixelInsetTop(Z)I

    move-result v1

    iget-boolean v2, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->hasRemoteBar:Z

    if-eqz v2, :cond_0

    move v2, p6

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/2addr v1, p2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    if-eqz p3, :cond_2

    invoke-virtual {p4}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->getPixelInsetRight()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    add-int/2addr v1, p2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    if-eqz p3, :cond_5

    invoke-virtual {p4}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->getPixelInsetBottom()I

    move-result p3

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->hasLocalBar:Z

    if-eqz p0, :cond_3

    move p0, p6

    goto :goto_3

    :cond_3
    move p0, v0

    :goto_3
    add-int/2addr p3, p0

    invoke-interface {p5}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->isPlayerBarShowings()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move p6, v0

    :goto_4
    add-int v0, p3, p6

    :cond_5
    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private static minMax(FFF)F
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private setPosition(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/FloatingListener;->fixPosition(Z)V

    return-void
.end method


# virtual methods
.method public fixPosition(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->rect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    int-to-float v1, v5

    iget-object v4, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    int-to-float v2, v2

    invoke-static {v1, v4, v2}, Lcom/sightcall/universal/internal/view/FloatingListener;->minMax(FFF)F

    move-result v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lcom/sightcall/universal/internal/view/FloatingListener;->minMax(FFF)F

    move-result v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/sightcall/universal/internal/view/FloatingListener;->animateViewPosition(FF)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->startRawX:F

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->startRawY:F

    sub-float/2addr p2, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-boolean v3, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->exitTouchSlop:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->touchSlop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return v1

    :cond_1
    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->exitTouchSlop:Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    iget-object v6, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->rect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->startX:F

    add-float/2addr v8, p1

    sub-int/2addr v1, v3

    iget p1, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-static {v7, v8, p1}, Lcom/sightcall/universal/internal/view/FloatingListener;->minMax(FFF)F

    move-result p1

    invoke-virtual {v5, p1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->rect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget p0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->startY:F

    add-float/2addr p0, p2

    sub-int/2addr v2, v4

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p2

    int-to-float p2, v2

    invoke-static {v3, p0, p2}, Lcom/sightcall/universal/internal/view/FloatingListener;->minMax(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setY(F)V

    return v0

    :cond_2
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->isDragging:Z

    iput-boolean v1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->exitTouchSlop:Z

    return v0

    :cond_3
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->isDragging:Z

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->startX:F

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->startY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->startRawX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->startRawY:F

    return v0
.end method

.method public restart(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/FloatingListener;->animatePosition(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    new-instance v1, Lcom/sightcall/universal/internal/view/FloatingListener$2;

    invoke-direct {v1, p0, p1}, Lcom/sightcall/universal/internal/view/FloatingListener$2;-><init>(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/FloatingListener;->setPosition(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    new-instance v1, Lcom/sightcall/universal/internal/view/FloatingListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sightcall/universal/internal/view/FloatingListener$1;-><init>(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/FloatingListener;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
