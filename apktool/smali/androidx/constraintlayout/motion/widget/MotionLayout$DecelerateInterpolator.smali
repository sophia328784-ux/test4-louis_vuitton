.class Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecelerateInterpolator"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public final synthetic d:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->d:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->a:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->b:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->d:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    return p0
.end method

.method public final getInterpolation(F)F
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->a:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->c:F

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->d:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-lez v1, :cond_1

    div-float v1, v0, v2

    cmpg-float v5, v1, p1

    if-gez v5, :cond_0

    move p1, v1

    :cond_0
    mul-float/2addr v2, p1

    sub-float v1, v0, v2

    iput v1, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    mul-float/2addr v0, p1

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->b:F

    add-float/2addr v0, p0

    return v0

    :cond_1
    neg-float v1, v0

    div-float/2addr v1, v2

    cmpg-float v5, v1, p1

    if-gez v5, :cond_2

    move p1, v1

    :cond_2
    mul-float/2addr v2, p1

    add-float v1, v2, v0

    iput v1, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    mul-float/2addr v0, p1

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->b:F

    add-float/2addr v2, p0

    return v2
.end method
