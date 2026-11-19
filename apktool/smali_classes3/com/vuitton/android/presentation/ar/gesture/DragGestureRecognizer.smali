.class public final Lcom/vuitton/android/presentation/ar/gesture/DragGestureRecognizer;
.super Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/gesture/DragGestureRecognizer$OnGestureStartedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer<",
        "Lcom/vuitton/android/presentation/ar/gesture/DragGesture;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/gesture/DragGestureRecognizer;",
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;",
        "Lcom/vuitton/android/presentation/ar/gesture/DragGesture;",
        "Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;",
        "gesturePointersUtility",
        "<init>",
        "(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V",
        "OnGestureStartedListener",
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


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;-><init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;

    invoke-direct {v1, v0, p1}, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;-><init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
