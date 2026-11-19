.class public final Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;
.super Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/gesture/PinchGesture$Companion;,
        Lcom/vuitton/android/presentation/ar/gesture/PinchGesture$OnGestureEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture<",
        "Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\n\u000bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;",
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;",
        "Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;",
        "gesturePointersUtility",
        "Landroid/view/MotionEvent;",
        "motionEvent",
        "",
        "pointerId2",
        "<init>",
        "(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;Landroid/view/MotionEvent;I)V",
        "OnGestureEventListener",
        "Companion",
        "presentation"
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
.field public final f:I

.field public final g:I

.field public final h:Lcom/vuitton/android/presentation/ar/V3;

.field public final i:Lcom/vuitton/android/presentation/ar/V3;

.field public j:Lcom/vuitton/android/presentation/ar/V3;

.field public k:Lcom/vuitton/android/presentation/ar/V3;

.field public l:F

.field public m:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;Landroid/view/MotionEvent;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;-><init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V

    iput p3, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->f:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->g:I

    sget-object v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->c:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {p2, p3}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->i:Lcom/vuitton/android/presentation/ar/V3;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->j:Lcom/vuitton/android/presentation/ar/V3;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->k:Lcom/vuitton/android/presentation/ar/V3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    iget v6, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->g:I

    invoke-virtual {v5, v6}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->a(I)Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->f:I

    invoke-virtual {v5, v7}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->a(I)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x3

    if-eq v1, v8, :cond_7

    if-eqz v4, :cond_2

    if-eq v0, v6, :cond_7

    if-ne v0, v7, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    iget-object v4, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->i:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {v1, v4}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->d(Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v4

    sget-object v8, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->c:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v6}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v6

    invoke-static {p1, v7}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    iget-object v7, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->j:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {v6, v7}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v7

    iget-object v8, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->k:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {p1, v8}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v8

    iput-object v6, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->j:Lcom/vuitton/android/presentation/ar/V3;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->k:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {v7}, Lcom/vuitton/android/presentation/ar/MatrixKt;->d(Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v9

    iget-object v10, v4, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    aget v11, v10, v2

    neg-float v11, v11

    aget v12, v10, v3

    neg-float v12, v12

    aget v0, v10, v0

    neg-float v0, v0

    invoke-static {v11, v12, v0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->k(FFF)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->a(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F

    move-result v0

    invoke-static {v8}, Lcom/vuitton/android/presentation/ar/MatrixKt;->d(Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/vuitton/android/presentation/ar/MatrixKt;->a(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F

    move-result v4

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    sget-object v10, Lcom/vuitton/android/presentation/ar/MatrixKt;->a:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {v7, v10}, Lcom/vuitton/android/presentation/ar/MatrixKt;->b(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_6

    :cond_4
    invoke-static {v8, v10}, Lcom/vuitton/android/presentation/ar/MatrixKt;->b(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_6

    :cond_5
    invoke-static {v1, v1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->a(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v6, p1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    invoke-static {p1, p1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->a(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F

    move-result p1

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float p1, v6

    iput p1, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->l:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 p1, 0x4

    iget-object v0, v5, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->a:Landroid/util/DisplayMetrics;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {p1, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_6

    return v3

    :cond_6
    :goto_2
    return v2

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b()V

    return v2
.end method

.method public final c()Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;
    .locals 0

    return-object p0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->b:Ljava/util/HashSet;

    iget v2, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->b:Ljava/util/HashSet;

    iget p0, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Landroid/view/MotionEvent;)V
    .locals 1

    iget p1, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->g:I

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->b(I)V

    iget p0, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->f:I

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->b(I)V

    return-void
.end method

.method public final f(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b()V

    return v3

    :cond_0
    iget v2, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->f:I

    iget v4, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->g:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v6, 0x6

    if-ne v1, v6, :cond_2

    :cond_1
    if-eq v0, v4, :cond_5

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->c:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v0

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    invoke-static {p1, p1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->a(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->l:F

    cmpg-float v1, p1, v0

    if-nez v1, :cond_4

    :goto_0
    return v3

    :cond_4
    sub-float v0, p1, v0

    iput v0, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->m:F

    iput p1, p0, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->l:F

    return v5

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b()V

    return v3
.end method
