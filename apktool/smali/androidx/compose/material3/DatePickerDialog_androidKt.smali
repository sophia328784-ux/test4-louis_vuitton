.class public abstract Landroidx/compose/material3/DatePickerDialog_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final b:F

.field public static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v0, v2, v3, v1}, Landroidx/compose/foundation/layout/PaddingKt;->e(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/DatePickerDialog_androidKt;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sput v3, Landroidx/compose/material3/DatePickerDialog_androidKt;->b:F

    const/high16 v0, 0x41400000    # 12.0f

    sput v0, Landroidx/compose/material3/DatePickerDialog_androidKt;->c:F

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p2

    move/from16 v9, p9

    if-eqz v0, :cond_0

    const-string v1, "DatePickerDialog-GmEhDVc"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v3, v0

    const v0, 0xd18a3f1

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v0, v9, 0x6

    move-object/from16 v10, p0

    if-nez v0, :cond_2

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v9

    goto :goto_1

    :cond_2
    move v0, v9

    :goto_1
    and-int/lit8 v1, v9, 0x30

    move-object/from16 v2, p1

    if-nez v1, :cond_4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    goto :goto_2

    :cond_3
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_4
    and-int/lit16 v1, v9, 0x180

    if-nez v1, :cond_6

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x100

    goto :goto_3

    :cond_5
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_6
    and-int/lit16 v1, v9, 0xc00

    move-object/from16 v4, p3

    if-nez v1, :cond_8

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x800

    goto :goto_4

    :cond_7
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_8
    and-int/lit16 v1, v9, 0x6000

    if-nez v1, :cond_9

    or-int/lit16 v0, v0, 0x2000

    :cond_9
    const/high16 v1, 0x30000

    or-int/2addr v1, v0

    const/high16 v5, 0x180000

    and-int/2addr v5, v9

    if-nez v5, :cond_a

    const/high16 v1, 0xb0000

    or-int/2addr v1, v0

    :cond_a
    const/high16 v0, 0xc00000

    or-int/2addr v0, v1

    const/high16 v1, 0x6000000

    and-int/2addr v1, v9

    move-object/from16 v8, p7

    if-nez v1, :cond_c

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v1, 0x4000000

    goto :goto_5

    :cond_b
    const/high16 v1, 0x2000000

    :goto_5
    or-int/2addr v0, v1

    :cond_c
    const v1, 0x2492493

    and-int/2addr v1, v0

    const v5, 0x2492492

    if-eq v1, v5, :cond_d

    const/4 v1, 0x1

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v14, v5, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v1, v9, 0x1

    const v5, -0x38e001

    if-eqz v1, :cond_f

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/2addr v0, v5

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v12, p6

    goto :goto_8

    :cond_f
    :goto_7
    sget-object v1, Landroidx/compose/material3/DatePickerDefaults;->a:Landroidx/compose/material3/DatePickerDefaults;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/tokens/DatePickerModalTokens;->c:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v1, v14}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    sget-object v6, Landroidx/compose/material3/DatePickerDefaults;->a:Landroidx/compose/material3/DatePickerDefaults;

    invoke-static {v14}, Landroidx/compose/material3/DatePickerDefaults;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/DatePickerColors;

    move-result-object v6

    and-int/2addr v0, v5

    new-instance v15, Landroidx/compose/ui/window/DialogProperties;

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v20}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object v12, v15

    :goto_8
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v1, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v5, v1}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v11

    new-instance v15, Landroidx/compose/material3/DatePickerDialog_androidKt$DatePickerDialog$1;

    move-object/from16 v20, v2

    move-object/from16 v19, v4

    move-object/from16 v18, v8

    invoke-direct/range {v15 .. v20}, Landroidx/compose/material3/DatePickerDialog_androidKt$DatePickerDialog$1;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v1, 0x421948f7

    invoke-static {v1, v15, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    and-int/lit8 v1, v0, 0xe

    or-int/lit16 v1, v1, 0xc00

    shr-int/lit8 v0, v0, 0xf

    and-int/lit16 v0, v0, 0x380

    or-int v15, v1, v0

    invoke-static/range {v10 .. v15}, Landroidx/compose/material3/AlertDialogKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move-object v7, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_9

    :cond_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    :goto_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_11

    new-instance v0, Lfg;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lfg;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method
