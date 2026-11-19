.class public final Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation;",
        "Landroid/view/animation/Animation;",
        "Landroid/view/View;",
        "handImageView",
        "<init>",
        "(Landroid/view/View;)V",
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
.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation;->c:Landroid/view/View;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const-wide/16 v0, 0x9c4

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    const p2, 0x40c90fdb

    mul-float/2addr p1, p2

    const p2, 0x3fc90fdb

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float/2addr v3, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p1, v4

    mul-float/2addr v1, p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    add-float/2addr p0, v1

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p0, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setY(F)V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    return-void
.end method
