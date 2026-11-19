.class final Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001BC\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/geometry/Size;",
        "",
        "onLabelMeasured",
        "",
        "singleLine",
        "Landroidx/compose/material3/TextFieldLabelPosition;",
        "labelPosition",
        "Landroidx/compose/material3/internal/FloatProducer;",
        "labelProgress",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "paddingValues",
        "Landroidx/compose/ui/unit/Dp;",
        "horizontalIconPadding",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:Lkotlin/jvm/functions/Function1;

.field public final b:Z

.field public final c:Landroidx/compose/material3/TextFieldLabelPosition;

.field public final d:Landroidx/compose/material3/internal/FloatProducer;

.field public final e:Landroidx/compose/foundation/layout/PaddingValues;

.field public final f:F


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->a:Lkotlin/jvm/functions/Function1;

    iput-boolean p2, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->b:Z

    iput-object p3, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->c:Landroidx/compose/material3/TextFieldLabelPosition;

    iput-object p4, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->d:Landroidx/compose/material3/internal/FloatProducer;

    iput-object p5, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iput p6, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->f:F

    return-void
.end method

.method public static final e(ILandroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I
    .locals 1

    iget-boolean v0, p1, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->b:Z

    if-eqz v0, :cond_0

    sget-object p3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget p5, p5, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-virtual {p3, p5, p2}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    move-result p3

    :cond_0
    add-int/2addr p0, p3

    iget-object p1, p1, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->c:Landroidx/compose/material3/TextFieldLabelPosition;

    instance-of p1, p1, Landroidx/compose/material3/TextFieldLabelPosition$Above;

    if-eqz p1, :cond_1

    return p0

    :cond_1
    if-eqz p4, :cond_2

    iget p1, p4, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    div-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIIJZF)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p7, v0, p13}, Landroidx/compose/ui/util/MathHelpersKt;->c(IIF)I

    move-result v1

    :goto_0
    filled-new-array {p8, p4, p5, v1}, [I

    move-result-object p4

    invoke-static {p6, p4}, Lkotlin/comparisons/ComparisonsKt;->b(I[I)I

    move-result p4

    iget-object p0, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->e:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result p5

    invoke-interface {p1, p5}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p5

    if-eqz p12, :cond_1

    goto :goto_1

    :cond_1
    int-to-float p6, p7

    const/high16 p8, 0x40000000    # 2.0f

    div-float/2addr p6, p8

    invoke-static {p5, p6}, Ljava/lang/Math;->max(FF)F

    move-result p6

    invoke-static {p5, p6, p13}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result p5

    :goto_1
    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    int-to-float p1, p4

    add-float/2addr p5, p1

    add-float/2addr p5, p0

    if-eqz p12, :cond_2

    goto :goto_2

    :cond_2
    move p7, v0

    :goto_2
    invoke-static {p5}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, p7

    add-int/2addr p0, p9

    invoke-static {p0, p10, p11}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result p0

    return p0
.end method

.method public final b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIJF)I
    .locals 0

    add-int/2addr p4, p5

    add-int/2addr p6, p4

    add-int/2addr p8, p4

    const/4 p4, 0x0

    invoke-static {p7, p4, p11}, Landroidx/compose/ui/util/MathHelpersKt;->c(IIF)I

    move-result p4

    invoke-static {p8, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/2addr p4, p2

    add-int/2addr p4, p3

    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object p0, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->e:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {p0, p2}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p3

    invoke-interface {p0, p2}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p0

    add-float/2addr p0, p3

    sget-object p2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    int-to-float p1, p7

    add-float/2addr p1, p0

    mul-float/2addr p1, p11

    invoke-static {p1}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    invoke-static {p4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p9, p10}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result p0

    return p0
.end method

.method public final c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->d:Landroidx/compose/material3/internal/FloatProducer;

    invoke-interface {v4}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    move-result v13

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v10}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Leading"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_1
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v5, 0x7fffffff

    if-eqz v9, :cond_2

    invoke-interface {v9, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result v7

    invoke-static {v2, v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->b(II)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_2

    :cond_2
    move v7, v2

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_4

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v14}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Trailing"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_4
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_5

    invoke-interface {v12, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result v10

    invoke-static {v7, v10}, Landroidx/compose/material3/internal/LayoutUtilKt;->b(II)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v12, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_7

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v8, "Label"

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    :goto_7
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_8

    invoke-static {v7, v2, v13}, Landroidx/compose/ui/util/MathHelpersKt;->c(IIF)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v14, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v11, :cond_a

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v6, "Prefix"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_a

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_a
    const/4 v14, 0x0

    :goto_a
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v14, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v14, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result v11

    invoke-static {v7, v11}, Landroidx/compose/material3/internal/LayoutUtilKt;->b(II)I

    move-result v7

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    :goto_b
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v11, :cond_d

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    add-int/lit8 v12, v12, 0x1

    const v5, 0x7fffffff

    goto :goto_c

    :cond_d
    const/4 v14, 0x0

    :goto_d
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v14, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const v11, 0x7fffffff

    invoke-interface {v14, v11}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result v11

    invoke-static {v7, v11}, Landroidx/compose/material3/internal/LayoutUtilKt;->b(II)I

    move-result v7

    goto :goto_e

    :cond_e
    const/4 v5, 0x0

    :goto_e
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_f
    if-ge v12, v11, :cond_16

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v2, "TextField"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v14, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_10
    if-ge v12, v11, :cond_10

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move/from16 v17, v2

    const-string v2, "Hint"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_11

    :cond_f
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v17

    goto :goto_10

    :cond_10
    move/from16 v17, v2

    const/4 v14, 0x0

    :goto_11
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v14, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v4, :cond_13

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v12}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v14, "Supporting"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_13
    const/4 v11, 0x0

    :goto_14
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v11, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    const/16 v3, 0xf

    const/4 v14, 0x0

    invoke-static {v14, v14, v14, v14, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v3

    iget-object v7, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->c:Landroidx/compose/material3/TextFieldLabelPosition;

    instance-of v12, v7, Landroidx/compose/material3/TextFieldLabelPosition$Above;

    move-wide/from16 v18, v3

    move v3, v10

    move-wide/from16 v10, v18

    move v4, v6

    move v7, v8

    move/from16 v6, v17

    move v8, v2

    move v2, v9

    move v9, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v13}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->a(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIIJZF)I

    move-result v0

    return v0

    :cond_15
    move/from16 v16, v6

    move v2, v9

    move v6, v10

    const/4 v14, 0x0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v6, v16

    move/from16 v2, p3

    goto/16 :goto_f

    :cond_16
    const/4 v14, 0x0

    const-string v0, "Collection contains no element matching the predicate."

    invoke-static {v0}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return v14
.end method

.method public final d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_13

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "TextField"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v6, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    move v5, v4

    :goto_1
    const/4 v6, 0x0

    if-ge v5, v3, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v8}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Label"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_2
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v7, :cond_2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v7, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v12, v3

    goto :goto_3

    :cond_2
    move v12, v4

    :goto_3
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    move v5, v4

    :goto_4
    if-ge v5, v3, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    move-object v7, v6

    :goto_5
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v7, :cond_5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v7, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v8, v3

    goto :goto_6

    :cond_5
    move v8, v4

    :goto_6
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    move v5, v4

    :goto_7
    if-ge v5, v3, :cond_7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v9}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Leading"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    move-object v7, v6

    :goto_8
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v7, :cond_8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v7, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v7, v3

    goto :goto_9

    :cond_8
    move v7, v4

    :goto_9
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    move v5, v4

    :goto_a
    if-ge v5, v3, :cond_a

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v10}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v10

    const-string v13, "Prefix"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_b

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    move-object v9, v6

    :goto_b
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_b

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v9, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v9, v3

    goto :goto_c

    :cond_b
    move v9, v4

    :goto_c
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    move v5, v4

    :goto_d
    if-ge v5, v3, :cond_d

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v13}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Suffix"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_e

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_d
    move-object v10, v6

    :goto_e
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_e

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v10, v3

    goto :goto_f

    :cond_e
    move v10, v4

    :goto_f
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move v3, v4

    :goto_10
    if-ge v3, v2, :cond_10

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v13}, Landroidx/compose/material3/internal/LayoutUtilKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Hint"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object v6, v5

    goto :goto_11

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_10
    :goto_11
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v13, v0

    goto :goto_12

    :cond_11
    move v13, v4

    :goto_12
    const/16 v0, 0xf

    invoke-static {v4, v4, v4, v4, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v14

    move-object/from16 v5, p0

    iget-object v0, v5, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->d:Landroidx/compose/material3/internal/FloatProducer;

    invoke-interface {v0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    move-result v16

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v16}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIJF)I

    move-result v0

    return v0

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_13
    const-string v0, "Collection contains no element matching the predicate."

    invoke-static {v0}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return v4
.end method

.method public final maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2

    new-instance v0, Laj0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Laj0;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2

    new-instance v0, Laj0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Laj0;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    iget-object v2, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->d:Landroidx/compose/material3/internal/FloatProducer;

    invoke-interface {v2}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    move-result v11

    iget-object v2, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->e:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v2}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v3

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v4, p3

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v12

    move-object v4, v14

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v15, 0x0

    move v6, v15

    :goto_0
    const/16 v22, 0x0

    if-ge v6, v5, :cond_1

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Leading"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v7, v22

    :goto_1
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    if-eqz v7, :cond_2

    invoke-interface {v7, v12, v13}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object/from16 v5, v22

    :goto_2
    if-eqz v5, :cond_3

    iget v6, v5, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_3

    :cond_3
    move v6, v15

    :goto_3
    if-eqz v5, :cond_4

    iget v7, v5, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_4

    :cond_4
    move v7, v15

    :goto_4
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v8

    move v9, v15

    :goto_5
    if-ge v9, v8, :cond_6

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Landroidx/compose/ui/layout/Measurable;

    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v4

    const-string v4, "Trailing"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v16

    const/4 v15, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v16, v4

    move-object/from16 v10, v22

    :goto_6
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    const/4 v4, 0x2

    if-eqz v10, :cond_7

    neg-int v8, v6

    move-object v15, v5

    move/from16 v18, v6

    const/4 v9, 0x0

    invoke-static {v8, v9, v4, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->j(IIIJ)J

    move-result-wide v5

    invoke-interface {v10, v5, v6}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    goto :goto_7

    :cond_7
    move-object v15, v5

    move/from16 v18, v6

    move-object/from16 v5, v22

    :goto_7
    if-eqz v5, :cond_8

    iget v6, v5, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    :goto_8
    add-int v6, v18, v6

    if-eqz v5, :cond_9

    iget v8, v5, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_9

    :cond_9
    const/4 v8, 0x0

    :goto_9
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v8, :cond_b

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v18, v10

    check-cast v18, Landroidx/compose/ui/layout/Measurable;

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v4

    move/from16 v18, v8

    const-string v8, "Prefix"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_b

    :cond_a
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v18

    const/4 v4, 0x2

    goto :goto_a

    :cond_b
    move-object/from16 v10, v22

    :goto_b
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    if-eqz v10, :cond_c

    neg-int v4, v6

    move-object/from16 v18, v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v4, v9, v8, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->j(IIIJ)J

    move-result-wide v4

    invoke-interface {v10, v4, v5}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    goto :goto_c

    :cond_c
    move-object/from16 v18, v5

    move-object/from16 v4, v22

    :goto_c
    if-eqz v4, :cond_d

    iget v9, v4, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_d

    :cond_d
    const/4 v9, 0x0

    :goto_d
    add-int/2addr v6, v9

    if-eqz v4, :cond_e

    iget v9, v4, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_e

    :cond_e
    const/4 v9, 0x0

    :goto_e
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v7, :cond_10

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v10

    move/from16 v20, v7

    const-string v7, "Suffix"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_10

    :cond_f
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v20

    goto :goto_f

    :cond_10
    move-object/from16 v8, v22

    :goto_10
    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    if-eqz v8, :cond_11

    neg-int v7, v6

    move/from16 v17, v6

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v7, v9, v10, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->j(IIIJ)J

    move-result-wide v6

    invoke-interface {v8, v6, v7}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    goto :goto_11

    :cond_11
    move/from16 v17, v6

    const/4 v9, 0x0

    move-object/from16 v6, v22

    :goto_11
    if-eqz v6, :cond_12

    iget v7, v6, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_12

    :cond_12
    move v7, v9

    :goto_12
    add-int v7, v17, v7

    if-eqz v6, :cond_13

    iget v8, v6, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_13

    :cond_13
    move v8, v9

    :goto_13
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v8, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->c:Landroidx/compose/material3/TextFieldLabelPosition;

    instance-of v8, v8, Landroidx/compose/material3/TextFieldLabelPosition$Above;

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v10

    :goto_14
    if-ge v9, v10, :cond_15

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v20

    check-cast v21, Landroidx/compose/ui/layout/Measurable;

    move/from16 v23, v8

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v8

    move/from16 v21, v9

    const-string v9, "Label"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_15

    :cond_14
    add-int/lit8 v9, v21, 0x1

    move/from16 v8, v23

    goto :goto_14

    :cond_15
    move/from16 v23, v8

    move-object/from16 v20, v22

    :goto_15
    move-object/from16 v8, v20

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v10, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->a:Lkotlin/jvm/functions/Function1;

    const-wide/16 v24, 0x0

    const-wide v26, 0xffffffffL

    const/16 v28, 0x20

    if-nez v23, :cond_18

    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-interface {v2, v0}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v0

    move/from16 v20, v0

    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-interface {v2, v0}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v0

    add-int v0, v0, v20

    move-object/from16 v20, v2

    add-int v2, v7, v0

    invoke-static {v2, v0, v11}, Landroidx/compose/ui/util/MathHelpersKt;->c(IIF)I

    move-result v0

    neg-int v0, v0

    neg-int v2, v3

    move-object/from16 v21, v4

    move/from16 v29, v5

    invoke-static {v0, v2, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    move-result-wide v4

    if-eqz v8, :cond_16

    invoke-interface {v8, v4, v5}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_16

    :cond_16
    move-object/from16 v0, v22

    :goto_16
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz v0, :cond_17

    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->b:I

    int-to-float v2, v2

    iget v0, v0, Landroidx/compose/ui/layout/Placeable;->c:I

    int-to-float v0, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move-wide/from16 v30, v4

    int-to-long v4, v0

    shl-long v30, v30, v28

    and-long v4, v4, v26

    or-long v4, v30, v4

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    goto :goto_17

    :cond_17
    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v4, v24

    :goto_17
    new-instance v0, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-interface {v10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v30, 0x0

    goto :goto_19

    :cond_18
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move/from16 v29, v5

    if-eqz v8, :cond_19

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v0

    invoke-interface {v8, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v0

    goto :goto_18

    :cond_19
    const/4 v0, 0x0

    :goto_18
    move/from16 v30, v0

    :goto_19
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_1b

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v5

    move/from16 v31, v0

    const-string v0, "Supporting"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v31

    goto :goto_1a

    :cond_1b
    move-object/from16 v4, v22

    :goto_1b
    move-object v0, v4

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    if-eqz v0, :cond_1c

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v2

    goto :goto_1c

    :cond_1c
    const/4 v2, 0x0

    :goto_1c
    if-eqz v23, :cond_1d

    invoke-interface/range {v20 .. v20}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v4

    goto :goto_1f

    :cond_1d
    iget-object v4, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    if-eqz v4, :cond_1e

    iget v4, v4, Landroidx/compose/ui/layout/Placeable;->c:I

    :goto_1d
    const/16 v19, 0x2

    goto :goto_1e

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1d

    :goto_1e
    div-int/lit8 v4, v4, 0x2

    invoke-interface/range {v20 .. v20}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_1f
    neg-int v5, v7

    neg-int v7, v3

    sub-int/2addr v7, v4

    sub-int v7, v7, v30

    sub-int/2addr v7, v2

    move-object v2, v0

    move-wide/from16 v0, p3

    invoke-static {v5, v7, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    move-result-wide v31

    const/16 v36, 0x0

    const/16 v37, 0xb

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v31 .. v37}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_20
    const-string v31, "Collection contains no element matching the predicate."

    if-ge v7, v5, :cond_3b

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v2

    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    move/from16 v16, v3

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v20, v4

    const-string v4, "TextField"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    const/16 v43, 0x0

    const/16 v44, 0xe

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v44}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v0

    move-object/from16 v32, v14

    check-cast v32, Ljava/util/Collection;

    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_20

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    move/from16 v33, v3

    const-string v3, "Hint"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v33

    goto :goto_21

    :cond_20
    move-object/from16 v5, v22

    :goto_22
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    if-eqz v5, :cond_21

    invoke-interface {v5, v0, v1}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_23

    :cond_21
    move-object/from16 v0, v22

    :goto_23
    iget v1, v2, Landroidx/compose/ui/layout/Placeable;->c:I

    if-eqz v0, :cond_22

    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_24

    :cond_22
    const/4 v3, 0x0

    :goto_24
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v1, v1, v20

    add-int v1, v1, v16

    move/from16 v3, v29

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v15, :cond_23

    iget v3, v15, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_25

    :cond_23
    const/4 v3, 0x0

    :goto_25
    move-object/from16 v5, v18

    if-eqz v18, :cond_24

    iget v4, v5, Landroidx/compose/ui/layout/Placeable;->b:I

    move/from16 v47, v4

    move v4, v3

    move/from16 v3, v47

    goto :goto_26

    :cond_24
    move v4, v3

    const/4 v3, 0x0

    :goto_26
    move/from16 v16, v1

    move-object/from16 v7, v21

    if-eqz v21, :cond_25

    iget v1, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    move/from16 v47, v4

    move v4, v1

    move/from16 v1, v47

    goto :goto_27

    :cond_25
    move v1, v4

    const/4 v4, 0x0

    :goto_27
    move/from16 v18, v1

    if-eqz v6, :cond_26

    iget v1, v6, Landroidx/compose/ui/layout/Placeable;->b:I

    move-object/from16 v20, v5

    move v5, v1

    move-object/from16 v1, v20

    :goto_28
    move-object/from16 v20, v6

    goto :goto_29

    :cond_26
    move-object v1, v5

    const/4 v5, 0x0

    goto :goto_28

    :goto_29
    iget v6, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    move-object/from16 v21, v1

    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    if-eqz v1, :cond_27

    iget v1, v1, Landroidx/compose/ui/layout/Placeable;->b:I

    move-object/from16 v47, v7

    move v7, v1

    move-object/from16 v1, v47

    goto :goto_2a

    :cond_27
    move-object v1, v7

    const/4 v7, 0x0

    :goto_2a
    if-eqz v0, :cond_28

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/compose/ui/layout/Placeable;->b:I

    move-object/from16 v45, v2

    move/from16 v2, v18

    move-object/from16 v33, v29

    move-wide/from16 v17, v12

    move-object v13, v8

    move v8, v1

    move-object/from16 v46, v0

    move-object v14, v10

    move/from16 v36, v16

    move-object/from16 v35, v19

    move-object/from16 v34, v21

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v29, v20

    move-object v12, v9

    move-wide/from16 v9, p3

    move-object/from16 v1, p1

    goto :goto_2b

    :cond_28
    move-object/from16 v33, v1

    move-object/from16 v45, v2

    move/from16 v2, v18

    move-wide/from16 v17, v12

    move-object v13, v8

    const/4 v8, 0x0

    move-object/from16 v46, v0

    move-object v14, v10

    move/from16 v36, v16

    move-object/from16 v35, v19

    move-object/from16 v29, v20

    move-object/from16 v34, v21

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v9

    move-wide/from16 v9, p3

    :goto_2b
    invoke-virtual/range {v0 .. v11}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIJF)I

    move-result v3

    if-eqz v23, :cond_2b

    const/16 v19, 0x0

    const/16 v21, 0x5

    move-object v4, v15

    move/from16 v9, v16

    move-wide/from16 v15, v17

    const/16 v17, 0x0

    move/from16 v18, v3

    move-object v1, v4

    move v0, v9

    move/from16 v20, v30

    invoke-static/range {v15 .. v21}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v2

    move-wide v8, v15

    if-eqz v13, :cond_29

    invoke-interface {v13, v2, v3}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    goto :goto_2c

    :cond_29
    move-object/from16 v2, v22

    :goto_2c
    iput-object v2, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz v2, :cond_2a

    iget v3, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    int-to-float v3, v3

    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->c:I

    int-to-float v2, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v5, v2

    shl-long v2, v3, v28

    and-long v4, v5, v26

    or-long v24, v2, v4

    sget-object v2, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    :goto_2d
    move-wide/from16 v2, v24

    goto :goto_2e

    :cond_2a
    sget-object v2, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2d

    :goto_2e
    new-instance v4, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-interface {v14, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    move/from16 v2, v36

    goto :goto_30

    :cond_2b
    move-object v1, v15

    move/from16 v0, v16

    move-wide/from16 v8, v17

    move/from16 v18, v3

    goto :goto_2f

    :goto_30
    neg-int v2, v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->j(IIIJ)J

    move-result-wide v37

    const/16 v42, 0x0

    const/16 v43, 0x9

    const/16 v39, 0x0

    const/16 v41, 0x0

    move/from16 v40, v18

    invoke-static/range {v37 .. v43}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v2

    move/from16 v15, v40

    if-eqz v35, :cond_2c

    move-object/from16 v4, v35

    invoke-interface {v4, v2, v3}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    move-object v14, v2

    goto :goto_31

    :cond_2c
    move-object/from16 v14, v22

    :goto_31
    if-eqz v14, :cond_2d

    iget v2, v14, Landroidx/compose/ui/layout/Placeable;->c:I

    move/from16 v16, v2

    goto :goto_32

    :cond_2d
    move/from16 v16, v0

    :goto_32
    if-eqz v1, :cond_2e

    iget v2, v1, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_33

    :cond_2e
    move v2, v0

    :goto_33
    if-eqz v34, :cond_2f

    move-object/from16 v3, v34

    iget v4, v3, Landroidx/compose/ui/layout/Placeable;->c:I

    move-object v5, v3

    move v3, v4

    goto :goto_34

    :cond_2f
    move v3, v0

    move-object/from16 v5, v34

    :goto_34
    move-object/from16 v6, v33

    if-eqz v33, :cond_30

    iget v4, v6, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_35

    :cond_30
    move v4, v0

    :goto_35
    move-object/from16 v7, v29

    if-eqz v29, :cond_31

    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    :goto_36
    move-object/from16 v29, v6

    move-object/from16 v9, v45

    goto :goto_37

    :cond_31
    move v8, v0

    goto :goto_36

    :goto_37
    iget v6, v9, Landroidx/compose/ui/layout/Placeable;->c:I

    iget-object v10, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    if-eqz v10, :cond_32

    iget v10, v10, Landroidx/compose/ui/layout/Placeable;->c:I

    :goto_38
    move-object/from16 v13, v46

    goto :goto_39

    :cond_32
    move v10, v0

    goto :goto_38

    :goto_39
    if-eqz v13, :cond_33

    iget v0, v13, Landroidx/compose/ui/layout/Placeable;->c:I

    move-object/from16 v18, v5

    move v5, v8

    move v8, v0

    goto :goto_3a

    :cond_33
    move-object/from16 v18, v5

    move v5, v8

    const/4 v8, 0x0

    :goto_3a
    if-eqz v14, :cond_34

    iget v0, v14, Landroidx/compose/ui/layout/Placeable;->c:I

    move-object/from16 v45, v9

    move v9, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v7

    move v7, v10

    move-object/from16 v46, v13

    move-object/from16 v19, v14

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move v13, v11

    move-object v14, v12

    move/from16 v12, v23

    move-object/from16 v0, p0

    :goto_3b
    move-wide/from16 v10, p3

    goto :goto_3c

    :cond_34
    move-object/from16 v45, v9

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object/from16 v20, v7

    move v7, v10

    move-object/from16 v46, v13

    move-object/from16 v19, v14

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move v13, v11

    move-object v14, v12

    move/from16 v12, v23

    goto :goto_3b

    :goto_3c
    invoke-virtual/range {v0 .. v13}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->a(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIIJZF)I

    move-result v2

    move/from16 v23, v12

    move v11, v13

    sub-int v0, v2, v16

    if-eqz v23, :cond_35

    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    if-eqz v1, :cond_35

    iget v1, v1, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_3d

    :cond_35
    move/from16 v1, v21

    :goto_3d
    sub-int/2addr v0, v1

    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v3, v21

    :goto_3e
    if-ge v3, v1, :cond_39

    move-object/from16 v6, p2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "Container"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    const v1, 0x7fffffff

    if-eq v15, v1, :cond_36

    move v3, v15

    goto :goto_3f

    :cond_36
    move/from16 v3, v21

    :goto_3f
    if-eq v0, v1, :cond_37

    move v1, v0

    goto :goto_40

    :cond_37
    move/from16 v1, v21

    :goto_40
    invoke-static {v3, v15, v1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    move-result-wide v0

    invoke-interface {v4, v0, v1}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move v13, v11

    move-object v11, v0

    new-instance v0, Landroidx/compose/material3/q;

    move-object/from16 v1, p0

    move-object v9, v14

    move v3, v15

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v12, v19

    move-object/from16 v7, v20

    move/from16 v14, v23

    move-object/from16 v6, v29

    move-object/from16 v8, v45

    move-object/from16 v10, v46

    move v15, v13

    move-object/from16 v13, p1

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/q;-><init>(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;ZF)V

    move v4, v2

    move v15, v3

    move-object v2, v13

    invoke-static {v2, v15, v4, v0}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_38
    move v4, v2

    move-object v12, v14

    move-object/from16 v10, v20

    move-object/from16 v2, p1

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_3e

    :cond_39
    invoke-static/range {v31 .. v31}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-object v22

    :cond_3a
    move-object v2, v10

    move-object v10, v6

    move-object v6, v14

    move-object v14, v2

    move-object/from16 v2, p1

    move-wide/from16 v38, v0

    move-object/from16 v17, v15

    move-object/from16 v4, v19

    move/from16 v3, v29

    move/from16 v0, v30

    move-object/from16 v29, v21

    const/16 v21, 0x0

    move-wide/from16 v47, v12

    move-object v13, v8

    move-object v12, v9

    move-wide/from16 v8, v47

    add-int/lit8 v7, v7, 0x1

    move-object v1, v14

    move-object v14, v6

    move-object v6, v10

    move-object v10, v1

    move-object v2, v4

    move/from16 v4, v20

    move-object/from16 v21, v29

    move-wide/from16 v0, v38

    move/from16 v29, v3

    move/from16 v3, v16

    move-object v9, v12

    move-object v8, v13

    move-wide/from16 v12, v47

    goto/16 :goto_20

    :cond_3b
    invoke-static/range {v31 .. v31}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-object v22
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2

    new-instance v0, Laj0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Laj0;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2

    new-instance v0, Laj0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Laj0;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method
