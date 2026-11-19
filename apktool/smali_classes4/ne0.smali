.class public final synthetic Lne0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Ljava/util/List;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lne0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lne0;->e:Ljava/lang/Object;

    iput-object p2, p0, Lne0;->c:Ljava/util/List;

    iput p3, p0, Lne0;->d:I

    iput-object p4, p0, Lne0;->f:Ljava/lang/Object;

    iput-object p5, p0, Lne0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextMeasurer;ILandroid/content/Context;)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lne0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lne0;->c:Ljava/util/List;

    iput-object p2, p0, Lne0;->e:Ljava/lang/Object;

    iput-object p3, p0, Lne0;->f:Ljava/lang/Object;

    iput p4, p0, Lne0;->d:I

    iput-object p5, p0, Lne0;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lne0;->b:I

    const/4 v2, 0x1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v4, v0, Lne0;->g:Ljava/lang/Object;

    iget-object v5, v0, Lne0;->f:Ljava/lang/Object;

    iget-object v6, v0, Lne0;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v8, v6

    check-cast v8, Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function1;

    move-object v13, v4

    check-cast v13, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "SpotlightHotSpots$lambda$27$4$0"

    invoke-direct {v7, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lne0;->c:Ljava/util/List;

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget v12, v0, Lne0;->d:I

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v0

    or-int/2addr v0, v1

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    new-instance v9, Lqw;

    const/4 v14, 0x3

    invoke-direct/range {v9 .. v14}, Lqw;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILandroidx/compose/runtime/MutableState;I)V

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v9

    :cond_1
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2

    if-ne v1, v3, :cond_3

    :cond_2
    new-instance v1, Lp01;

    invoke-direct {v1, v10, v13, v2}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x6

    move-object v11, v4

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v6, Landroidx/compose/ui/text/TextStyle;

    move-object v1, v5

    check-cast v1, Landroidx/compose/ui/text/TextMeasurer;

    move-object v7, v4

    check-cast v7, Landroid/content/Context;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    move-object/from16 v14, p2

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_5

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v4, v5

    :cond_5
    and-int/lit8 v5, v4, 0x13

    const/16 v9, 0x12

    const/4 v10, 0x0

    if-eq v5, v9, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    move v5, v10

    :goto_1
    and-int/2addr v2, v4

    invoke-interface {v14, v2, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v8}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->c()J

    move-result-wide v4

    iget-object v9, v0, Lne0;->c:Ljava/util/List;

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v2, v11

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v2, v11

    invoke-interface {v14, v4, v5}, Landroidx/compose/runtime/Composer;->e(J)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    const/4 v11, 0x0

    if-nez v2, :cond_8

    if-ne v4, v3, :cond_7

    goto :goto_2

    :cond_7
    move-object v3, v6

    goto/16 :goto_5

    :cond_8
    :goto_2
    move-object v2, v9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v2, v7}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v3

    const/16 v13, 0xd

    invoke-static {v10, v3, v10, v10, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v4

    move-object v3, v6

    const/16 v6, 0x3dc

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/text/TextMeasurer;->a(Landroidx/compose/ui/text/TextMeasurer;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JI)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    iget-wide v4, v2, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    const-wide v15, 0xffffffffL

    and-long/2addr v4, v15

    long-to-int v2, v4

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v4, v7}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v5

    invoke-static {v10, v5, v10, v10, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v5

    move/from16 v17, v2

    move-object v2, v4

    move-wide v4, v5

    const/16 v6, 0x3dc

    move/from16 v13, v17

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/text/TextMeasurer;->a(Landroidx/compose/ui/text/TextMeasurer;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JI)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    iget-wide v4, v2, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    and-long/2addr v4, v15

    long-to-int v2, v4

    if-ge v13, v2, :cond_9

    :goto_4
    const/16 v13, 0xd

    goto :goto_3

    :cond_9
    move v2, v13

    goto :goto_4

    :cond_a
    move v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_5
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-interface {v2, v1}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v4

    const/16 v1, 0x1f4

    const/4 v2, 0x6

    invoke-static {v1, v10, v11, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    iget v0, v0, Lne0;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ltk;

    const/4 v6, 0x1

    move-object v5, v3

    move-object v3, v7

    move-object v2, v9

    invoke-direct/range {v1 .. v6}, Ltk;-><init>(Ljava/lang/Object;Landroid/content/Context;FLjava/lang/Object;I)V

    const v2, -0x1759ef84

    invoke-static {v2, v1, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const/16 v15, 0x6d80

    const/16 v16, 0x2

    const/4 v10, 0x0

    const-string v12, "header_content_slide"

    move-object v9, v0

    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/CrossfadeKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_6

    :cond_b
    invoke-static {}, Lb21;->x()V

    goto :goto_7

    :cond_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_7
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
