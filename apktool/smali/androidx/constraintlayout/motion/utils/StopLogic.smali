.class public Landroidx/constraintlayout/motion/utils/StopLogic;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

.field public b:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

.field public c:Landroidx/constraintlayout/core/motion/utils/StopEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->a:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->c:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->c:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {p0}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->a()F

    move-result p0

    return p0
.end method

.method public final b(FFFFFF)V
    .locals 1

    move-object v0, p0

    iget-object p0, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->a:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    iput-object p0, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->c:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->l:F

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->k:Z

    if-eqz v0, :cond_1

    move v0, p1

    neg-float p1, p3

    sub-float p2, v0, p2

    move p3, p5

    move p5, p4

    move p4, p6

    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->d(FFFFF)V

    return-void

    :cond_1
    move v0, p1

    move p1, p3

    move p3, p5

    move p5, p4

    move p4, p6

    sub-float/2addr p2, v0

    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->d(FFFFF)V

    return-void
.end method

.method public final getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->c:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {p0, p1}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getInterpolation(F)F

    move-result p0

    return p0
.end method
