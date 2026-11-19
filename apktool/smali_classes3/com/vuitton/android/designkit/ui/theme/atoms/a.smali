.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/atoms/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/util/List;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZLjava/lang/String;ZLjava/lang/String;ZLjava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->c:Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    iput-boolean p4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->e:Z

    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->f:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->g:Z

    iput-object p7, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->h:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->i:Z

    iput-object p9, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->j:Ljava/util/List;

    iput-object p10, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->k:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    move-object/from16 v11, p2

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_2

    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_0

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    or-int/2addr v2, v3

    :cond_2
    move/from16 v34, v2

    and-int/lit8 v2, v34, 0x13

    const/16 v3, 0x12

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    and-int/lit8 v3, v34, 0x1

    invoke-interface {v11, v3, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_4

    new-instance v2, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v2}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Landroidx/compose/ui/focus/FocusRequester;

    iget-object v4, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->c:Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v8, 0x0

    if-nez v5, :cond_5

    if-ne v6, v3, :cond_6

    :cond_5
    new-instance v6, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt$LVDropdown$6$1$1;

    invoke-direct {v6, v7, v4, v8}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt$LVDropdown$6$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v7, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "LVDropdown$lambda$6"

    invoke-direct {v5, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v9, "dropdown_value_text"

    invoke-static {v5, v9}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v2}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v5, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;->b:Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v5, v2

    iget-object v2, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;->d:Ljava/lang/String;

    const-string v9, "dropdown_title_text"

    invoke-static {v6, v9}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const-string v10, "dropdown_supporting_text"

    invoke-static {v6, v10}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;->a()Z

    move-result v10

    if-eqz v10, :cond_7

    const v10, -0x7a12e86e

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->G:I

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_7
    const v10, -0x7a11cd50    # -2.2400032E-35f

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->F:I

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v13, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v14, "dropdown_arrow_button"

    const/4 v15, 0x6

    invoke-static {v13, v14, v8, v15}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v26

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_8

    new-instance v8, Lx20;

    const/16 v13, 0x19

    invoke-direct {v8, v13}, Lx20;-><init>(I)V

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v32, 0x6

    const v33, 0x2eed800

    move-object v10, v4

    move-object v4, v5

    iget-object v5, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    move-object v13, v6

    iget-boolean v6, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->e:Z

    move-object/from16 v22, v7

    move-object v14, v3

    move-object v3, v8

    iget-object v8, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->f:Ljava/lang/String;

    move-object/from16 v16, v10

    iget-boolean v10, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->g:Z

    move-object/from16 v29, v11

    iget-object v11, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->h:Ljava/lang/String;

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move/from16 v20, v15

    const/4 v15, 0x1

    move-object/from16 v21, v16

    const/16 v16, 0x0

    move-object/from16 v23, v17

    const/16 v17, 0x0

    move-object/from16 v24, v19

    const/16 v19, 0x0

    move/from16 v25, v20

    const/16 v20, 0x0

    move-object/from16 v27, v21

    const/16 v21, 0x0

    move-object/from16 v28, v23

    const/16 v23, 0x0

    move-object/from16 v30, v24

    const/16 v24, 0x0

    move/from16 v31, v25

    const/16 v25, 0x0

    move-object/from16 v35, v27

    const/16 v27, 0x0

    iget-boolean v7, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->i:Z

    move-object/from16 v36, v30

    const v30, 0x30030

    move/from16 v37, v31

    const/16 v31, 0xc00

    move-object/from16 p1, v1

    move-object/from16 v1, v28

    move-object/from16 p2, v35

    move-object/from16 v0, v36

    move/from16 v28, v7

    const/4 v7, 0x1

    invoke-static/range {v2 .. v33}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILjava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;IIII)V

    move-object/from16 v11, v29

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-wide v3, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->t:J

    sget-object v1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v2, v3, v4, v1}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;->a()Z

    move-result v1

    move-object/from16 v6, p2

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_9

    if-ne v4, v0, :cond_a

    :cond_9
    new-instance v4, Lss;

    const/16 v0, 0x1b

    invoke-direct {v4, v6, v0}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v2, v4

    check-cast v2, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lr;

    const/16 v9, 0x10

    move-object/from16 v0, p0

    move-object v8, v5

    iget-object v5, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->j:Ljava/util/List;

    iget-object v7, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;->k:Lkotlin/jvm/functions/Function1;

    invoke-direct/range {v4 .. v9}, Lr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, 0x3323698b

    invoke-static {v0, v4, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    shl-int/lit8 v0, v34, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int v13, v37, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v13}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_b
    move-object/from16 v29, v11

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
