.class public Landroidx/constraintlayout/core/state/HelperReference;
.super Landroidx/constraintlayout/core/state/ConstraintReference;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/state/helpers/Facade;


# instance fields
.field public final k0:Landroidx/constraintlayout/core/state/State;

.field public final l0:Landroidx/constraintlayout/core/state/State$Helper;

.field public final m0:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/HelperReference;->m0:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/HelperReference;->k0:Landroidx/constraintlayout/core/state/State;

    iput-object p2, p0, Landroidx/constraintlayout/core/state/HelperReference;->l0:Landroidx/constraintlayout/core/state/State$Helper;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    return-void
.end method

.method public final b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/HelperReference;->s()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object p0

    return-object p0
.end method

.method public final varargs q([Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/HelperReference;->m0:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final r()V
    .locals 0

    invoke-super {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->apply()V

    return-void
.end method

.method public s()Landroidx/constraintlayout/core/widgets/HelperWidget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
