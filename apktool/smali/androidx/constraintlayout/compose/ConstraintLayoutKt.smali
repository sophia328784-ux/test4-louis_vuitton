.class public abstract Landroidx/constraintlayout/compose/ConstraintLayoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u000c\u0008\u0000\u0010\u0001\"\u00020\u00002\u00020\u0000*\u000c\u0008\u0000\u0010\u0003\"\u00020\u00022\u00020\u0002\u00a8\u0006\u0007\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/constraintlayout/core/state/Dimension;",
        "SolverDimension",
        "Landroidx/constraintlayout/core/state/State;",
        "SolverState",
        "Landroidx/constraintlayout/compose/ConstraintSet;",
        "startConstraint",
        "endConstraint",
        "constraintlayout-compose_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/constraintlayout/compose/State;Ljava/util/List;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroidx/constraintlayout/compose/ConstraintLayoutTagKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroidx/constraintlayout/compose/ConstraintLayoutKt$createId$1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-object v2, v4, Landroidx/constraintlayout/core/state/ConstraintReference;->g0:Landroidx/compose/ui/layout/Measurable;

    iget-object v4, v4, Landroidx/constraintlayout/core/state/ConstraintReference;->h0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v4, :cond_1

    iput-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:Ljava/lang/Object;

    :cond_1
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Landroidx/constraintlayout/compose/ConstraintLayoutTagParentData;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    check-cast v2, Landroidx/constraintlayout/compose/ConstraintLayoutTagParentData;

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroidx/constraintlayout/compose/ConstraintLayoutTagParentData;->b()Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_5

    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_5

    check-cast v3, Ljava/lang/String;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->e:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
