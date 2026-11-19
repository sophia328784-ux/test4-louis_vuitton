.class public final synthetic Landroidx/compose/material3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic g:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic h:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic i:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic l:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic m:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic n:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic o:Z

.field public final synthetic p:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/q;->b:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    iput p2, p0, Landroidx/compose/material3/q;->c:I

    iput p3, p0, Landroidx/compose/material3/q;->d:I

    iput-object p4, p0, Landroidx/compose/material3/q;->e:Landroidx/compose/ui/layout/Placeable;

    iput-object p5, p0, Landroidx/compose/material3/q;->f:Landroidx/compose/ui/layout/Placeable;

    iput-object p6, p0, Landroidx/compose/material3/q;->g:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Landroidx/compose/material3/q;->h:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material3/q;->i:Landroidx/compose/ui/layout/Placeable;

    iput-object p9, p0, Landroidx/compose/material3/q;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p10, p0, Landroidx/compose/material3/q;->k:Landroidx/compose/ui/layout/Placeable;

    iput-object p11, p0, Landroidx/compose/material3/q;->l:Landroidx/compose/ui/layout/Placeable;

    iput-object p12, p0, Landroidx/compose/material3/q;->m:Landroidx/compose/ui/layout/Placeable;

    iput-object p13, p0, Landroidx/compose/material3/q;->n:Landroidx/compose/ui/layout/MeasureScope;

    iput-boolean p14, p0, Landroidx/compose/material3/q;->o:Z

    iput p15, p0, Landroidx/compose/material3/q;->p:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v2, v0, Landroidx/compose/material3/q;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    iget-object v2, v0, Landroidx/compose/material3/q;->n:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v2}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v3

    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    iget-object v5, v0, Landroidx/compose/material3/q;->b:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    iget v6, v5, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->f:F

    invoke-interface {v2, v6}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    iget-object v6, v5, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->c:Landroidx/compose/material3/TextFieldLabelPosition;

    iget-object v8, v5, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v9, v0, Landroidx/compose/material3/q;->o:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    if-eqz v7, :cond_0

    iget v11, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_0

    :cond_0
    move v11, v10

    :goto_0
    iget-object v12, v0, Landroidx/compose/material3/q;->l:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, v12, v10, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    iget-object v12, v0, Landroidx/compose/material3/q;->m:Landroidx/compose/ui/layout/Placeable;

    if-eqz v12, :cond_1

    iget v13, v12, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_1

    :cond_1
    move v13, v10

    :goto_1
    iget v14, v0, Landroidx/compose/material3/q;->c:I

    sub-int/2addr v14, v13

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    iget v13, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_2

    :cond_2
    move v13, v10

    :goto_2
    sub-int/2addr v14, v13

    invoke-interface {v8}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v13

    mul-float/2addr v13, v3

    invoke-static {v13}, Lkotlin/math/MathKt;->c(F)I

    move-result v13

    iget-object v15, v0, Landroidx/compose/material3/q;->e:Landroidx/compose/ui/layout/Placeable;

    if-eqz v15, :cond_3

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    move/from16 v16, v2

    iget v2, v15, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-virtual {v10, v2, v14}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    move-result v2

    add-int/2addr v2, v11

    const/4 v10, 0x0

    invoke-static {v1, v15, v10, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_3

    :cond_3
    move/from16 v16, v2

    :goto_3
    iget v2, v0, Landroidx/compose/material3/q;->d:I

    iget-object v10, v0, Landroidx/compose/material3/q;->f:Landroidx/compose/ui/layout/Placeable;

    if-eqz v7, :cond_e

    if-eqz v9, :cond_4

    move/from16 v17, v3

    move-object/from16 v18, v5

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    move/from16 v17, v3

    iget-boolean v3, v5, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->b:Z

    if-eqz v3, :cond_5

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    move-object/from16 v18, v5

    iget v5, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-virtual {v3, v5, v14}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    move-result v3

    goto :goto_4

    :cond_5
    move-object/from16 v18, v5

    move v3, v13

    :goto_4
    if-eqz v9, :cond_6

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v19, v6

    goto :goto_6

    :cond_6
    iget v5, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    div-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    goto :goto_5

    :goto_6
    iget v6, v0, Landroidx/compose/material3/q;->p:F

    invoke-static {v3, v5, v6}, Landroidx/compose/ui/util/MathHelpersKt;->c(IIF)I

    move-result v3

    const/4 v5, 0x0

    if-eqz v9, :cond_7

    invoke-static/range {v19 .. v19}, Landroidx/compose/material3/internal/TextFieldImplKt;->d(Landroidx/compose/material3/TextFieldLabelPosition;)Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v6

    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    invoke-interface {v6, v8, v2, v4}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v4

    invoke-virtual {v1, v7, v4, v3, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable;IIF)V

    move/from16 v20, v2

    goto/16 :goto_b

    :cond_7
    invoke-static {v8, v4}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v9

    mul-float v9, v9, v17

    invoke-static {v8, v4}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v8

    mul-float v8, v8, v17

    if-nez v15, :cond_8

    move/from16 v17, v5

    move v5, v9

    goto :goto_7

    :cond_8
    move/from16 v17, v5

    iget v5, v15, Landroidx/compose/ui/layout/Placeable;->b:I

    int-to-float v5, v5

    sub-float v20, v9, v16

    cmpg-float v21, v20, v17

    if-gez v21, :cond_9

    move/from16 v20, v17

    :cond_9
    add-float v5, v5, v20

    :goto_7
    if-nez v10, :cond_a

    move/from16 v20, v2

    move/from16 v16, v8

    goto :goto_8

    :cond_a
    move/from16 v20, v2

    iget v2, v10, Landroidx/compose/ui/layout/Placeable;->b:I

    int-to-float v2, v2

    sub-float v16, v8, v16

    cmpg-float v21, v16, v17

    if-gez v21, :cond_b

    move/from16 v16, v17

    :cond_b
    add-float v2, v2, v16

    move/from16 v16, v2

    :goto_8
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v4, v2, :cond_c

    move/from16 v21, v9

    goto :goto_9

    :cond_c
    move/from16 v21, v8

    :goto_9
    if-ne v4, v2, :cond_d

    move/from16 v22, v5

    goto :goto_a

    :cond_d
    move/from16 v22, v16

    :goto_a
    invoke-static/range {v19 .. v19}, Landroidx/compose/material3/internal/TextFieldImplKt;->c(Landroidx/compose/material3/TextFieldLabelPosition;)Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v2

    move/from16 v23, v5

    iget v5, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    add-float v16, v23, v16

    invoke-static/range {v16 .. v16}, Lkotlin/math/MathKt;->c(F)I

    move-result v16

    move/from16 v23, v8

    sub-int v8, v20, v16

    invoke-interface {v2, v5, v8, v4}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v22

    invoke-static/range {v19 .. v19}, Landroidx/compose/material3/internal/TextFieldImplKt;->d(Landroidx/compose/material3/TextFieldLabelPosition;)Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    add-float v9, v9, v23

    invoke-static {v9}, Lkotlin/math/MathKt;->c(F)I

    move-result v9

    sub-int v9, v20, v9

    invoke-interface {v5, v8, v9, v4}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v4

    int-to-float v4, v4

    add-float v4, v4, v21

    invoke-static {v2, v4, v6}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->c(F)I

    move-result v2

    move/from16 v4, v17

    invoke-virtual {v1, v7, v2, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable;IIF)V

    goto :goto_b

    :cond_e
    move/from16 v20, v2

    move-object/from16 v18, v5

    :goto_b
    iget-object v8, v0, Landroidx/compose/material3/q;->g:Landroidx/compose/ui/layout/Placeable;

    if-eqz v8, :cond_10

    if-eqz v15, :cond_f

    iget v2, v15, Landroidx/compose/ui/layout/Placeable;->b:I

    :goto_c
    move v3, v11

    move v6, v13

    move v5, v14

    move-object/from16 v4, v18

    goto :goto_d

    :cond_f
    const/4 v2, 0x0

    goto :goto_c

    :goto_d
    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->e(ILandroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v9

    invoke-static {v1, v8, v2, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_e

    :cond_10
    move v3, v11

    move v6, v13

    move v5, v14

    move-object/from16 v4, v18

    :goto_e
    if-eqz v15, :cond_11

    iget v2, v15, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_f

    :cond_11
    const/4 v2, 0x0

    :goto_f
    if-eqz v8, :cond_12

    iget v8, v8, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_10

    :cond_12
    const/4 v8, 0x0

    :goto_10
    add-int/2addr v2, v8

    iget-object v8, v0, Landroidx/compose/material3/q;->i:Landroidx/compose/ui/layout/Placeable;

    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->e(ILandroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v9

    invoke-static {v1, v8, v2, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    iget-object v8, v0, Landroidx/compose/material3/q;->k:Landroidx/compose/ui/layout/Placeable;

    if-eqz v8, :cond_13

    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->e(ILandroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v9

    invoke-static {v1, v8, v2, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_13
    iget-object v8, v0, Landroidx/compose/material3/q;->h:Landroidx/compose/ui/layout/Placeable;

    if-eqz v8, :cond_15

    if-eqz v10, :cond_14

    iget v0, v10, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_11

    :cond_14
    const/4 v0, 0x0

    :goto_11
    sub-int v2, v20, v0

    iget v0, v8, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int/2addr v2, v0

    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->e(ILandroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    invoke-static {v1, v8, v2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_15
    if-eqz v10, :cond_16

    iget v0, v10, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int v2, v20, v0

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget v4, v10, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v1, v10, v2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_16
    if-eqz v12, :cond_17

    add-int v11, v3, v5

    const/4 v10, 0x0

    invoke-static {v1, v12, v10, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
