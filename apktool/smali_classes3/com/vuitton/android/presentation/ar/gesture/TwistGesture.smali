.class public final Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;
.super Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;,
        Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$OnGestureEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture<",
        "Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\n\u000bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;",
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


# static fields
.field public static final m:Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;


# instance fields
.field public final f:I

.field public final g:I

.field public final h:Lcom/vuitton/android/presentation/ar/V3;

.field public final i:Lcom/vuitton/android/presentation/ar/V3;

.field public j:Lcom/vuitton/android/presentation/ar/V3;

.field public k:Lcom/vuitton/android/presentation/ar/V3;

.field public l:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->m:Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;Landroid/view/MotionEvent;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;-><init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V

    iput p3, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->f:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->g:I

    sget-object v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->c:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {p2, p3}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->i:Lcom/vuitton/android/presentation/ar/V3;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->j:Lcom/vuitton/android/presentation/ar/V3;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->k:Lcom/vuitton/android/presentation/ar/V3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    iget v1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->g:I

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->a(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_8

    iget v2, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->f:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b()V

    return v3

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v6, 0x6

    if-ne v4, v6, :cond_3

    :cond_2
    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-eq v4, v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->c:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v0

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->j:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->k:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v2

    iput-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->j:Lcom/vuitton/android/presentation/ar/V3;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->k:Lcom/vuitton/android/presentation/ar/V3;

    sget-object v4, Lcom/vuitton/android/presentation/ar/MatrixKt;->a:Lcom/vuitton/android/presentation/ar/V3;

    invoke-static {v1, v4}, Lcom/vuitton/android/presentation/ar/MatrixKt;->b(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v2, v4}, Lcom/vuitton/android/presentation/ar/MatrixKt;->b(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->i:Lcom/vuitton/android/presentation/ar/V3;

    sget-object v2, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->m:Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;

    invoke-static {v2, v0, p1, v1, p0}, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;->a(Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x41700000    # 15.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_6

    return v5

    :cond_6
    :goto_0
    return v3

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b()V

    return v3

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b()V

    return v3
.end method

.method public final c()Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;
    .locals 0

    return-object p0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->b:Ljava/util/HashSet;

    iget v2, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->b:Ljava/util/HashSet;

    iget p0, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Landroid/view/MotionEvent;)V
    .locals 1

    iget p1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->g:I

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->b(I)V

    iget p0, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->f:I

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
    iget v2, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->f:I

    iget v4, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->g:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v6, 0x6

    if-ne v1, v6, :cond_2

    :cond_1
    if-eq v0, v4, :cond_5

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    return v3

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->c:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v0

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;->a(Landroid/view/MotionEvent;I)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->j:Lcom/vuitton/android/presentation/ar/V3;

    iget-object v2, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->k:Lcom/vuitton/android/presentation/ar/V3;

    sget-object v3, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->m:Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;

    invoke-static {v3, v0, p1, v1, v2}, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;->a(Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F

    move-result v1

    iput v1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput v1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->l:F

    :cond_4
    iput-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->j:Lcom/vuitton/android/presentation/ar/V3;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->k:Lcom/vuitton/android/presentation/ar/V3;

    return v5

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b()V

    return v3
.end method
