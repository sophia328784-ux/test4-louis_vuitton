.class public Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "SourceFile"


# instance fields
.field public final n0:F


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->n0:F

    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/state/HelperReference;->m0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/core/state/HelperReference;->k0:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->h()V

    iget-object v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->R:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->S:Ljava/lang/Object;

    if-eqz v3, :cond_2

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v4, v2, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v3, v2, Landroidx/constraintlayout/core/state/ConstraintReference;->S:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->p(Ljava/lang/Object;)V

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->U:Ljava/lang/Object;

    if-eqz v3, :cond_3

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v4, v2, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v3, v2, Landroidx/constraintlayout/core/state/ConstraintReference;->U:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->V:Ljava/lang/Object;

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->e(Ljava/lang/Object;)V

    :goto_2
    const/high16 v3, 0x3f000000    # 0.5f

    iget v4, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->n0:F

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_0

    iput v4, v2, Landroidx/constraintlayout/core/state/ConstraintReference;->i:F

    goto :goto_0

    :cond_5
    return-void
.end method
