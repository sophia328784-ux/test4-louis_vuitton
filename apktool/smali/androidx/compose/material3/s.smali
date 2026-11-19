.class public final synthetic Landroidx/compose/material3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/material3/TextFieldMeasurePolicy;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic l:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic m:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic n:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic o:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic p:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic q:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic r:F


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZLandroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/s;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, p0, Landroidx/compose/material3/s;->c:Z

    iput-object p3, p0, Landroidx/compose/material3/s;->d:Landroidx/compose/material3/TextFieldMeasurePolicy;

    iput p4, p0, Landroidx/compose/material3/s;->e:I

    iput p5, p0, Landroidx/compose/material3/s;->f:I

    iput-object p6, p0, Landroidx/compose/material3/s;->g:Landroidx/compose/ui/layout/MeasureScope;

    iput p7, p0, Landroidx/compose/material3/s;->h:I

    iput p8, p0, Landroidx/compose/material3/s;->i:I

    iput-object p9, p0, Landroidx/compose/material3/s;->j:Landroidx/compose/ui/layout/Placeable;

    iput-object p10, p0, Landroidx/compose/material3/s;->k:Landroidx/compose/ui/layout/Placeable;

    iput-object p11, p0, Landroidx/compose/material3/s;->l:Landroidx/compose/ui/layout/Placeable;

    iput-object p12, p0, Landroidx/compose/material3/s;->m:Landroidx/compose/ui/layout/Placeable;

    iput-object p13, p0, Landroidx/compose/material3/s;->n:Landroidx/compose/ui/layout/Placeable;

    iput-object p14, p0, Landroidx/compose/material3/s;->o:Landroidx/compose/ui/layout/Placeable;

    iput-object p15, p0, Landroidx/compose/material3/s;->p:Landroidx/compose/ui/layout/Placeable;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/compose/material3/s;->q:Landroidx/compose/ui/layout/Placeable;

    move/from16 p1, p17

    iput p1, p0, Landroidx/compose/material3/s;->r:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v2, v0, Landroidx/compose/material3/s;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/compose/material3/s;->d:Landroidx/compose/material3/TextFieldMeasurePolicy;

    iget-object v5, v0, Landroidx/compose/material3/s;->g:Landroidx/compose/ui/layout/MeasureScope;

    iget v6, v0, Landroidx/compose/material3/s;->h:I

    iget v7, v0, Landroidx/compose/material3/s;->i:I

    iget-object v8, v0, Landroidx/compose/material3/s;->j:Landroidx/compose/ui/layout/Placeable;

    iget-object v9, v0, Landroidx/compose/material3/s;->k:Landroidx/compose/ui/layout/Placeable;

    iget-object v10, v0, Landroidx/compose/material3/s;->l:Landroidx/compose/ui/layout/Placeable;

    iget-object v11, v0, Landroidx/compose/material3/s;->m:Landroidx/compose/ui/layout/Placeable;

    iget-object v12, v0, Landroidx/compose/material3/s;->n:Landroidx/compose/ui/layout/Placeable;

    iget-object v13, v0, Landroidx/compose/material3/s;->o:Landroidx/compose/ui/layout/Placeable;

    iget-object v14, v0, Landroidx/compose/material3/s;->p:Landroidx/compose/ui/layout/Placeable;

    iget-object v15, v0, Landroidx/compose/material3/s;->q:Landroidx/compose/ui/layout/Placeable;

    move-object/from16 p1, v3

    if-eqz p1, :cond_17

    iget-boolean v3, v0, Landroidx/compose/material3/s;->c:Z

    move/from16 v16, v3

    iget v3, v0, Landroidx/compose/material3/s;->f:I

    if-eqz v16, :cond_0

    move/from16 v17, v3

    move/from16 v18, v7

    move-object/from16 v19, v13

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move/from16 v17, v3

    iget-boolean v3, v4, Landroidx/compose/material3/TextFieldMeasurePolicy;->a:Z

    if-eqz v3, :cond_1

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    move/from16 v18, v7

    iget-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    iget v7, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    move-object/from16 v19, v13

    iget v13, v0, Landroidx/compose/material3/s;->e:I

    invoke-virtual {v3, v7, v13}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    move-result v3

    goto :goto_0

    :cond_1
    move/from16 v18, v7

    move-object/from16 v19, v13

    iget v3, v4, Landroidx/compose/material3/TextFieldMeasurePolicy;->e:F

    invoke-interface {v5, v3}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v3

    add-int v3, v3, v17

    :goto_0
    if-eqz v16, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move/from16 v7, v17

    :goto_1
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    if-eqz v16, :cond_3

    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    iget v13, v2, Landroidx/compose/ui/layout/Placeable;->c:I

    :goto_2
    add-int v13, v17, v13

    invoke-interface {v5}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    iget-object v4, v4, Landroidx/compose/material3/TextFieldMeasurePolicy;->b:Landroidx/compose/material3/TextFieldLabelPosition;

    move-object/from16 v17, v4

    if-eqz v16, :cond_4

    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->c:I

    :goto_3
    move/from16 v20, v13

    const/4 v13, 0x0

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :goto_4
    invoke-static {v1, v14, v13, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    if-eqz v15, :cond_5

    iget v13, v15, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    :goto_5
    sub-int v13, v18, v13

    if-eqz v16, :cond_6

    iget v14, v2, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    :goto_6
    sub-int/2addr v13, v14

    if-eqz v10, :cond_7

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    move/from16 v21, v4

    iget v4, v10, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-virtual {v14, v4, v13}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    move-result v4

    add-int v4, v4, v21

    const/4 v14, 0x0

    invoke-static {v1, v10, v14, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_7

    :cond_7
    move/from16 v21, v4

    :goto_7
    iget v0, v0, Landroidx/compose/material3/s;->r:F

    invoke-static {v3, v7, v0}, Landroidx/compose/ui/util/MathHelpersKt;->c(IIF)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v16, :cond_8

    invoke-static/range {v17 .. v17}, Landroidx/compose/material3/internal/TextFieldImplKt;->d(Landroidx/compose/material3/TextFieldLabelPosition;)Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    iget v7, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    invoke-interface {v0, v7, v6, v5}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable;IIF)V

    move/from16 v16, v6

    goto :goto_d

    :cond_8
    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v5, v7, :cond_a

    if-eqz v10, :cond_9

    iget v7, v10, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    goto :goto_8

    :cond_a
    if-eqz v11, :cond_9

    iget v7, v11, Landroidx/compose/ui/layout/Placeable;->b:I

    :goto_8
    invoke-static/range {v17 .. v17}, Landroidx/compose/material3/internal/TextFieldImplKt;->c(Landroidx/compose/material3/TextFieldLabelPosition;)Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v14

    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    move/from16 v16, v6

    if-eqz v10, :cond_b

    iget v6, v10, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_9
    sub-int v6, v16, v6

    move/from16 v18, v6

    if-eqz v11, :cond_c

    iget v6, v11, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_a

    :cond_c
    const/4 v6, 0x0

    :goto_a
    sub-int v6, v18, v6

    invoke-interface {v14, v4, v6, v5}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v4

    add-int/2addr v4, v7

    invoke-static/range {v17 .. v17}, Landroidx/compose/material3/internal/TextFieldImplKt;->d(Landroidx/compose/material3/TextFieldLabelPosition;)Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v6

    iget v14, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    move/from16 v17, v7

    if-eqz v10, :cond_d

    iget v7, v10, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_b

    :cond_d
    const/4 v7, 0x0

    :goto_b
    sub-int v7, v16, v7

    move/from16 v18, v7

    if-eqz v11, :cond_e

    iget v7, v11, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    :goto_c
    sub-int v7, v18, v7

    invoke-interface {v6, v14, v7, v5}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v5

    add-int v5, v5, v17

    invoke-static {v4, v5, v0}, Landroidx/compose/ui/util/MathHelpersKt;->c(IIF)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable;IIF)V

    :goto_d
    if-eqz v12, :cond_10

    if-eqz v10, :cond_f

    iget v0, v10, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_e

    :cond_f
    const/4 v0, 0x0

    :goto_e
    add-int v4, v21, v20

    invoke-static {v1, v12, v0, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_10
    if-eqz v10, :cond_11

    iget v0, v10, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_f

    :cond_11
    const/4 v0, 0x0

    :goto_f
    if-eqz v12, :cond_12

    iget v2, v12, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_10

    :cond_12
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    add-int v4, v21, v20

    invoke-static {v1, v8, v0, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    if-eqz v9, :cond_13

    invoke-static {v1, v9, v0, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_13
    if-eqz v19, :cond_15

    if-eqz v11, :cond_14

    iget v0, v11, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_11

    :cond_14
    const/4 v0, 0x0

    :goto_11
    sub-int v6, v16, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int/2addr v6, v2

    invoke-static {v1, v0, v6, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_15
    if-eqz v11, :cond_16

    iget v0, v11, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int v6, v16, v0

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget v2, v11, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-virtual {v0, v2, v13}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    move-result v0

    add-int v0, v0, v21

    invoke-static {v1, v11, v6, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_16
    if-eqz v15, :cond_22

    add-int v4, v21, v13

    const/4 v14, 0x0

    invoke-static {v1, v15, v14, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto/16 :goto_17

    :cond_17
    move/from16 v16, v6

    move/from16 v18, v7

    move-object v0, v13

    invoke-interface {v5}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v2

    sget-object v3, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x0

    invoke-static {v1, v14, v5, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->u(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    if-eqz v15, :cond_18

    iget v3, v15, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_12

    :cond_18
    const/4 v3, 0x0

    :goto_12
    sub-int v7, v18, v3

    iget-object v3, v4, Landroidx/compose/material3/TextFieldMeasurePolicy;->d:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v3}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Lkotlin/math/MathKt;->c(F)I

    move-result v2

    if-eqz v10, :cond_19

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget v5, v10, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-virtual {v3, v5, v7}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    move-result v3

    const/4 v14, 0x0

    invoke-static {v1, v10, v14, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_19
    if-eqz v12, :cond_1b

    if-eqz v10, :cond_1a

    iget v13, v10, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_13

    :cond_1a
    const/4 v13, 0x0

    :goto_13
    invoke-static {v4, v7, v2, v12}, Landroidx/compose/material3/TextFieldMeasurePolicy;->d(Landroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v1, v12, v13, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_1b
    if-eqz v10, :cond_1c

    iget v13, v10, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_14

    :cond_1c
    const/4 v13, 0x0

    :goto_14
    if-eqz v12, :cond_1d

    iget v3, v12, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_15

    :cond_1d
    const/4 v3, 0x0

    :goto_15
    add-int/2addr v13, v3

    invoke-static {v4, v7, v2, v8}, Landroidx/compose/material3/TextFieldMeasurePolicy;->d(Landroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v1, v8, v13, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    if-eqz v9, :cond_1e

    invoke-static {v4, v7, v2, v9}, Landroidx/compose/material3/TextFieldMeasurePolicy;->d(Landroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v1, v9, v13, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_1e
    if-eqz v0, :cond_20

    if-eqz v11, :cond_1f

    iget v13, v11, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_16

    :cond_1f
    const/4 v13, 0x0

    :goto_16
    sub-int v6, v16, v13

    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int/2addr v6, v3

    invoke-static {v4, v7, v2, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->d(Landroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;)I

    move-result v2

    invoke-static {v1, v0, v6, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_20
    if-eqz v11, :cond_21

    iget v0, v11, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int v6, v16, v0

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget v2, v11, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    move-result v0

    invoke-static {v1, v11, v6, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_21
    if-eqz v15, :cond_22

    const/4 v14, 0x0

    invoke-static {v1, v15, v14, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_22
    :goto_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
