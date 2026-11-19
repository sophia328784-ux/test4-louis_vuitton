.class final Landroidx/compose/material3/TextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/material3/TextFieldMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "",
        "singleLine",
        "Landroidx/compose/material3/TextFieldLabelPosition;",
        "labelPosition",
        "Landroidx/compose/material3/internal/FloatProducer;",
        "labelProgress",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "paddingValues",
        "Landroidx/compose/ui/unit/Dp;",
        "minimizedLabelHalfHeight",
        "<init>",
        "(ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Z

.field public final b:Landroidx/compose/material3/TextFieldLabelPosition;

.field public final c:Landroidx/compose/material3/internal/FloatProducer;

.field public final d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final e:F


# direct methods
.method public constructor <init>(ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->a:Z

    iput-object p2, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->b:Landroidx/compose/material3/TextFieldLabelPosition;

    iput-object p3, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->c:Landroidx/compose/material3/internal/FloatProducer;

    iput-object p4, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput p5, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->e:F

    return-void
.end method

.method public static c(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 13

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_13

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v5}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "TextField"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_1
    const/4 v5, 0x0

    if-ge v4, v3, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Label"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_2
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v6, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    move v6, v2

    :goto_4
    if-ge v6, v4, :cond_4

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v8}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Trailing"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    move-object v7, v5

    :goto_5
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v7, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v7, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto :goto_6

    :cond_5
    move v4, v2

    :goto_6
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    move v7, v2

    :goto_7
    if-ge v7, v6, :cond_7

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v9}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Prefix"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_7
    move-object v8, v5

    :goto_8
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v8, :cond_8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v8, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_9

    :cond_8
    move v6, v2

    :goto_9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v7

    move v8, v2

    :goto_a
    if-ge v8, v7, :cond_a

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v10}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Suffix"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_b

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_a
    move-object v9, v5

    :goto_b
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v9, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_c

    :cond_b
    move v7, v2

    :goto_c
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v8

    move v9, v2

    :goto_d
    if-ge v9, v8, :cond_d

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v11}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Leading"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_e

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_d
    move-object v10, v5

    :goto_e
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p2, v10, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    goto :goto_f

    :cond_e
    move v8, v2

    :goto_f
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v9, v2

    :goto_10
    if-ge v9, v0, :cond_10

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v11}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Hint"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    move-object v5, v10

    goto :goto_11

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_10
    :goto_11
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v5, :cond_11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v5, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_12

    :cond_11
    move p0, v2

    :goto_12
    const/16 p1, 0xf

    invoke-static {v2, v2, v2, v2, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide p1

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    add-int/2addr p0, v6

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, v8

    add-int/2addr p0, v4

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result p0

    return p0

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_13
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return v2
.end method

.method public static final d(Landroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;)I
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->a:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget p2, p3, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-virtual {p0, p2, p1}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIIJZF)I
    .locals 4

    move/from16 v0, p13

    iget-object v1, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->d:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v2

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v1

    add-float/2addr v1, v2

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p12, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-static {p3, v2, v0}, Landroidx/compose/ui/util/MathHelpersKt;->c(IIF)I

    move-result v3

    :goto_0
    filled-new-array {p8, p6, p7, v3}, [I

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/comparisons/ComparisonsKt;->b(I[I)I

    move-result p2

    if-lez p3, :cond_1

    if-nez p12, :cond_1

    iget p0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->e:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p0, v3

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    sget-object p1, Landroidx/compose/material3/tokens/MotionTokens;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {p1, v0}, Landroidx/compose/animation/core/CubicBezierEasing;->a(F)F

    move-result p1

    invoke-static {v2, p3, p1}, Landroidx/compose/ui/util/MathHelpersKt;->c(IIF)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    add-int/2addr v1, p0

    add-int/2addr v1, p2

    if-eqz p12, :cond_2

    goto :goto_2

    :cond_2
    move p3, v2

    :goto_2
    invoke-static {p5, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, p3

    add-int/2addr p0, p9

    move-wide p1, p10

    invoke-static {p0, p10, p11}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result p0

    return p0
.end method

.method public final b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v9}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Leading"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_1
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v4, 0x7fffffff

    if-eqz v8, :cond_2

    invoke-interface {v8, v4}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result v6

    move/from16 v9, p3

    invoke-static {v9, v6}, Landroidx/compose/material3/internal/LayoutUtilKt;->b(II)I

    move-result v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v8, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    goto :goto_2

    :cond_2
    move/from16 v9, p3

    move v6, v9

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_4

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v13}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Trailing"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_4
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_5

    invoke-interface {v12, v4}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result v10

    invoke-static {v6, v10}, Landroidx/compose/material3/internal/LayoutUtilKt;->b(II)I

    move-result v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v12, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_7

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v14}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Label"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    :goto_7
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v13, :cond_8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v13, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_8
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_a

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v7, "Prefix"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_a

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_a
    const/4 v14, 0x0

    :goto_a
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v14, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v14, v4}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result v12

    invoke-static {v6, v12}, Landroidx/compose/material3/internal/LayoutUtilKt;->b(II)I

    move-result v6

    goto :goto_b

    :cond_b
    const/4 v7, 0x0

    :goto_b
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v12, :cond_d

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v5, "Suffix"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_d
    const/4 v14, 0x0

    :goto_d
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v14, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v14, v4}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result v4

    invoke-static {v6, v4}, Landroidx/compose/material3/internal/LayoutUtilKt;->b(II)I

    move-result v6

    move/from16 v18, v7

    move v7, v5

    move/from16 v5, v18

    goto :goto_e

    :cond_e
    move v5, v7

    const/4 v7, 0x0

    :goto_e
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v12, 0x0

    :goto_f
    if-ge v12, v4, :cond_16

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v14}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "TextField"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v13, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v12, :cond_10

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v17, v3

    const-string v3, "Hint"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_11

    :cond_f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v17

    goto :goto_10

    :cond_10
    move-object/from16 v17, v3

    const/4 v14, 0x0

    :goto_11
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v14, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move/from16 v18, v8

    move v8, v3

    move v3, v4

    move/from16 v4, v18

    goto :goto_12

    :cond_11
    move v3, v4

    move v4, v8

    const/4 v8, 0x0

    :goto_12
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v12, 0x0

    :goto_13
    if-ge v12, v6, :cond_13

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v14}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Supporting"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    :cond_13
    const/4 v13, 0x0

    :goto_14
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v13, :cond_14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v13, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move v9, v1

    goto :goto_15

    :cond_14
    const/4 v9, 0x0

    :goto_15
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v1

    iget-object v6, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->b:Landroidx/compose/material3/TextFieldLabelPosition;

    instance-of v12, v6, Landroidx/compose/material3/TextFieldLabelPosition$Above;

    iget-object v6, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->c:Landroidx/compose/material3/internal/FloatProducer;

    invoke-interface {v6}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    move-result v13

    move v6, v5

    move v5, v10

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move v2, v3

    move v3, v11

    move-wide/from16 v10, v18

    invoke-virtual/range {v0 .. v13}, Landroidx/compose/material3/TextFieldMeasurePolicy;->a(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIIJZF)I

    move-result v0

    return v0

    :cond_15
    move-object/from16 v17, v3

    move v0, v7

    move v3, v11

    move v7, v5

    move v5, v8

    add-int/lit8 v12, v12, 0x1

    move v5, v7

    move-object/from16 v3, v17

    move v7, v0

    move-object/from16 v0, p0

    goto/16 :goto_f

    :cond_16
    const-string v0, "Collection contains no element matching the predicate."

    invoke-static {v0}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    const/16 v16, 0x0

    return v16
.end method

.method public final maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2

    new-instance v0, Lzt0;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lzt0;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    new-instance p0, Lzt0;

    const/16 p1, 0x1a

    invoke-direct {p0, p1}, Lzt0;-><init>(I)V

    invoke-static {p2, p3, p0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->c(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    iget-object v2, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->c:Landroidx/compose/material3/internal/FloatProducer;

    invoke-interface {v2}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    move-result v13

    iget-object v2, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->d:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v2}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v15

    invoke-interface {v2}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v2

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide/from16 v3, p3

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v5

    move-object v3, v14

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    move v8, v7

    :goto_0
    const/16 v23, 0x0

    if-ge v8, v4, :cond_1

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Leading"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v9, v23

    :goto_1
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    if-eqz v9, :cond_2

    invoke-interface {v9, v5, v6}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, v23

    :goto_2
    if-eqz v4, :cond_3

    iget v8, v4, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_3

    :cond_3
    move v8, v7

    :goto_3
    if-eqz v4, :cond_4

    iget v9, v4, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_4

    :cond_4
    move v9, v7

    :goto_4
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v10

    move v11, v7

    :goto_5
    if-ge v11, v10, :cond_6

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, Landroidx/compose/ui/layout/Measurable;

    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    const-string v1, "Trailing"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v12, v23

    :goto_6
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    const/4 v1, 0x2

    if-eqz v12, :cond_7

    neg-int v7, v8

    move v11, v8

    const/4 v10, 0x0

    invoke-static {v7, v10, v1, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->j(IIIJ)J

    move-result-wide v7

    invoke-interface {v12, v7, v8}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    goto :goto_7

    :cond_7
    move v11, v8

    move-object/from16 v7, v23

    :goto_7
    if-eqz v7, :cond_8

    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    add-int/2addr v8, v11

    if-eqz v7, :cond_9

    iget v10, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    :goto_9
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v10, :cond_b

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, Landroidx/compose/ui/layout/Measurable;

    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v3

    const-string v3, "Prefix"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_b

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v25

    const/4 v1, 0x2

    goto :goto_a

    :cond_b
    move-object/from16 v25, v3

    move-object/from16 v12, v23

    :goto_b
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    if-eqz v12, :cond_c

    neg-int v1, v8

    move-object v11, v7

    move/from16 v16, v8

    const/4 v3, 0x2

    const/4 v10, 0x0

    invoke-static {v1, v10, v3, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->j(IIIJ)J

    move-result-wide v7

    invoke-interface {v12, v7, v8}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    goto :goto_c

    :cond_c
    move-object v11, v7

    move/from16 v16, v8

    move-object/from16 v1, v23

    :goto_c
    if-eqz v1, :cond_d

    iget v3, v1, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    :goto_d
    add-int v8, v16, v3

    if-eqz v1, :cond_e

    iget v3, v1, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v7, :cond_10

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    move/from16 v16, v7

    const-string v7, "Suffix"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_10

    :cond_f
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v16

    goto :goto_f

    :cond_10
    move-object/from16 v10, v23

    :goto_10
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    if-eqz v10, :cond_11

    neg-int v7, v8

    move/from16 v16, v8

    const/4 v9, 0x2

    const/4 v12, 0x0

    invoke-static {v7, v12, v9, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->j(IIIJ)J

    move-result-wide v7

    invoke-interface {v10, v7, v8}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    goto :goto_11

    :cond_11
    move/from16 v16, v8

    move-object/from16 v7, v23

    :goto_11
    if-eqz v7, :cond_12

    iget v10, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_12

    :cond_12
    const/4 v10, 0x0

    :goto_12
    add-int v8, v16, v10

    if-eqz v7, :cond_13

    iget v10, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_13

    :cond_13
    const/4 v10, 0x0

    :goto_13
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v9, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->b:Landroidx/compose/material3/TextFieldLabelPosition;

    instance-of v12, v9, Landroidx/compose/material3/TextFieldLabelPosition$Above;

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v9, :cond_15

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v17, v9

    const-string v9, "Label"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v9, v17

    goto :goto_14

    :cond_15
    move-object/from16 v16, v23

    :goto_15
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-nez v12, :cond_18

    neg-int v10, v2

    move/from16 v26, v2

    neg-int v2, v8

    move-object/from16 v27, v11

    invoke-static {v2, v10, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    move-result-wide v10

    if-eqz v0, :cond_16

    invoke-interface {v0, v10, v11}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    goto :goto_16

    :cond_16
    move-object/from16 v2, v23

    :goto_16
    iput-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_17
    const/4 v10, 0x0

    goto :goto_17

    :cond_18
    move/from16 v26, v2

    move-object/from16 v27, v11

    if-eqz v0, :cond_17

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v10

    :goto_17
    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v2, :cond_1a

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    move/from16 v18, v2

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v2

    move-wide/from16 v28, v5

    const-string v5, "Supporting"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_19

    :cond_19
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v18

    move-wide/from16 v5, v28

    goto :goto_18

    :cond_1a
    move-wide/from16 v28, v5

    move-object/from16 v16, v23

    :goto_19
    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    if-eqz v2, :cond_1b

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v5

    invoke-interface {v2, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v5

    goto :goto_1a

    :cond_1b
    const/4 v5, 0x0

    :goto_1a
    iget-object v6, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    if-eqz v6, :cond_1c

    iget v6, v6, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_1b

    :cond_1c
    const/4 v6, 0x0

    :goto_1b
    add-int/2addr v6, v10

    add-int/2addr v6, v15

    const/16 v21, 0x0

    const/16 v22, 0xb

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 v16, p3

    move/from16 v30, v10

    invoke-static/range {v16 .. v22}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v10

    move/from16 v16, v5

    neg-int v5, v6

    sub-int v5, v5, v26

    sub-int v5, v5, v16

    neg-int v8, v8

    invoke-static {v8, v5, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    move-result-wide v10

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_1c
    const-string v25, "Collection contains no element matching the predicate."

    if-ge v8, v5, :cond_38

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v5

    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    move/from16 v31, v6

    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    move/from16 v16, v8

    const-string v8, "TextField"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v5, v10, v11}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    const/16 v21, 0x0

    const/16 v22, 0xe

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 v16, v10

    invoke-static/range {v16 .. v22}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v10

    move-object/from16 v32, v14

    check-cast v32, Ljava/util/Collection;

    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_1d
    if-ge v8, v6, :cond_1e

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    move/from16 v18, v6

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    move/from16 v17, v8

    const-string v8, "Hint"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_1e

    :cond_1d
    add-int/lit8 v8, v17, 0x1

    move/from16 v6, v18

    goto :goto_1d

    :cond_1e
    move-object/from16 v16, v23

    :goto_1e
    move-object/from16 v6, v16

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    if-eqz v6, :cond_1f

    invoke-interface {v6, v10, v11}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    goto :goto_1f

    :cond_1f
    move-object/from16 v6, v23

    :goto_1f
    iget v8, v5, Landroidx/compose/ui/layout/Placeable;->c:I

    if-eqz v6, :cond_20

    iget v10, v6, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_20

    :cond_20
    const/4 v10, 0x0

    :goto_20
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int v8, v8, v31

    add-int v8, v8, v26

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v4, :cond_21

    iget v10, v4, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_21

    :cond_21
    const/4 v10, 0x0

    :goto_21
    move-object/from16 v11, v27

    if-eqz v27, :cond_22

    iget v8, v11, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_22

    :cond_22
    const/4 v8, 0x0

    :goto_22
    move/from16 v16, v8

    if-eqz v1, :cond_23

    iget v8, v1, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_23

    :cond_23
    const/4 v8, 0x0

    :goto_23
    move/from16 v17, v8

    if-eqz v7, :cond_24

    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    move/from16 v18, v8

    goto :goto_24

    :cond_24
    const/16 v18, 0x0

    :goto_24
    iget v8, v5, Landroidx/compose/ui/layout/Placeable;->b:I

    move/from16 v19, v8

    iget-object v8, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    if-eqz v8, :cond_25

    iget v8, v8, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_25

    :cond_25
    const/4 v8, 0x0

    :goto_25
    move/from16 v20, v10

    if-eqz v6, :cond_26

    iget v10, v6, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_26

    :cond_26
    const/4 v10, 0x0

    :goto_26
    add-int v17, v17, v18

    move/from16 v18, v10

    add-int v10, v19, v17

    move/from16 v27, v12

    add-int v12, v18, v17

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int v8, v8, v20

    add-int v8, v8, v16

    move v10, v13

    move-wide/from16 v12, p3

    invoke-static {v8, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v19

    if-eqz v27, :cond_28

    const/16 v20, 0x0

    const/16 v22, 0x5

    const/16 v18, 0x0

    move-wide/from16 v16, v28

    move/from16 v21, v30

    invoke-static/range {v16 .. v22}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v12

    move/from16 v28, v15

    move-wide/from16 v14, v16

    if-eqz v0, :cond_27

    invoke-interface {v0, v12, v13}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_27

    :cond_27
    move-object/from16 v0, v23

    :goto_27
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    goto :goto_28

    :cond_28
    move-wide/from16 v33, v28

    move/from16 v28, v15

    move-wide/from16 v14, v33

    :goto_28
    neg-int v0, v3

    const/4 v3, 0x1

    const/4 v12, 0x0

    invoke-static {v12, v0, v3, v14, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->j(IIIJ)J

    move-result-wide v16

    const/16 v21, 0x0

    const/16 v22, 0x9

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v13

    move/from16 v15, v19

    if-eqz v2, :cond_29

    invoke-interface {v2, v13, v14}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move-object v14, v0

    goto :goto_29

    :cond_29
    move-object/from16 v14, v23

    :goto_29
    if-eqz v14, :cond_2a

    iget v0, v14, Landroidx/compose/ui/layout/Placeable;->c:I

    move/from16 v16, v0

    goto :goto_2a

    :cond_2a
    move/from16 v16, v12

    :goto_2a
    iget v2, v5, Landroidx/compose/ui/layout/Placeable;->c:I

    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    if-eqz v0, :cond_2b

    iget v0, v0, Landroidx/compose/ui/layout/Placeable;->c:I

    move v3, v0

    goto :goto_2b

    :cond_2b
    move v3, v12

    :goto_2b
    if-eqz v4, :cond_2c

    iget v0, v4, Landroidx/compose/ui/layout/Placeable;->c:I

    move-object/from16 v33, v4

    move v4, v0

    move-object/from16 v0, v33

    goto :goto_2c

    :cond_2c
    move-object v0, v4

    move v4, v12

    :goto_2c
    if-eqz v11, :cond_2d

    iget v8, v11, Landroidx/compose/ui/layout/Placeable;->c:I

    move/from16 v33, v8

    move-object v8, v5

    move/from16 v5, v33

    goto :goto_2d

    :cond_2d
    move-object v8, v5

    move v5, v12

    :goto_2d
    if-eqz v1, :cond_2e

    iget v13, v1, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_2e

    :cond_2e
    move v13, v12

    :goto_2e
    if-eqz v7, :cond_2f

    iget v12, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    move/from16 v33, v12

    move-object v12, v7

    move/from16 v7, v33

    goto :goto_2f

    :cond_2f
    move-object v12, v7

    const/4 v7, 0x0

    :goto_2f
    move-object/from16 v17, v0

    if-eqz v6, :cond_30

    iget v0, v6, Landroidx/compose/ui/layout/Placeable;->c:I

    move-object/from16 v33, v8

    move v8, v0

    move-object/from16 v0, v33

    goto :goto_30

    :cond_30
    move-object v0, v8

    const/4 v8, 0x0

    :goto_30
    if-eqz v14, :cond_31

    move-object/from16 v18, v0

    iget v0, v14, Landroidx/compose/ui/layout/Placeable;->c:I

    move/from16 v22, v16

    move-object/from16 v20, v18

    move-object/from16 v16, v14

    move-object v14, v9

    move v9, v0

    move-object/from16 v21, v6

    move-object/from16 v19, v12

    move v6, v13

    move/from16 v12, v27

    const/16 v24, 0x0

    move-object/from16 v18, v1

    move v13, v10

    move-object/from16 v27, v11

    move-object/from16 v1, p1

    move-wide/from16 v10, p3

    move-object/from16 v0, p0

    goto :goto_31

    :cond_31
    move-object/from16 v20, v0

    move/from16 v22, v16

    move-object/from16 v16, v14

    move-object v14, v9

    const/4 v9, 0x0

    move-object/from16 v18, v1

    move-object/from16 v21, v6

    move-object/from16 v19, v12

    move v6, v13

    move/from16 v12, v27

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v13, v10

    move-object/from16 v27, v11

    move-wide/from16 v10, p3

    :goto_31
    invoke-virtual/range {v0 .. v13}, Landroidx/compose/material3/TextFieldMeasurePolicy;->a(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIIJZF)I

    move-result v8

    sub-int v0, v8, v22

    if-eqz v12, :cond_32

    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    if-eqz v1, :cond_32

    iget v7, v1, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_32

    :cond_32
    move/from16 v7, v24

    :goto_32
    sub-int v4, v0, v7

    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v7, v24

    :goto_33
    if-ge v7, v0, :cond_36

    move-object/from16 v1, p2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Container"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const v0, 0x7fffffff

    if-eq v15, v0, :cond_33

    move v7, v15

    goto :goto_34

    :cond_33
    move/from16 v7, v24

    :goto_34
    if-eq v4, v0, :cond_34

    move v0, v4

    goto :goto_35

    :cond_34
    move/from16 v0, v24

    :goto_35
    invoke-static {v7, v15, v0, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move v7, v15

    move-object v15, v0

    new-instance v0, Landroidx/compose/material3/s;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move v2, v12

    move-object v1, v14

    move-object/from16 v11, v17

    move-object/from16 v14, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v12, v27

    move/from16 v5, v28

    move/from16 v17, v13

    move-object/from16 v13, v18

    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/s;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZLandroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;F)V

    move v15, v7

    invoke-static {v6, v15, v8, v0}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_35
    move-object/from16 v6, p1

    move v2, v4

    move v4, v12

    move-object v5, v14

    move-object/from16 v11, v17

    move-object/from16 v12, v19

    add-int/lit8 v7, v7, 0x1

    move v12, v4

    move v4, v2

    goto :goto_33

    :cond_36
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-object v23

    :cond_37
    move-wide v5, v10

    move-object v11, v4

    move v4, v12

    move-object v12, v7

    move-wide v7, v5

    move-object/from16 v6, p1

    move-object/from16 v18, v1

    move-object v5, v9

    move-object v1, v14

    const/16 v24, 0x0

    move-wide/from16 v33, v28

    move/from16 v28, v15

    move-wide/from16 v14, v33

    add-int/lit8 v9, v16, 0x1

    move/from16 v15, v28

    move-wide/from16 v28, v33

    move-object v6, v12

    move v12, v4

    move-object v4, v11

    move-wide v10, v7

    move-object v7, v6

    move-object v14, v1

    move v8, v9

    move-object/from16 v1, v18

    move/from16 v6, v31

    move-object v9, v5

    move/from16 v5, v17

    goto/16 :goto_1c

    :cond_38
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-object v23
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2

    new-instance v0, Lzt0;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lzt0;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    new-instance p0, Lzt0;

    const/16 p1, 0x19

    invoke-direct {p0, p1}, Lzt0;-><init>(I)V

    invoke-static {p2, p3, p0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->c(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method
