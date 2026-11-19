.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/LVDragHandleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "system"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDragHandleKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/graphics/Color;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    const v0, -0x1f3102d8

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, p5, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    or-int/lit8 v3, p4, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    move-object/from16 v3, p0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    or-int v4, p4, v4

    :goto_1
    and-int/lit8 v5, p5, 0x2

    const/16 v6, 0x20

    if-eqz v5, :cond_2

    or-int/lit8 v4, v4, 0x30

    move-object/from16 v7, p1

    goto :goto_3

    :cond_2
    move-object/from16 v7, p1

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :goto_3
    and-int/lit8 v8, p5, 0x4

    const/16 v9, 0x100

    if-eqz v8, :cond_4

    or-int/lit16 v4, v4, 0x180

    move-object/from16 v10, p2

    goto :goto_5

    :cond_4
    move-object/from16 v10, p2

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v9

    goto :goto_4

    :cond_5
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v4, v11

    :goto_5
    and-int/lit16 v11, v4, 0x93

    const/16 v12, 0x92

    const/4 v13, 0x0

    if-eq v11, v12, :cond_6

    const/4 v11, 0x1

    goto :goto_6

    :cond_6
    move v11, v13

    :goto_6
    and-int/lit8 v12, v4, 0x1

    invoke-virtual {v0, v12, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v11, 0x0

    if-eqz v1, :cond_7

    move-object v3, v11

    :cond_7
    if-eqz v5, :cond_8

    move-object v7, v11

    :cond_8
    if-eqz v8, :cond_9

    move-object v10, v11

    :cond_9
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez v3, :cond_a

    const v1, -0x16fb924e    # -1.0006014E25f

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_a
    const v1, -0x16fb985c    # -1.0004227E25f

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v14, v3, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_7
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "LVDragHandle-YCSmB94"

    invoke-direct {v1, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget v5, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDragHandleKt;->a:F

    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v5

    invoke-static {v1, v5}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v11, v2}, Landroidx/compose/foundation/FocusableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    and-int/lit8 v2, v4, 0x70

    if-ne v2, v6, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    move v2, v13

    :goto_8
    and-int/lit16 v4, v4, 0x380

    if-ne v4, v9, :cond_c

    const/4 v4, 0x1

    goto :goto_9

    :cond_c
    move v4, v13

    :goto_9
    or-int/2addr v2, v4

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_d

    if-ne v4, v5, :cond_e

    :cond_d
    new-instance v4, Lt50;

    invoke-direct {v4, v13, v7, v10}, Lt50;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x3

    invoke-static {v1, v11, v4, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v0, v14, v15}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_f

    if-ne v4, v5, :cond_10

    :cond_f
    new-instance v4, Lr5;

    const/4 v2, 0x5

    invoke-direct {v4, v14, v15, v2}, Lr5;-><init>(JI)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v4, v0, v13}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :goto_a
    move-object v15, v3

    move-object/from16 v16, v7

    move-object/from16 v17, v10

    goto :goto_b

    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_a

    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v14, Lv1;

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-direct/range {v14 .. v19}, Lv1;-><init>(Landroidx/compose/ui/graphics/Color;Ljava/lang/String;Lkotlin/jvm/functions/Function0;II)V

    iput-object v14, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method
