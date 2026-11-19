.class public Landroidx/constraintlayout/core/state/ConstraintReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/state/Reference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/ConstraintReference$ConstraintReferenceFactory;
    }
.end annotation


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:F

.field public I:I

.field public J:Ljava/lang/Object;

.field public K:Ljava/lang/Object;

.field public L:Ljava/lang/Object;

.field public M:Ljava/lang/Object;

.field public N:Ljava/lang/Object;

.field public O:Ljava/lang/Object;

.field public P:Ljava/lang/Object;

.field public Q:Ljava/lang/Object;

.field public R:Ljava/lang/Object;

.field public S:Ljava/lang/Object;

.field public T:Landroidx/constraintlayout/core/state/ConstraintReference;

.field public U:Ljava/lang/Object;

.field public V:Ljava/lang/Object;

.field public W:Landroidx/constraintlayout/core/state/ConstraintReference;

.field public X:Ljava/lang/Object;

.field public Y:Ljava/lang/Object;

.field public Z:Ljava/lang/Object;

.field public a:Ljava/lang/Object;

.field public a0:Ljava/lang/Object;

.field public final b:Landroidx/constraintlayout/core/state/State;

.field public b0:F

.field public c:Landroidx/constraintlayout/core/state/helpers/Facade;

.field public c0:F

.field public d:I

.field public d0:Landroidx/constraintlayout/core/state/State$Constraint;

.field public e:I

.field public e0:Landroidx/constraintlayout/core/state/Dimension;

.field public f:F

.field public f0:Landroidx/constraintlayout/core/state/Dimension;

.field public g:F

.field public g0:Landroidx/compose/ui/layout/Measurable;

.field public h:F

.field public h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public i:F

.field public final i0:Ljava/util/HashMap;

.field public j:I

.field public j0:Ljava/util/HashMap;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->e:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->f:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->g:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->i:F

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->k:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->l:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->m:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->n:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->o:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->p:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->q:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->r:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->s:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->t:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->u:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->v:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->w:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->x:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->y:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->z:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->A:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->B:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->C:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->D:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->E:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->F:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->G:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->H:F

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->I:I

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->K:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->L:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->M:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->N:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->O:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Q:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->R:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->S:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->T:Landroidx/constraintlayout/core/state/ConstraintReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->U:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->V:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->W:Landroidx/constraintlayout/core/state/ConstraintReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->X:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Y:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Z:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->a0:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->i:Ljava/lang/String;

    iput-object v2, v0, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->e0:Landroidx/constraintlayout/core/state/Dimension;

    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->f0:Landroidx/constraintlayout/core/state/Dimension;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->i0:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j0:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->b:Landroidx/constraintlayout/core/state/State;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->g0:Landroidx/compose/ui/layout/Measurable;

    iput-object p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:Ljava/lang/Object;

    return-void
.end method

.method public apply()V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/constraintlayout/core/state/helpers/Facade;->apply()V

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->e0:Landroidx/constraintlayout/core/state/Dimension;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/state/Dimension;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->f0:Landroidx/constraintlayout/core/state/Dimension;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/core/state/Dimension;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->K:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->K:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->L:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->L:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->M:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->M:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->N:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->N:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->O:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->O:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Q:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Q:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->R:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->R:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->S:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->S:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->U:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->U:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->V:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->V:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->X:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->X:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Y:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Y:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Z:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Z:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->K:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->L:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->M:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->N:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->O:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Q:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->R:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->S:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->T:Landroidx/constraintlayout/core/state/ConstraintReference;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->U:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->V:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->W:Landroidx/constraintlayout/core/state/ConstraintReference;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->X:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Y:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Z:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->a0:Ljava/lang/Object;

    sget-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->CIRCULAR_CONSTRAINT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0, v0, v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:I

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->e:I

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:I

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[F

    aput v0, v4, v2

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->g:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[F

    aput v0, v1, v3

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h:F

    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->i:F

    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:F

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->x:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->f:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->y:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->g:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->z:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->h:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->A:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->i:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->B:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->j:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->C:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->k:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->D:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->l:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->E:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->m:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->G:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->n:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->H:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->o:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->F:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->p:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->I:I

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->q:I

    iput v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:I

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->i0:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->r:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/CustomVariable;

    iput v3, v2, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    goto :goto_0

    :cond_6
    new-instance v5, Landroidx/constraintlayout/core/motion/CustomVariable;

    const/16 v6, 0x386

    invoke-direct {v5, v2, v6, v3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j0:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j0:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget-object v3, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->r:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    iput v2, v1, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    goto :goto_1

    :cond_8
    new-instance v4, Landroidx/constraintlayout/core/motion/CustomVariable;

    const/16 v5, 0x385

    invoke-direct {v4, v1, v5, v2}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method public b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->e0:Landroidx/constraintlayout/core/state/Dimension;

    iget v1, v1, Landroidx/constraintlayout/core/state/Dimension;->d:I

    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->f0:Landroidx/constraintlayout/core/state/Dimension;

    iget v2, v2, Landroidx/constraintlayout/core/state/Dimension;->d:I

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(II)V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->g0:Landroidx/compose/ui/layout/Measurable;

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p0
.end method

.method public final c()Landroidx/constraintlayout/core/state/helpers/Facade;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    return-object p0
.end method

.method public final d(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V
    .locals 6

    instance-of v0, p2, Landroidx/constraintlayout/core/state/Reference;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/constraintlayout/core/state/Reference;

    invoke-interface {p2}, Landroidx/constraintlayout/core/state/Reference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    sget-object p2, Landroidx/constraintlayout/core/state/ConstraintReference$1;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, p2, v0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_2
    return-void

    :pswitch_0
    iget p2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->b0:F

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->c0:F

    float-to-int v4, p0

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v3, v1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    iput p2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:F

    return-void

    :pswitch_1
    move-object v0, p1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->v:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->w:I

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    return-void

    :pswitch_2
    move-object v0, p1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->v:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->w:I

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    return-void

    :pswitch_3
    move-object v0, p1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->v:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->w:I

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    return-void

    :pswitch_4
    move-object v0, p1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->o:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->u:I

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    return-void

    :pswitch_5
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->o:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->u:I

    invoke-virtual {p2, p1, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_6
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->o:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->u:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_7
    move-object v0, p1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->n:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->t:I

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    return-void

    :pswitch_8
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->n:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->t:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_9
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->n:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->t:I

    invoke-virtual {p2, p1, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_a
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->m:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->s:I

    invoke-virtual {p2, p1, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_b
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->m:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->s:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_c
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->l:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->r:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_d
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->l:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->r:I

    invoke-virtual {p2, p1, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_e
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->k:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->q:I

    invoke-virtual {p2, p1, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_f
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->k:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->q:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_10
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->p:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_11
    move-object v0, p1

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->p:I

    invoke-virtual {p2, p1, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->V:Ljava/lang/Object;

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Landroidx/constraintlayout/core/state/ConstraintReference$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->a0:Ljava/lang/Object;

    return-void

    :pswitch_2
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->X:Ljava/lang/Object;

    return-void

    :pswitch_3
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->U:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->V:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->W:Landroidx/constraintlayout/core/state/ConstraintReference;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->o:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->u:I

    return-void

    :pswitch_4
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->R:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->S:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->T:Landroidx/constraintlayout/core/state/ConstraintReference;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->n:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->t:I

    return-void

    :pswitch_5
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Q:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->m:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->s:I

    return-void

    :pswitch_6
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->N:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->O:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->l:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->r:I

    return-void

    :pswitch_7
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->L:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->M:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->k:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->q:I

    return-void

    :pswitch_8
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->K:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->p:I

    return-void

    :cond_0
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->K:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->L:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->M:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->k:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->N:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->O:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->l:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Q:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->m:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->R:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->S:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->n:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->U:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->V:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->o:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->X:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->a0:Ljava/lang/Object;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->h:F

    iput v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->i:F

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->p:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->q:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->r:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->s:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->t:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->u:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->N:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->L:Ljava/lang/Object;

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_3

    :cond_3
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->f()V

    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->R:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->f()V

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->U:Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->f()V

    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Q:Ljava/lang/Object;

    return-void
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/core/state/ConstraintReference;

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->b:Landroidx/constraintlayout/core/state/State;

    iget-object p0, p0, Landroidx/constraintlayout/core/state/State;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/Reference;

    return-object p0

    :cond_1
    return-object p1
.end method

.method public k(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/constraintlayout/core/state/ConstraintReference$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    int-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->c0:F

    return-object p0

    :pswitch_1
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->v:I

    return-object p0

    :pswitch_2
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->o:I

    return-object p0

    :pswitch_3
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->n:I

    return-object p0

    :pswitch_4
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->m:I

    return-object p0

    :pswitch_5
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->l:I

    return-object p0

    :pswitch_6
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->k:I

    return-object p0

    :pswitch_7
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j:I

    return-object p0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->k:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->l:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->m:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->n:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->o:I

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l(Ljava/lang/Float;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->b:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->c(Ljava/lang/Float;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->k(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object p0

    return-object p0
.end method

.method public final m(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/constraintlayout/core/state/ConstraintReference$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->w:I

    return-void

    :pswitch_1
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->u:I

    return-void

    :pswitch_2
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->t:I

    return-void

    :pswitch_3
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->s:I

    return-void

    :pswitch_4
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->r:I

    return-void

    :pswitch_5
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->q:I

    return-void

    :pswitch_6
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->p:I

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->p:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->q:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->r:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->s:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->t:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->u:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->b:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->c(Ljava/lang/Float;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->m(I)V

    return-void
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->N:Ljava/lang/Object;

    return-void
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->R:Ljava/lang/Object;

    return-void
.end method
