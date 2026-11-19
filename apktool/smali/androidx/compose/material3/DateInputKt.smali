.class public abstract Landroidx/compose/material3/DateInputKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "text",
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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3, v2, v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->e(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/DateInputKt;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/high16 v0, 0x41800000    # 16.0f

    sput v0, Landroidx/compose/material3/DateInputKt;->b:F

    return-void
.end method

.method public static final a(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    const v0, -0x19c50103

    move-object/from16 v2, p8

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p9, v0

    move-object/from16 v2, p1

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    move-object/from16 v13, p3

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_3

    :cond_3
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v0, v4

    move-object/from16 v5, p4

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x4000

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_4

    :cond_4
    const/16 v4, 0x2000

    :goto_4
    or-int/2addr v0, v4

    move-object/from16 v14, p5

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v4, 0x10000

    :goto_5
    or-int/2addr v0, v4

    move-object/from16 v7, p6

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v4, 0x80000

    :goto_6
    or-int/2addr v0, v4

    move-object/from16 v8, p7

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v4, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v4, 0x400000

    :goto_7
    or-int/2addr v0, v4

    const v4, 0x492493

    and-int/2addr v4, v0

    const v9, 0x492492

    const/4 v12, 0x1

    if-eq v4, v9, :cond_8

    move v4, v12

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    and-int/lit8 v9, v0, 0x1

    invoke-virtual {v11, v9, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v3, Landroidx/compose/material3/internal/CalendarModel;->a:Ljava/util/Locale;

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_9

    if-ne v9, v15, :cond_a

    :cond_9
    iget-object v4, v3, Landroidx/compose/material3/internal/CalendarModel;->a:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroidx/compose/material3/internal/CalendarModel;->b(Ljava/util/Locale;)Landroidx/compose/material3/internal/DateInputFormat;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v9, Landroidx/compose/material3/internal/DateInputFormat;

    sget v4, Landroidx/compose/material3/internal/Strings;->a:I

    const v4, 0x7f140bba

    invoke-static {v11, v4}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    const v4, 0x7f140bbc

    invoke-static {v11, v4}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v18

    const v4, 0x7f140bbb

    invoke-static {v11, v4}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const v16, 0xe000

    and-int v10, v0, v16

    if-eq v10, v6, :cond_b

    const/4 v10, 0x0

    goto :goto_9

    :cond_b
    move v10, v12

    :goto_9
    or-int/2addr v4, v10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_d

    if-ne v6, v15, :cond_c

    goto :goto_a

    :cond_c
    move-object v15, v9

    goto :goto_b

    :cond_d
    :goto_a
    new-instance v12, Landroidx/compose/material3/DateInputValidator;

    const-string v20, ""

    move-object/from16 v16, v5

    move-object v15, v9

    invoke-direct/range {v12 .. v20}, Landroidx/compose/material3/DateInputValidator;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v12

    :goto_b
    check-cast v6, Landroidx/compose/material3/DateInputValidator;

    iget-object v4, v15, Landroidx/compose/material3/internal/DateInputFormat;->a:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x7f140bbd

    invoke-static {v11, v5}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "DateInputContent"

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/material3/DateInputKt;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/material3/InputIdentifier;->a:Landroidx/compose/material3/InputIdentifier$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v6, Landroidx/compose/material3/DateInputValidator;->i:Ljava/lang/Long;

    iget-object v8, v3, Landroidx/compose/material3/internal/CalendarModel;->a:Ljava/util/Locale;

    new-instance v10, Landroidx/compose/material3/DateInputKt$DateInputContent$2;

    invoke-direct {v10, v5, v4}, Landroidx/compose/material3/DateInputKt$DateInputContent$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v5, -0x2cd51ec5

    invoke-static {v5, v10, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    new-instance v10, Landroidx/compose/material3/DateInputKt$DateInputContent$3;

    invoke-direct {v10, v4}, Landroidx/compose/material3/DateInputKt$DateInputContent$3;-><init>(Ljava/lang/String;)V

    const v4, -0x464cbd26

    invoke-static {v4, v10, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    shl-int/lit8 v10, v0, 0x3

    and-int/lit8 v12, v10, 0x70

    const v13, 0x1b6006

    or-int/2addr v12, v13

    and-int/lit16 v13, v10, 0x380

    or-int/2addr v12, v13

    and-int/lit16 v10, v10, 0x1c00

    or-int/2addr v12, v10

    shr-int/lit8 v0, v0, 0x12

    and-int/lit8 v13, v0, 0x7e

    move-object v0, v5

    move-object v5, v4

    move-object v4, v0

    move-object/from16 v10, p7

    move-object v0, v9

    move-object v9, v7

    move-object v7, v15

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/DateInputKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/Composer;II)V

    goto :goto_c

    :cond_e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_f

    new-instance v0, Lq8;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lq8;-><init>(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/Composer;II)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v3, p7

    move-object/from16 v7, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p12

    const-string v1, "DateInputTextField-xJ3Ic0Y"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v5, 0x56cd8699

    move-object/from16 v6, p11

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    and-int/lit8 v6, v13, 0x6

    if-nez v6, :cond_2

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v13

    goto :goto_1

    :cond_2
    move v6, v13

    :goto_1
    and-int/lit8 v10, v13, 0x30

    const/16 v14, 0x10

    if-nez v10, :cond_4

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    goto :goto_2

    :cond_3
    move v10, v14

    :goto_2
    or-int/2addr v6, v10

    :cond_4
    and-int/lit16 v10, v13, 0x180

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x100

    goto :goto_3

    :cond_5
    const/16 v16, 0x80

    :goto_3
    or-int v6, v6, v16

    goto :goto_4

    :cond_6
    move-object/from16 v10, p2

    :goto_4
    and-int/lit16 v8, v13, 0xc00

    if-nez v8, :cond_8

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x800

    goto :goto_5

    :cond_7
    const/16 v8, 0x400

    :goto_5
    or-int/2addr v6, v8

    :cond_8
    and-int/lit16 v8, v13, 0x6000

    if-nez v8, :cond_a

    move-object/from16 v8, p4

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x4000

    goto :goto_6

    :cond_9
    const/16 v16, 0x2000

    :goto_6
    or-int v6, v6, v16

    goto :goto_7

    :cond_a
    move-object/from16 v8, p4

    :goto_7
    const/high16 v16, 0x30000

    and-int v16, v13, v16

    move-object/from16 v9, p5

    if-nez v16, :cond_c

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_b
    const/high16 v16, 0x10000

    :goto_8
    or-int v6, v6, v16

    :cond_c
    const/high16 v16, 0x180000

    and-int v16, v13, v16

    const/4 v9, 0x0

    move-object/from16 v21, v0

    if-nez v16, :cond_e

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/high16 v16, 0x100000

    goto :goto_9

    :cond_d
    const/high16 v16, 0x80000

    :goto_9
    or-int v6, v6, v16

    :cond_e
    const/high16 v16, 0xc00000

    and-int v16, v13, v16

    move-object/from16 v0, p6

    if-nez v16, :cond_10

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x800000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x400000

    :goto_a
    or-int v6, v6, v16

    :cond_10
    const/high16 v16, 0x6000000

    and-int v16, v13, v16

    if-nez v16, :cond_12

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x4000000

    goto :goto_b

    :cond_11
    const/high16 v16, 0x2000000

    :goto_b
    or-int v6, v6, v16

    :cond_12
    const/high16 v16, 0x30000000

    and-int v16, v13, v16

    if-nez v16, :cond_14

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x20000000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x10000000

    :goto_c
    or-int v6, v6, v16

    :cond_14
    and-int/lit8 v16, p13, 0x6

    if-nez v16, :cond_16

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    const/16 v16, 0x4

    goto :goto_d

    :cond_15
    const/16 v16, 0x2

    :goto_d
    or-int v16, p13, v16

    goto :goto_e

    :cond_16
    move/from16 v16, p13

    :goto_e
    and-int/lit8 v17, p13, 0x30

    if-nez v17, :cond_18

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    const/16 v14, 0x20

    :cond_17
    or-int v16, v16, v14

    :cond_18
    move/from16 v33, v16

    const v14, 0x12492493

    and-int/2addr v14, v6

    const v15, 0x12492492

    const/16 v34, 0x1

    if-ne v14, v15, :cond_1a

    and-int/lit8 v14, v33, 0x13

    const/16 v15, 0x12

    if-eq v14, v15, :cond_19

    goto :goto_f

    :cond_19
    const/4 v14, 0x0

    goto :goto_10

    :cond_1a
    :goto_f
    move/from16 v14, v34

    :goto_10
    and-int/lit8 v15, v6, 0x1

    invoke-virtual {v5, v15, v14}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v14

    if-eqz v14, :cond_32

    sget-object v14, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    sget-object v14, Landroidx/compose/ui/text/input/TextFieldValue;->d:Landroidx/compose/ui/text/input/TextFieldValue$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/text/input/TextFieldValue;->e:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v0, :cond_1b

    new-instance v9, Liq;

    const/16 v2, 0x15

    invoke-direct {v9, v2}, Liq;-><init>(I)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v16, v9

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    invoke-static {v15, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lll0;

    const/4 v2, 0x7

    invoke-direct {v15, v14, v2}, Lll0;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lxo0;

    invoke-direct {v3, v14, v2}, Lxo0;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v15, v3}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    const/16 v18, 0xd80

    const/16 v19, 0x0

    move-object v15, v2

    move-object/from16 v17, v5

    move-object v14, v9

    const/16 v2, 0x20

    invoke-static/range {v14 .. v19}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v14, v17

    move-object v5, v3

    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/input/TextFieldValue;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v9, 0x1c00000

    and-int/2addr v9, v6

    const/high16 v2, 0x800000

    if-ne v9, v2, :cond_1c

    move/from16 v2, v34

    goto :goto_11

    :cond_1c
    const/4 v2, 0x0

    :goto_11
    or-int/2addr v2, v3

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    const/high16 v3, 0xe000000

    and-int/2addr v3, v6

    move/from16 v16, v2

    const/high16 v2, 0x4000000

    if-ne v3, v2, :cond_1d

    move/from16 v17, v34

    goto :goto_12

    :cond_1d
    const/16 v17, 0x0

    :goto_12
    or-int v16, v16, v17

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    const/high16 v17, 0x380000

    and-int v2, v6, v17

    move/from16 v17, v3

    const/high16 v3, 0x100000

    if-ne v2, v3, :cond_1e

    move/from16 v3, v34

    goto :goto_13

    :cond_1e
    const/4 v3, 0x0

    :goto_13
    or-int v3, v16, v3

    move/from16 v16, v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v16, :cond_20

    if-ne v3, v0, :cond_1f

    goto :goto_14

    :cond_1f
    move/from16 v35, v6

    move/from16 v36, v9

    move/from16 v37, v17

    const/4 v13, 0x0

    goto :goto_15

    :cond_20
    :goto_14
    new-instance v3, Lyh;

    move/from16 v16, v9

    const/4 v9, 0x3

    move-object v8, v5

    move/from16 v35, v6

    move/from16 v36, v16

    move/from16 v37, v17

    const/4 v13, 0x0

    move-object/from16 v6, p7

    move-object v5, v4

    move-object/from16 v4, p6

    invoke-direct/range {v3 .. v9}, Lyh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v4, v5

    move-object v5, v8

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v15, v3, v14, v13}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v6

    sget v8, Landroidx/compose/material3/DateInputKt;->b:F

    if-eqz v6, :cond_21

    :goto_16
    move v15, v8

    goto :goto_17

    :cond_21
    sget v6, Landroidx/compose/material3/TextFieldDefaults;->a:I

    invoke-static {}, Landroidx/compose/material3/TextFieldDefaults;->a()Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v6

    iget v9, v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;->d:F

    iget v6, v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;->b:F

    add-float/2addr v9, v6

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sub-float/2addr v8, v9

    goto :goto_16

    :goto_17
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Landroidx/compose/ui/text/input/TextFieldValue;

    move/from16 v6, v37

    const/high16 v8, 0x4000000

    if-ne v6, v8, :cond_22

    move/from16 v9, v34

    goto :goto_18

    :cond_22
    move v9, v13

    :goto_18
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    or-int v9, v9, v17

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    or-int v9, v9, v17

    move/from16 v13, v35

    and-int/lit16 v8, v13, 0x380

    move-object/from16 v17, v3

    const/16 v3, 0x100

    if-ne v8, v3, :cond_23

    move/from16 v3, v34

    goto :goto_19

    :cond_23
    const/4 v3, 0x0

    :goto_19
    or-int/2addr v3, v9

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    move/from16 v8, v36

    const/high16 v9, 0x800000

    if-ne v8, v9, :cond_24

    move/from16 v9, v34

    goto :goto_1a

    :cond_24
    const/4 v9, 0x0

    :goto_1a
    or-int/2addr v3, v9

    const/high16 v8, 0x100000

    if-ne v2, v8, :cond_25

    move/from16 v9, v34

    goto :goto_1b

    :cond_25
    const/4 v9, 0x0

    :goto_1b
    or-int v2, v3, v9

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_27

    if-ne v3, v0, :cond_26

    goto :goto_1c

    :cond_26
    move-object/from16 v10, p7

    move-object v9, v4

    move v2, v6

    move/from16 v35, v13

    const/high16 v13, 0x4000000

    goto :goto_1d

    :cond_27
    :goto_1c
    new-instance v3, Lnk;

    move-object/from16 v9, p6

    move v2, v6

    move-object v8, v7

    move-object v6, v10

    move/from16 v35, v13

    const/high16 v13, 0x4000000

    move-object v7, v4

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v4, p7

    invoke-direct/range {v3 .. v10}, Lnk;-><init>(Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Ljava/util/Locale;Landroidx/compose/material3/DateInputValidator;Landroidx/compose/runtime/MutableState;)V

    move-object v9, v7

    move-object v5, v10

    move-object v10, v4

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1d
    move-object/from16 v18, v3

    check-cast v18, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    const/4 v8, 0x7

    const/4 v4, 0x0

    move-object v3, v5

    const/4 v5, 0x0

    move v7, v15

    move-object/from16 v13, v17

    move-object v15, v3

    move-object/from16 v3, v21

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    move-object v7, v3

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_28

    if-ne v5, v0, :cond_29

    :cond_28
    new-instance v5, Lj6;

    const/16 v3, 0x16

    invoke-direct {v5, v3, v13}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-static {v4, v3, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v12, :cond_2a

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v12}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_1e

    :cond_2a
    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    :goto_1e
    invoke-interface {v4, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v4, Landroidx/compose/material3/DateInputKt$DateInputTextField$3;

    invoke-direct {v4, v13}, Landroidx/compose/material3/DateInputKt$DateInputTextField$3;-><init>(Landroidx/compose/runtime/MutableState;)V

    const v5, -0x1554d7ee

    invoke-static {v5, v4, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v22, v4, 0x1

    new-instance v4, Landroidx/compose/material3/DateVisualTransformation;

    invoke-direct {v4, v10}, Landroidx/compose/material3/DateVisualTransformation;-><init>(Landroidx/compose/material3/internal/DateInputFormat;)V

    new-instance v23, Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v25, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v26, Landroidx/compose/ui/text/input/KeyboardType;->e:I

    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->b:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v27, Landroidx/compose/ui/text/input/ImeAction;->j:I

    const/16 v31, 0x71

    const/16 v32, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v23 .. v32}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v5, v11, Landroidx/compose/material3/DatePickerColors;->y:Landroidx/compose/material3/TextFieldColors;

    shl-int/lit8 v6, v35, 0x6

    const/high16 v8, 0x1f80000

    and-int v32, v6, v8

    const/16 v17, 0x0

    move-object v8, v15

    move-object/from16 v15, v18

    const/16 v18, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move-object/from16 v30, v5

    move-object v5, v8

    move-object/from16 v31, v14

    move-object/from16 v14, v16

    move-object/from16 v24, v23

    move-object/from16 v16, v1

    move-object/from16 v23, v4

    move-object/from16 v4, p8

    invoke-static/range {v14 .. v32}, Landroidx/compose/material3/OutlinedTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v14, v31

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v6, v33, 0x70

    const/16 v8, 0x20

    if-ne v6, v8, :cond_2b

    move/from16 v6, v34

    goto :goto_1f

    :cond_2b
    move v6, v3

    :goto_1f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_2c

    if-ne v8, v0, :cond_2d

    :cond_2c
    new-instance v8, Landroidx/compose/material3/DateInputKt$DateInputTextField$4$1;

    const/4 v6, 0x0

    invoke-direct {v8, v12, v6}, Landroidx/compose/material3/DateInputKt$DateInputTextField$4$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v1, v35, 0x70

    const/16 v8, 0x20

    if-ne v1, v8, :cond_2e

    move/from16 v1, v34

    goto :goto_20

    :cond_2e
    move v1, v3

    :goto_20
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    const/high16 v8, 0x4000000

    if-ne v2, v8, :cond_2f

    goto :goto_21

    :cond_2f
    move/from16 v34, v3

    :goto_21
    or-int v1, v1, v34

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_31

    if-ne v2, v0, :cond_30

    goto :goto_22

    :cond_30
    move-object v0, v2

    move-object/from16 v2, p1

    goto :goto_23

    :cond_31
    :goto_22
    new-instance v0, Landroidx/compose/material3/DateInputKt$DateInputTextField$5$1;

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v10

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DateInputKt$DateInputTextField$5$1;-><init>(Ljava/lang/Long;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_23
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v2, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_24

    :cond_32
    move-object v14, v5

    move-object/from16 v7, v21

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_24
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_33

    new-instance v0, Lxj;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v13, p13

    move-object v1, v7

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v7, p6

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lxj;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;II)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_33
    return-void
.end method
