.class final Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl$applyTo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

.field public final synthetic e:Landroidx/constraintlayout/compose/State;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;Landroidx/constraintlayout/compose/State;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl$applyTo$1;->c:Ljava/util/List;

    iput-object p2, p0, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl$applyTo$1;->d:Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    iput-object p3, p0, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl$applyTo$1;->e:Landroidx/constraintlayout/compose/State;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl$applyTo$1;->d:Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    iget-object v1, v0, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;->b:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    iget-object v2, p0, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl$applyTo$1;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroidx/constraintlayout/compose/ConstraintLayoutParentData;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    check-cast v6, Landroidx/constraintlayout/compose/ConstraintLayoutParentData;

    goto :goto_1

    :cond_0
    move-object v6, v8

    :goto_1
    if-eqz v6, :cond_4

    iget-object v7, v6, Landroidx/constraintlayout/compose/ConstraintLayoutParentData;->b:Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v7, Landroidx/constraintlayout/compose/ConstrainedLayoutReference;->b:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;->a:Landroidx/constraintlayout/core/parser/CLObject;

    invoke-virtual {v10, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->L(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v11

    instance-of v12, v11, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v12, :cond_1

    move-object v8, v11

    check-cast v8, Landroidx/constraintlayout/core/parser/CLObject;

    :cond_1
    if-nez v8, :cond_2

    new-instance v8, Landroidx/constraintlayout/core/parser/CLObject;

    new-array v11, v4, [C

    invoke-direct {v8, v11}, Landroidx/constraintlayout/core/parser/CLObject;-><init>([C)V

    invoke-virtual {v10, v9, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->R(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    :cond_2
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    instance-of v11, v8, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v11, :cond_3

    check-cast v8, Landroidx/constraintlayout/core/parser/CLObject;

    new-instance v9, Landroidx/constraintlayout/compose/ConstrainScope;

    iget-object v7, v7, Landroidx/constraintlayout/compose/ConstrainedLayoutReference;->b:Ljava/lang/Object;

    invoke-direct {v9, v7, v8}, Landroidx/constraintlayout/compose/ConstrainScope;-><init>(Ljava/lang/Object;Landroidx/constraintlayout/core/parser/CLObject;)V

    iget-object v7, v6, Landroidx/constraintlayout/compose/ConstraintLayoutParentData;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance p0, Landroidx/constraintlayout/core/parser/CLParsingException;

    const-string v0, "no object found for key <"

    const-string v1, ">, found ["

    invoke-static {v0, v9, v1}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw p0

    :cond_4
    :goto_2
    iget-object v7, v0, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, v1, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;->a:Landroidx/constraintlayout/core/parser/CLObject;

    new-instance v1, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;

    invoke-direct {v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;-><init>()V

    iget-object p0, p0, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl$applyTo$1;->e:Landroidx/constraintlayout/compose/State;

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->h(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
