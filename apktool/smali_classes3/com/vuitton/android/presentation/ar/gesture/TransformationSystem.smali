.class public final Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;",
        "",
        "Landroid/util/DisplayMetrics;",
        "displayMetrics",
        "<init>",
        "(Landroid/util/DisplayMetrics;)V",
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
.field public final a:Ljava/util/ArrayList;

.field public final b:Lcom/vuitton/android/presentation/ar/gesture/DragGestureRecognizer;

.field public final c:Lcom/vuitton/android/presentation/ar/gesture/PinchGestureRecognizer;

.field public final d:Lcom/vuitton/android/presentation/ar/gesture/TwistGestureRecognizer;


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;-><init>(Landroid/util/DisplayMetrics;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/vuitton/android/presentation/ar/gesture/DragGestureRecognizer;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/ar/gesture/DragGestureRecognizer;-><init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;->b:Lcom/vuitton/android/presentation/ar/gesture/DragGestureRecognizer;

    new-instance v1, Lcom/vuitton/android/presentation/ar/gesture/PinchGestureRecognizer;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/ar/gesture/PinchGestureRecognizer;-><init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;->c:Lcom/vuitton/android/presentation/ar/gesture/PinchGestureRecognizer;

    new-instance v1, Lcom/vuitton/android/presentation/ar/gesture/TwistGestureRecognizer;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/ar/gesture/TwistGestureRecognizer;-><init>(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;->d:Lcom/vuitton/android/presentation/ar/gesture/TwistGestureRecognizer;

    return-void
.end method
