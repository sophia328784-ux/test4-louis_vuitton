.class public final Lcom/vuitton/android/presentation/ar/gesture/DragGesture;
.super Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/gesture/DragGesture$Companion;,
        Lcom/vuitton/android/presentation/ar/gesture/DragGesture$OnGestureEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture<",
        "Lcom/vuitton/android/presentation/ar/gesture/DragGesture;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0008\tB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/gesture/DragGesture;",
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;",
        "Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;",
        "gesturePointersUtility",
        "Landroid/view/MotionEvent;",
        "motionEvent",
        "<init>",
        "(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;Landroid/view/MotionEvent;)V",
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

.field public final g:Lcom/vuitton/android/presentation/ar/V3;

.field public h:Lcom/vuitton/android/presentation/ar/V3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/ar/gesture/DragGesture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;-><init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->f:I

    sget-object v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->c:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->g:Lcom/vuitton/android/presentation/ar/V3;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    sget-object p0, Lcom/vuitton/android/presentation/ar/MatrixKt;->a:Lcom/vuitton/android/presentation/ar/V3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    iget v3, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->f:I

    invoke-virtual {v2, v3}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->a(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    if-eq v1, v4, :cond_6

    const/4 v0, 0x6

    if-eq v1, v0, :cond_6

    :cond_0
    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v6, v3, :cond_3

    invoke-virtual {v2, v6}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->a(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->c:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->g:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p0

    invoke-static {p0, p0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->a(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/4 p1, 0x4

    iget-object v0, v2, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->a:Landroid/util/DisplayMetrics;

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_5

    return v4

    :cond_5
    :goto_1
    return v5

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b()V

    return v5
.end method

.method public final c()Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;
    .locals 0

    return-object p0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    iget-object v0, v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->b:Ljava/util/HashSet;

    iget p0, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->c:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->f:I

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->b(I)V

    return-void
.end method

.method public final f(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget v4, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->f:I

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->c:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->b(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    return v3

    :cond_0
    if-ne v0, v4, :cond_2

    if-eq v1, v3, :cond_1

    const/4 p1, 0x6

    if-ne v1, p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne v1, p1, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b()V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
