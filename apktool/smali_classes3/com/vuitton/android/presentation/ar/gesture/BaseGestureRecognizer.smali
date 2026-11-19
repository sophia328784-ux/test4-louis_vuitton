.class public abstract Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer$OnGestureStartedListener;
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000*\u000e\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0003:\u0001\u0008B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;",
        "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;",
        "T",
        "",
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


# instance fields
.field public final a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/MotionEvent;)V
.end method
