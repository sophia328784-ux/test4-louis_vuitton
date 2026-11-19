.class public Landroidx/constraintlayout/core/state/helpers/GridReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "SourceFile"


# instance fields
.field public A0:Ljava/lang/String;

.field public B0:I

.field public n0:Landroidx/constraintlayout/core/utils/GridCore;

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:I

.field public u0:I

.field public v0:F

.field public w0:F

.field public x0:Ljava/lang/String;

.field public y0:Ljava/lang/String;

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->o0:I

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->p0:I

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->q0:I

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->r0:I

    sget-object p1, Landroidx/constraintlayout/core/state/State$Helper;->ROW:Landroidx/constraintlayout/core/state/State$Helper;

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->t0:I

    return-void

    :cond_0
    sget-object p1, Landroidx/constraintlayout/core/state/State$Helper;->COLUMN:Landroidx/constraintlayout/core/state/State$Helper;

    if-ne p2, p1, :cond_1

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->u0:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 5

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/helpers/GridReference;->s()Landroidx/constraintlayout/core/widgets/HelperWidget;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->s0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Landroidx/constraintlayout/core/utils/GridCore;->W0:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iput v1, v0, Landroidx/constraintlayout/core/utils/GridCore;->W0:I

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->t0:I

    const/16 v1, 0x32

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    if-le v0, v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    iget v3, v2, Landroidx/constraintlayout/core/utils/GridCore;->N0:I

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    iput v0, v2, Landroidx/constraintlayout/core/utils/GridCore;->N0:I

    invoke-virtual {v2}, Landroidx/constraintlayout/core/utils/GridCore;->n0()V

    invoke-virtual {v2}, Landroidx/constraintlayout/core/utils/GridCore;->j0()V

    :cond_4
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->u0:I

    if-eqz v0, :cond_7

    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    if-le v0, v1, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_5
    iget v1, v2, Landroidx/constraintlayout/core/utils/GridCore;->P0:I

    if-ne v1, v0, :cond_6

    goto :goto_2

    :cond_6
    iput v0, v2, Landroidx/constraintlayout/core/utils/GridCore;->P0:I

    invoke-virtual {v2}, Landroidx/constraintlayout/core/utils/GridCore;->n0()V

    invoke-virtual {v2}, Landroidx/constraintlayout/core/utils/GridCore;->j0()V

    :cond_7
    :goto_2
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->v0:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    cmpg-float v3, v0, v1

    if-gez v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_8
    iget v3, v2, Landroidx/constraintlayout/core/utils/GridCore;->Q0:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    iput v0, v2, Landroidx/constraintlayout/core/utils/GridCore;->Q0:F

    :cond_a
    :goto_3
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->w0:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    cmpg-float v1, v0, v1

    if-gez v1, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_b
    iget v1, v2, Landroidx/constraintlayout/core/utils/GridCore;->R0:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    iput v0, v2, Landroidx/constraintlayout/core/utils/GridCore;->R0:F

    :cond_d
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->x0:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->x0:Ljava/lang/String;

    iget-object v2, v0, Landroidx/constraintlayout/core/utils/GridCore;->S0:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    iput-object v1, v0, Landroidx/constraintlayout/core/utils/GridCore;->S0:Ljava/lang/String;

    :cond_f
    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->y0:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->y0:Ljava/lang/String;

    iget-object v2, v0, Landroidx/constraintlayout/core/utils/GridCore;->T0:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_6

    :cond_10
    iput-object v1, v0, Landroidx/constraintlayout/core/utils/GridCore;->T0:Ljava/lang/String;

    :cond_11
    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->z0:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->z0:Ljava/lang/String;

    iget-object v3, v0, Landroidx/constraintlayout/core/utils/GridCore;->U0:Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_12
    iput-boolean v1, v0, Landroidx/constraintlayout/core/utils/GridCore;->L0:Z

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/core/utils/GridCore;->U0:Ljava/lang/String;

    :cond_13
    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->A0:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->A0:Ljava/lang/String;

    iget-object v3, v0, Landroidx/constraintlayout/core/utils/GridCore;->V0:Ljava/lang/String;

    if-eqz v3, :cond_14

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_14
    iput-boolean v1, v0, Landroidx/constraintlayout/core/utils/GridCore;->L0:Z

    iput-object v2, v0, Landroidx/constraintlayout/core/utils/GridCore;->V0:Ljava/lang/String;

    :cond_15
    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->B0:I

    iput v1, v0, Landroidx/constraintlayout/core/utils/GridCore;->b1:I

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->o0:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->A0:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->C0:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->D0:I

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->p0:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->B0:I

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->q0:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->y0:I

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->r0:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->z0:I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/HelperReference;->r()V

    return-void
.end method

.method public final s()Landroidx/constraintlayout/core/widgets/HelperWidget;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/utils/GridCore;

    invoke-direct {v0}, Landroidx/constraintlayout/core/utils/GridCore;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/core/state/helpers/GridReference;->n0:Landroidx/constraintlayout/core/utils/GridCore;

    return-object p0
.end method
