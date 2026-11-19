.class public Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;
.super Landroidx/constraintlayout/core/state/helpers/ChainReference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/helpers/ChainReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 12

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/state/HelperReference;->m0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, p0, Landroidx/constraintlayout/core/state/HelperReference;->k0:Landroidx/constraintlayout/core/state/State;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v7

    if-nez v4, :cond_5

    iget-object v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->N:Ljava/lang/Object;

    if-eqz v4, :cond_1

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->o(Ljava/lang/Object;)V

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->l:I

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->k(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    iget v8, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->r:I

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/state/ConstraintReference;->m(I)V

    goto :goto_2

    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->O:Ljava/lang/Object;

    if-eqz v4, :cond_2

    sget-object v8, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v8, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v4, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->O:Ljava/lang/Object;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->l:I

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->k(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    iget v8, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->r:I

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/state/ConstraintReference;->m(I)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    if-eqz v4, :cond_3

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->o(Ljava/lang/Object;)V

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j:I

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->k(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    iget v8, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->p:I

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/state/ConstraintReference;->m(I)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->K:Ljava/lang/Object;

    if-eqz v4, :cond_4

    sget-object v8, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v8, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v4, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->O:Ljava/lang/Object;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->j:I

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->k(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    iget v8, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->p:I

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/state/ConstraintReference;->m(I)V

    goto :goto_2

    :cond_4
    iget-object v4, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->o(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->w(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/state/ConstraintReference;->l(Ljava/lang/Float;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v8

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->v(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->n(Ljava/lang/Float;)V

    :goto_2
    move-object v4, v7

    :cond_5
    if-eqz v3, :cond_6

    iget-object v8, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    sget-object v11, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v11, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v10, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    invoke-virtual {p0, v8}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->u(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroidx/constraintlayout/core/state/ConstraintReference;->l(Ljava/lang/Float;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v10

    invoke-virtual {p0, v8}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->t(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroidx/constraintlayout/core/state/ConstraintReference;->n(Ljava/lang/Float;)V

    iget-object v3, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    sget-object v8, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v8, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v3, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->O:Ljava/lang/Object;

    invoke-virtual {p0, v9}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->w(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->l(Ljava/lang/Float;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v3

    invoke-virtual {p0, v9}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->v(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroidx/constraintlayout/core/state/ConstraintReference;->n(Ljava/lang/Float;)V

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->o0:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    if-eqz v8, :cond_7

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_3

    :cond_7
    move v3, v9

    :goto_3
    cmpl-float v6, v3, v9

    if-eqz v6, :cond_8

    iput v3, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->f:F

    :cond_8
    move-object v3, v7

    goto/16 :goto_1

    :cond_9
    if-eqz v3, :cond_e

    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    if-eqz v2, :cond_a

    sget-object v1, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v1, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->m:I

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->k(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->s:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->m(I)V

    goto :goto_4

    :cond_a
    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->Q:Ljava/lang/Object;

    if-eqz v2, :cond_b

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->i(Ljava/lang/Object;)V

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->m:I

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->k(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->s:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->m(I)V

    goto :goto_4

    :cond_b
    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->L:Ljava/lang/Object;

    if-eqz v2, :cond_c

    sget-object v1, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v1, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->P:Ljava/lang/Object;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->k:I

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->k(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->q:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->m(I)V

    goto :goto_4

    :cond_c
    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->M:Ljava/lang/Object;

    if-eqz v2, :cond_d

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->i(Ljava/lang/Object;)V

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->k:I

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->k(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->q:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->m(I)V

    goto :goto_4

    :cond_d
    iget-object v2, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->u(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->l(Ljava/lang/Float;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->t(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->n(Ljava/lang/Float;)V

    :cond_e
    :goto_4
    if-nez v4, :cond_f

    goto :goto_5

    :cond_f
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->n0:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_10

    iput v1, v4, Landroidx/constraintlayout/core/state/ConstraintReference;->h:F

    :cond_10
    sget-object v1, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference$1;->a:[I

    iget-object p0, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->t0:Landroidx/constraintlayout/core/state/State$Chain;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v1, 0x3

    if-eq p0, v1, :cond_11

    :goto_5
    return-void

    :cond_11
    iput v0, v4, Landroidx/constraintlayout/core/state/ConstraintReference;->d:I

    return-void

    :cond_12
    iput v1, v4, Landroidx/constraintlayout/core/state/ConstraintReference;->d:I

    return-void

    :cond_13
    iput v0, v4, Landroidx/constraintlayout/core/state/ConstraintReference;->d:I

    return-void
.end method
