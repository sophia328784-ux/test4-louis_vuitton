.class public final synthetic Landroidx/compose/material3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:I

.field public final synthetic g:Lkotlin/jvm/functions/Function2;

.field public final synthetic h:Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/r;->b:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Landroidx/compose/material3/r;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/r;->d:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material3/r;->e:Lkotlin/jvm/functions/Function2;

    iput p5, p0, Landroidx/compose/material3/r;->f:I

    iput-object p6, p0, Landroidx/compose/material3/r;->g:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Landroidx/compose/material3/r;->h:Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    iput-object p8, p0, Landroidx/compose/material3/r;->i:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    sget v2, Landroidx/compose/material3/ScaffoldKt;->a:F

    iget-wide v3, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v4

    iget-wide v7, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v7

    iget-wide v8, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    const/4 v13, 0x0

    const/16 v14, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v8

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    iget-object v5, v0, Landroidx/compose/material3/r;->b:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {v5, v6, v1}, Landroidx/compose/foundation/layout/WindowInsets;->d(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v1

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Landroidx/compose/foundation/layout/WindowInsets;->b(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v3

    invoke-interface {v5, v6}, Landroidx/compose/foundation/layout/WindowInsets;->c(Landroidx/compose/ui/unit/Density;)I

    move-result v10

    sget-object v11, Landroidx/compose/material3/ScaffoldLayoutContent;->TopBar:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v12, v0, Landroidx/compose/material3/r;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v11, v12}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->N(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v11, v8, v9}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v11

    sget-object v12, Landroidx/compose/material3/ScaffoldLayoutContent;->Snackbar:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v13, v0, Landroidx/compose/material3/r;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v12, v13}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->N(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    neg-int v13, v1

    sub-int/2addr v13, v3

    neg-int v10, v10

    invoke-static {v13, v10, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    move-result-wide v14

    invoke-interface {v12, v14, v15}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v12

    sget-object v14, Landroidx/compose/material3/ScaffoldLayoutContent;->Fab:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v15, v0, Landroidx/compose/material3/r;->e:Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v14, v15}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->N(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    move/from16 p2, v3

    move/from16 p1, v4

    invoke-static {v13, v10, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    move-result-wide v3

    invoke-interface {v14, v3, v4}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    iget v4, v3, Landroidx/compose/ui/layout/Placeable;->b:I

    iget v10, v0, Landroidx/compose/material3/r;->f:I

    if-nez v4, :cond_0

    iget v14, v3, Landroidx/compose/ui/layout/Placeable;->c:I

    if-nez v14, :cond_0

    const/4 v1, 0x0

    goto :goto_4

    :cond_0
    iget v14, v3, Landroidx/compose/ui/layout/Placeable;->c:I

    sget-object v15, Landroidx/compose/material3/FabPosition;->a:Landroidx/compose/material3/FabPosition$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v10, :cond_2

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v15

    sget-object v13, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v15, v13, :cond_1

    invoke-interface {v6, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v13

    :goto_0
    add-int/2addr v13, v1

    goto :goto_3

    :cond_1
    invoke-interface {v6, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v1

    :goto_1
    sub-int v1, p1, v1

    sub-int/2addr v1, v4

    sub-int v13, v1, p2

    goto :goto_3

    :cond_2
    sget v13, Landroidx/compose/material3/FabPosition;->b:I

    if-ne v10, v13, :cond_3

    goto :goto_2

    :cond_3
    sget v13, Landroidx/compose/material3/FabPosition;->c:I

    if-ne v10, v13, :cond_5

    :goto_2
    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v13

    sget-object v15, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v13, v15, :cond_4

    invoke-interface {v6, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-interface {v6, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v13

    goto :goto_0

    :cond_5
    sub-int v13, p1, v4

    add-int/2addr v13, v1

    sub-int v13, v13, p2

    div-int/lit8 v13, v13, 0x2

    :goto_3
    new-instance v1, Landroidx/compose/material3/FabPlacement;

    invoke-direct {v1, v13, v4, v14}, Landroidx/compose/material3/FabPlacement;-><init>(III)V

    :goto_4
    sget-object v4, Landroidx/compose/material3/ScaffoldLayoutContent;->BottomBar:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v13, v0, Landroidx/compose/material3/r;->g:Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v4, v13}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->N(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v4, v8, v9}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    iget v13, v4, Landroidx/compose/ui/layout/Placeable;->b:I

    if-nez v13, :cond_6

    iget v13, v4, Landroidx/compose/ui/layout/Placeable;->c:I

    if-nez v13, :cond_6

    const/4 v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    if-eqz v1, :cond_9

    iget v15, v1, Landroidx/compose/material3/FabPlacement;->b:I

    if-nez v13, :cond_8

    sget-object v17, Landroidx/compose/material3/FabPosition;->a:Landroidx/compose/material3/FabPosition$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v14, Landroidx/compose/material3/FabPosition;->c:I

    if-ne v10, v14, :cond_7

    goto :goto_6

    :cond_7
    iget v10, v4, Landroidx/compose/ui/layout/Placeable;->c:I

    add-int/2addr v10, v15

    invoke-interface {v6, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v2

    add-int/2addr v2, v10

    goto :goto_7

    :cond_8
    :goto_6
    invoke-interface {v6, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v2

    add-int/2addr v2, v15

    invoke-interface {v5, v6}, Landroidx/compose/foundation/layout/WindowInsets;->c(Landroidx/compose/ui/unit/Density;)I

    move-result v10

    add-int/2addr v2, v10

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_8
    iget v10, v12, Landroidx/compose/ui/layout/Placeable;->c:I

    if-eqz v10, :cond_d

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_a

    :cond_a
    iget v14, v4, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-nez v13, :cond_b

    goto :goto_9

    :cond_b
    const/4 v14, 0x0

    :goto_9
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_a

    :cond_c
    invoke-interface {v5, v6}, Landroidx/compose/foundation/layout/WindowInsets;->c(Landroidx/compose/ui/unit/Density;)I

    move-result v14

    :goto_a
    add-int/2addr v14, v10

    goto :goto_b

    :cond_d
    const/4 v14, 0x0

    :goto_b
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/WindowInsetsKt;->f(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v10

    iget v15, v11, Landroidx/compose/ui/layout/Placeable;->b:I

    if-nez v15, :cond_e

    iget v15, v11, Landroidx/compose/ui/layout/Placeable;->c:I

    if-nez v15, :cond_e

    invoke-interface {v10}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v15

    goto :goto_c

    :cond_e
    iget v15, v11, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-interface {v6, v15}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v15

    :goto_c
    if-eqz v13, :cond_f

    invoke-interface {v10}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v13

    :goto_d
    move-object/from16 p2, v1

    goto :goto_e

    :cond_f
    iget v13, v4, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-interface {v6, v13}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v13

    goto :goto_d

    :goto_e
    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-static {v10, v1}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    move-object/from16 v16, v2

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v10, v2}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-static {v1, v15, v2, v13}, Landroidx/compose/foundation/layout/PaddingKt;->d(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/r;->h:Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    iget-object v2, v2, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;->a:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/material3/ScaffoldLayoutContent;->MainContent:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v0, v0, Landroidx/compose/material3/r;->i:Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v1, v0}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->N(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v0, v8, v9}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    new-instance v0, Lbu0;

    move-object/from16 v10, p2

    move-object v9, v4

    move-object v2, v11

    move v8, v14

    move/from16 v4, p1

    move-object v11, v3

    move-object v3, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lbu0;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/FabPlacement;Landroidx/compose/ui/layout/Placeable;Ljava/lang/Integer;)V

    invoke-static {v6, v4, v7, v0}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
