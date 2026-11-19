.class public abstract Lcom/vuitton/android/presentation/compose/components/LVDatePickerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/Long;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v0, p6

    if-eqz p0, :cond_0

    const-string v1, "LVDatePicker"

    invoke-static {p0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v1, p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, -0x56239351

    move-object/from16 v6, p5

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    and-int/lit8 p0, v0, 0x6

    if-nez p0, :cond_2

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    or-int/2addr p0, v0

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    and-int/lit8 v6, v0, 0x30

    if-nez v6, :cond_4

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    const/16 v6, 0x10

    :goto_2
    or-int/2addr p0, v6

    :cond_4
    and-int/lit16 v6, v0, 0x180

    if-nez v6, :cond_6

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_3

    :cond_5
    const/16 v6, 0x80

    :goto_3
    or-int/2addr p0, v6

    :cond_6
    and-int/lit16 v6, v0, 0xc00

    if-nez v6, :cond_8

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x800

    goto :goto_4

    :cond_7
    const/16 v6, 0x400

    :goto_4
    or-int/2addr p0, v6

    :cond_8
    and-int/lit16 v6, v0, 0x6000

    if-nez v6, :cond_a

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x4000

    goto :goto_5

    :cond_9
    const/16 v6, 0x2000

    :goto_5
    or-int/2addr p0, v6

    :cond_a
    and-int/lit16 v6, p0, 0x2493

    const/16 v7, 0x2492

    if-eq v6, v7, :cond_b

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    and-int/lit8 v7, p0, 0x1

    invoke-virtual {v13, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v3, :cond_c

    new-instance v6, Lkotlin/ranges/IntRange;

    sget-object v7, Landroidx/compose/material3/DatePickerDefaults;->b:Lkotlin/ranges/IntRange;

    iget v7, v7, Lkotlin/ranges/IntProgression;->b:I

    invoke-static {}, Ljava/time/Year;->now()Ljava/time/Year;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Year;->getValue()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lkotlin/ranges/IntRange;-><init>(II)V

    goto :goto_7

    :cond_c
    sget-object v6, Landroidx/compose/material3/DatePickerDefaults;->b:Lkotlin/ranges/IntRange;

    :goto_7
    if-eqz v3, :cond_d

    new-instance v7, Lcom/vuitton/android/presentation/compose/components/LVDatePickerKt$LVDatePicker$datePickerState$1;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    goto :goto_8

    :cond_d
    sget-object v7, Landroidx/compose/material3/DatePickerDefaults;->c:Landroidx/compose/material3/DatePickerDefaults$AllDates$1;

    :goto_8
    shr-int/lit8 v8, p0, 0x3

    const/16 v9, 0xe

    and-int/2addr v8, v9

    invoke-static {v2, v6, v7, v13, v8}, Landroidx/compose/material3/DatePickerKt;->p(Ljava/lang/Long;Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/DatePickerState;

    move-result-object v6

    new-instance v7, Lrv;

    invoke-direct {v7, v4, v6, v5, v9}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v8, -0x60821d23

    invoke-static {v8, v7, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    new-instance v8, Lkw;

    const/4 v10, 0x7

    invoke-direct {v8, v5, v10}, Lkw;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v10, 0x38b2739b

    invoke-static {v10, v8, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    new-instance v10, Ld3;

    const/16 v11, 0x19

    invoke-direct {v10, v6, v11}, Ld3;-><init>(Ljava/lang/Object;I)V

    const v6, -0x760a2c1a

    invoke-static {v6, v10, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    shr-int/lit8 v6, p0, 0xc

    and-int/2addr v6, v9

    const v9, 0x6000c30

    or-int/2addr v6, v9

    shl-int/lit8 p0, p0, 0x6

    and-int/lit16 p0, p0, 0x380

    or-int v14, v6, p0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v7

    move-object v7, v1

    invoke-static/range {v5 .. v14}, Landroidx/compose/material3/DatePickerDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_9

    :cond_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_f

    new-instance v0, Lj8;

    const/4 v7, 0x6

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lj8;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/Function;II)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
