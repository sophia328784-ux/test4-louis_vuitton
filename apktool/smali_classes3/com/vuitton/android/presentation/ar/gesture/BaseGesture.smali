.class public abstract Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;",
        "T",
        "",
        "Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;",
        "gesturePointersUtility",
        "<init>",
        "(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V",
        "OnGestureEventListener",
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
.field public final a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/MotionEvent;)Z
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->d:Z

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->d()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->e:Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->c()Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;->a(Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;)V

    :cond_0
    return-void
.end method

.method public abstract c()Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;
.end method

.method public abstract d()V
.end method

.method public abstract e(Landroid/view/MotionEvent;)V
.end method

.method public abstract f(Landroid/view/MotionEvent;)Z
.end method
