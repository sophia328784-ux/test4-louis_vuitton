.class final Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic c:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic d:Landroidx/compose/runtime/State;

.field public final synthetic e:Landroidx/compose/runtime/State;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/runtime/State;

.field public final synthetic h:Lkotlin/jvm/functions/Function3;

.field public final synthetic i:Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;ZLandroidx/compose/animation/core/Transition$TransitionAnimationState;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->b:Landroidx/compose/ui/text/TextStyle;

    iput-object p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->c:Landroidx/compose/ui/text/TextStyle;

    iput-object p3, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->d:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->e:Landroidx/compose/runtime/State;

    iput-boolean p5, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->f:Z

    iput-object p6, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->g:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->h:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->i:Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v5

    invoke-interface {v4, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->d:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    new-instance v6, Landroidx/compose/ui/text/TextStyle;

    iget-object v2, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, v2, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v7, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->c:Landroidx/compose/ui/text/TextStyle;

    iget-object v8, v7, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    sget-object v9, Landroidx/compose/ui/text/SpanStyleKt;->d:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-static {v9, v10, v1}, Landroidx/compose/ui/text/style/TextDrawStyleKt;->a(Landroidx/compose/ui/text/style/TextForegroundStyle;Landroidx/compose/ui/text/style/TextForegroundStyle;F)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object v12

    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    invoke-static {v1, v9, v10}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Landroidx/compose/ui/text/font/FontFamily;

    iget-wide v9, v3, Landroidx/compose/ui/text/SpanStyle;->b:J

    iget-wide v13, v8, Landroidx/compose/ui/text/SpanStyle;->b:J

    invoke-static {v9, v10, v13, v14, v1}, Landroidx/compose/ui/text/SpanStyleKt;->c(JJF)J

    move-result-wide v13

    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v9, :cond_1

    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    :cond_1
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v10, :cond_2

    sget-object v10, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    :cond_2
    iget v9, v9, Landroidx/compose/ui/text/font/FontWeight;->b:I

    iget v10, v10, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v9, v10, v1}, Landroidx/compose/ui/util/MathHelpersKt;->c(IIF)I

    move-result v9

    const/16 v10, 0x3e8

    invoke-static {v9, v5, v10}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result v5

    new-instance v15, Landroidx/compose/ui/text/font/FontWeight;

    invoke-direct {v15, v5}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    iget-object v5, v3, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v9, v8, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    invoke-static {v1, v5, v9}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroidx/compose/ui/text/font/FontStyle;

    iget-object v5, v3, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    iget-object v9, v8, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-static {v1, v5, v9}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroidx/compose/ui/text/font/FontSynthesis;

    iget-object v5, v3, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    iget-object v9, v8, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    invoke-static {v1, v5, v9}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Ljava/lang/String;

    iget-wide v9, v3, Landroidx/compose/ui/text/SpanStyle;->h:J

    move-object/from16 p1, v12

    iget-wide v11, v8, Landroidx/compose/ui/text/SpanStyle;->h:J

    invoke-static {v9, v10, v11, v12, v1}, Landroidx/compose/ui/text/SpanStyleKt;->c(JJF)J

    move-result-wide v20

    iget-object v5, v3, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v5, :cond_3

    iget v5, v5, Landroidx/compose/ui/text/style/BaselineShift;->a:F

    goto :goto_1

    :cond_3
    sget-object v5, Landroidx/compose/ui/text/style/BaselineShift;->b:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    const/4 v5, 0x0

    :goto_1
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v10, :cond_4

    iget v10, v10, Landroidx/compose/ui/text/style/BaselineShift;->a:F

    goto :goto_2

    :cond_4
    sget-object v10, Landroidx/compose/ui/text/style/BaselineShift;->b:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    const/4 v10, 0x0

    :goto_2
    invoke-static {v5, v10, v1}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result v5

    sget-object v10, Landroidx/compose/ui/text/style/BaselineShift;->b:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    iget-object v10, v3, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-nez v10, :cond_5

    sget-object v10, Landroidx/compose/ui/text/style/TextGeometricTransform;->c:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/text/style/TextGeometricTransform;->d:Landroidx/compose/ui/text/style/TextGeometricTransform;

    :cond_5
    iget-object v11, v8, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-nez v11, :cond_6

    sget-object v11, Landroidx/compose/ui/text/style/TextGeometricTransform;->c:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/text/style/TextGeometricTransform;->d:Landroidx/compose/ui/text/style/TextGeometricTransform;

    :cond_6
    new-instance v12, Landroidx/compose/ui/text/style/TextGeometricTransform;

    iget v9, v10, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    move-wide/from16 v22, v13

    iget v13, v11, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    invoke-static {v9, v13, v1}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result v9

    iget v10, v10, Landroidx/compose/ui/text/style/TextGeometricTransform;->b:F

    iget v11, v11, Landroidx/compose/ui/text/style/TextGeometricTransform;->b:F

    invoke-static {v10, v11, v1}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result v10

    invoke-direct {v12, v9, v10}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {v1, v9, v10}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v24, v9

    check-cast v24, Landroidx/compose/ui/text/intl/LocaleList;

    iget-wide v9, v3, Landroidx/compose/ui/text/SpanStyle;->l:J

    iget-wide v13, v8, Landroidx/compose/ui/text/SpanStyle;->l:J

    invoke-static {v9, v10, v13, v14, v1}, Landroidx/compose/ui/graphics/ColorKt;->g(JJF)J

    move-result-wide v25

    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v1, v9, v10}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v27, v9

    check-cast v27, Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    if-nez v9, :cond_7

    if-nez v10, :cond_7

    move-object/from16 p2, v12

    const/16 v28, 0x0

    goto :goto_4

    :cond_7
    if-nez v9, :cond_8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v13, v10, Landroidx/compose/ui/graphics/Shadow;->a:J

    const/4 v9, 0x0

    invoke-static {v9, v13, v14}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v29

    iget-wide v13, v10, Landroidx/compose/ui/graphics/Shadow;->b:J

    iget v9, v10, Landroidx/compose/ui/graphics/Shadow;->c:F

    new-instance v28, Landroidx/compose/ui/graphics/Shadow;

    const/16 v34, 0x0

    move/from16 v33, v9

    move-wide/from16 v31, v13

    invoke-direct/range {v28 .. v34}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v9, v28

    invoke-static {v9, v10, v1}, Landroidx/compose/ui/graphics/ShadowKt;->a(Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/Shadow;F)Landroidx/compose/ui/graphics/Shadow;

    move-result-object v9

    move-object/from16 v28, v9

    move-object/from16 p2, v12

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    if-nez v10, :cond_9

    move-object/from16 p2, v12

    iget-wide v11, v9, Landroidx/compose/ui/graphics/Shadow;->a:J

    invoke-static {v13, v11, v12}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v29

    iget-wide v10, v9, Landroidx/compose/ui/graphics/Shadow;->b:J

    iget v12, v9, Landroidx/compose/ui/graphics/Shadow;->c:F

    new-instance v28, Landroidx/compose/ui/graphics/Shadow;

    const/16 v34, 0x0

    move-wide/from16 v31, v10

    move/from16 v33, v12

    invoke-direct/range {v28 .. v34}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v10, v28

    invoke-static {v9, v10, v1}, Landroidx/compose/ui/graphics/ShadowKt;->a(Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/Shadow;F)Landroidx/compose/ui/graphics/Shadow;

    move-result-object v9

    :goto_3
    move-object/from16 v28, v9

    goto :goto_4

    :cond_9
    move-object/from16 p2, v12

    invoke-static {v9, v10, v1}, Landroidx/compose/ui/graphics/ShadowKt;->a(Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/Shadow;F)Landroidx/compose/ui/graphics/Shadow;

    move-result-object v9

    goto :goto_3

    :goto_4
    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/text/PlatformSpanStyle;

    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/text/PlatformSpanStyle;

    if-nez v9, :cond_a

    if-nez v10, :cond_a

    const/16 v29, 0x0

    goto :goto_5

    :cond_a
    if-nez v9, :cond_b

    sget-object v9, Landroidx/compose/ui/text/PlatformSpanStyle;->a:Landroidx/compose/ui/text/PlatformSpanStyle$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/text/PlatformSpanStyle;->b:Landroidx/compose/ui/text/PlatformSpanStyle;

    :cond_b
    if-nez v10, :cond_c

    sget-object v10, Landroidx/compose/ui/text/PlatformSpanStyle;->a:Landroidx/compose/ui/text/PlatformSpanStyle$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    move-object/from16 v29, v9

    :goto_5
    iget-object v3, v3, Landroidx/compose/ui/text/SpanStyle;->p:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    iget-object v8, v8, Landroidx/compose/ui/text/SpanStyle;->p:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-static {v1, v3, v8}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    new-instance v11, Landroidx/compose/ui/text/SpanStyle;

    new-instance v3, Landroidx/compose/ui/text/style/BaselineShift;

    invoke-direct {v3, v5}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    const/16 v31, 0x0

    move-object/from16 v12, p1

    move-wide/from16 v13, v22

    move-object/from16 v23, p2

    move-object/from16 v22, v3

    const/4 v3, 0x0

    invoke-direct/range {v11 .. v31}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v2, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v5, v7, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    sget v7, Landroidx/compose/ui/text/ParagraphStyleKt;->b:I

    new-instance v12, Landroidx/compose/ui/text/ParagraphStyle;

    iget v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    new-instance v8, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v8, v7}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    iget v7, v5, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    new-instance v9, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v9, v7}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    invoke-static {v1, v8, v9}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/style/TextAlign;

    iget v13, v7, Landroidx/compose/ui/text/style/TextAlign;->a:I

    iget v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    new-instance v8, Landroidx/compose/ui/text/style/TextDirection;

    invoke-direct {v8, v7}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    iget v7, v5, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    new-instance v9, Landroidx/compose/ui/text/style/TextDirection;

    invoke-direct {v9, v7}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    invoke-static {v1, v8, v9}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/style/TextDirection;

    iget v14, v7, Landroidx/compose/ui/text/style/TextDirection;->a:I

    iget-wide v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    iget-wide v9, v5, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    invoke-static {v7, v8, v9, v10, v1}, Landroidx/compose/ui/text/SpanStyleKt;->c(JJF)J

    move-result-wide v15

    iget-object v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v7, :cond_d

    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->c:Landroidx/compose/ui/text/style/TextIndent$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->d:Landroidx/compose/ui/text/style/TextIndent;

    :cond_d
    iget-object v8, v5, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v8, :cond_e

    sget-object v8, Landroidx/compose/ui/text/style/TextIndent;->c:Landroidx/compose/ui/text/style/TextIndent$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/text/style/TextIndent;->d:Landroidx/compose/ui/text/style/TextIndent;

    :cond_e
    new-instance v17, Landroidx/compose/ui/text/style/TextIndent;

    iget-wide v9, v7, Landroidx/compose/ui/text/style/TextIndent;->a:J

    move-object/from16 p1, v4

    iget-wide v3, v8, Landroidx/compose/ui/text/style/TextIndent;->a:J

    invoke-static {v9, v10, v3, v4, v1}, Landroidx/compose/ui/text/SpanStyleKt;->c(JJF)J

    move-result-wide v18

    iget-wide v3, v7, Landroidx/compose/ui/text/style/TextIndent;->b:J

    iget-wide v7, v8, Landroidx/compose/ui/text/style/TextIndent;->b:J

    invoke-static {v3, v4, v7, v8, v1}, Landroidx/compose/ui/text/SpanStyleKt;->c(JJF)J

    move-result-wide v20

    const/16 v22, 0x0

    invoke-direct/range {v17 .. v22}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    iget-object v4, v5, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-nez v3, :cond_f

    if-nez v4, :cond_f

    const/16 v18, 0x0

    goto :goto_6

    :cond_f
    if-nez v3, :cond_10

    sget-object v3, Landroidx/compose/ui/text/PlatformParagraphStyle;->c:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/PlatformParagraphStyle;->d:Landroidx/compose/ui/text/PlatformParagraphStyle;

    :cond_10
    if-nez v4, :cond_11

    sget-object v4, Landroidx/compose/ui/text/PlatformParagraphStyle;->c:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/text/PlatformParagraphStyle;->d:Landroidx/compose/ui/text/PlatformParagraphStyle;

    :cond_11
    iget-boolean v7, v3, Landroidx/compose/ui/text/PlatformParagraphStyle;->a:Z

    iget-boolean v8, v4, Landroidx/compose/ui/text/PlatformParagraphStyle;->a:Z

    if-ne v7, v8, :cond_12

    move-object/from16 v18, v3

    goto :goto_6

    :cond_12
    new-instance v7, Landroidx/compose/ui/text/PlatformParagraphStyle;

    iget v8, v3, Landroidx/compose/ui/text/PlatformParagraphStyle;->b:I

    new-instance v9, Landroidx/compose/ui/text/EmojiSupportMatch;

    invoke-direct {v9, v8}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    iget v8, v4, Landroidx/compose/ui/text/PlatformParagraphStyle;->b:I

    new-instance v10, Landroidx/compose/ui/text/EmojiSupportMatch;

    invoke-direct {v10, v8}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    invoke-static {v1, v9, v10}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/EmojiSupportMatch;

    iget v8, v8, Landroidx/compose/ui/text/EmojiSupportMatch;->a:I

    iget-boolean v3, v3, Landroidx/compose/ui/text/PlatformParagraphStyle;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v4, Landroidx/compose/ui/text/PlatformParagraphStyle;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v7, v8, v3, v4}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v18, v7

    :goto_6
    iget-object v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    iget-object v4, v5, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    invoke-static {v1, v3, v4}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroidx/compose/ui/text/style/LineHeightStyle;

    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    new-instance v4, Landroidx/compose/ui/text/style/LineBreak;

    invoke-direct {v4, v3}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    iget v3, v5, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    new-instance v7, Landroidx/compose/ui/text/style/LineBreak;

    invoke-direct {v7, v3}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    invoke-static {v1, v4, v7}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/style/LineBreak;

    iget v3, v3, Landroidx/compose/ui/text/style/LineBreak;->a:I

    iget v4, v2, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    new-instance v7, Landroidx/compose/ui/text/style/Hyphens;

    invoke-direct {v7, v4}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    iget v4, v5, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    new-instance v8, Landroidx/compose/ui/text/style/Hyphens;

    invoke-direct {v8, v4}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    invoke-static {v1, v7, v8}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/style/Hyphens;

    iget v4, v4, Landroidx/compose/ui/text/style/Hyphens;->a:I

    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    iget-object v5, v5, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    invoke-static {v1, v2, v5}, Landroidx/compose/ui/text/SpanStyleKt;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroidx/compose/ui/text/style/TextMotion;

    const/16 v23, 0x0

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-direct/range {v12 .. v23}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v6, v11, v12}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    iget-boolean v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->f:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->g:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v7, v1, Landroidx/compose/ui/graphics/Color;->a:J

    const/16 v21, 0x0

    const v22, 0xfffffe

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v6 .. v22}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v6

    :cond_13
    move-object v2, v6

    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->e:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v1, Landroidx/compose/ui/graphics/Color;->a:J

    new-instance v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1$1;

    iget-object v5, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->h:Lkotlin/jvm/functions/Function3;

    iget-object v0, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->i:Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    invoke-direct {v1, v5, v0}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;)V

    const v0, 0x44fdd1bf

    move-object/from16 v5, p1

    invoke-static {v0, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-wide/from16 v35, v3

    move-object v3, v0

    move-wide/from16 v0, v35

    move-object v4, v5

    const/16 v5, 0x180

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/TextFieldImplKt;->b(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_7

    :cond_14
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
