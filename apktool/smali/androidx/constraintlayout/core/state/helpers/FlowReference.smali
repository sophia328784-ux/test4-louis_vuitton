.class public Landroidx/constraintlayout/core/state/helpers/FlowReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:I

.field public H0:I

.field public I0:F

.field public J0:F

.field public K0:F

.field public L0:F

.field public n0:Landroidx/constraintlayout/core/widgets/Flow;

.field public o0:Ljava/util/HashMap;

.field public p0:Ljava/util/HashMap;

.field public q0:Ljava/util/HashMap;

.field public r0:I

.field public s0:I

.field public t0:I

.field public u0:I

.field public v0:I

.field public w0:I

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->r0:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->s0:I

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->t0:I

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->u0:I

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->v0:I

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->w0:I

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->x0:I

    const/4 v1, 0x2

    iput v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->y0:I

    iput v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->z0:I

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->A0:I

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->B0:I

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->C0:I

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->D0:I

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->E0:I

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->F0:I

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->G0:I

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->H0:I

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->I0:F

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->J0:F

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->K0:F

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->L0:F

    sget-object p1, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_FLOW:Landroidx/constraintlayout/core/state/State$Helper;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->H0:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 5

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->s()Landroidx/constraintlayout/core/widgets/HelperWidget;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->n0:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->n0:Landroidx/constraintlayout/core/widgets/Flow;

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->H0:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->b1:I

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->r0:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->Z0:I

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->G0:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->a1:I

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->C0:I

    if-eqz v1, :cond_1

    iput v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->C0:I

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->E0:I

    if-eqz v1, :cond_2

    iput v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->y0:I

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->D0:I

    if-eqz v1, :cond_3

    iput v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->D0:I

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->F0:I

    if-eqz v1, :cond_4

    iput v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->z0:I

    :cond_4
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->B0:I

    if-eqz v1, :cond_5

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->V0:I

    :cond_5
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->A0:I

    if-eqz v1, :cond_6

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->W0:I

    :cond_6
    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_7

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->P0:F

    :cond_7
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->K0:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_8

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->R0:F

    :cond_8
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->L0:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_9

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->T0:F

    :cond_9
    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->i:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_a

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->Q0:F

    :cond_a
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->I0:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_b

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->S0:F

    :cond_b
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->J0:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_c

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->U0:F

    :cond_c
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->z0:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_d

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->X0:I

    :cond_d
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->y0:I

    if-eq v1, v3, :cond_e

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->Y0:I

    :cond_e
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->s0:I

    if-eq v1, v2, :cond_f

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->K0:I

    :cond_f
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->t0:I

    if-eq v1, v2, :cond_10

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->M0:I

    :cond_10
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->u0:I

    if-eq v1, v2, :cond_11

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->O0:I

    :cond_11
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->v0:I

    if-eq v1, v2, :cond_12

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->J0:I

    :cond_12
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->w0:I

    if-eq v1, v2, :cond_13

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->L0:I

    :cond_13
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->x0:I

    if-eq v1, v2, :cond_14

    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->N0:I

    :cond_14
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/HelperReference;->r()V

    return-void
.end method

.method public final s()Landroidx/constraintlayout/core/widgets/HelperWidget;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->n0:Landroidx/constraintlayout/core/widgets/Flow;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Flow;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->n0:Landroidx/constraintlayout/core/widgets/Flow;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->n0:Landroidx/constraintlayout/core/widgets/Flow;

    return-object p0
.end method
