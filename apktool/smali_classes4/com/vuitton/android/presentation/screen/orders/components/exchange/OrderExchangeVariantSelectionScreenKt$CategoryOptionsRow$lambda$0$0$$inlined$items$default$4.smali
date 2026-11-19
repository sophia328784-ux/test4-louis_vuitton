.class public final Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
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
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;ZLkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;->c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;->d:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

    if-nez v3, :cond_3

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v1, 0x93

    const/16 v4, 0x92

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    and-int/2addr v1, v5

    invoke-interface {v11, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const v2, 0x5dab961b

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;->c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;->d:Z

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$lambda$0$0$$inlined$items$default$4;->e:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_b

    const v2, 0x5dac70eb

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v2, v5, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v11, v14}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_5
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->o()V

    :goto_4
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v2, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v2, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v7, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v5, v1, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;->d:Z

    sget-object v6, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;->MEDIUM:Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_6

    if-ne v7, v3, :cond_7

    :cond_6
    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$1$1;

    invoke-direct {v7, v0, v1}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;)V

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v9, v7

    check-cast v9, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$2;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$2;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;)V

    const v2, 0x16c58fbe

    invoke-static {v2, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    const v12, 0x6000c00

    const/16 v13, 0x71

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipKt;->b(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;Landroidx/compose/ui/graphics/Color;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move v0, v5

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;->a:Ljava/lang/String;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v16, 0x0

    const/16 v17, 0xd

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v12, v14

    move v14, v1

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v0, :cond_8

    const v1, 0x33bdd912

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_5
    move-wide v5, v1

    goto :goto_6

    :cond_8
    const v1, 0x33bf786c

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :goto_6
    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    const/16 v24, 0x0

    const v25, 0x1fff8

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v22, v11

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v1

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v22

    if-nez v0, :cond_9

    const v0, 0x33c34c6f

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    const v0, 0x7f140994

    invoke-static {v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    const/16 v24, 0x0

    const v25, 0x1fffa

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v22, v11

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v22

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_9
    const v0, 0x33c81bb7

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    move-object/from16 v22, v11

    goto :goto_a

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_b
    const v2, 0x5dc92448

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    move v5, v4

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;->a:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;->d:Z

    if-eqz v6, :cond_c

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator$GreenDot;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator$GreenDot;

    :goto_8
    move-object v7, v2

    goto :goto_9

    :cond_c
    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator$RedDot;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator$RedDot;

    goto :goto_8

    :goto_9
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v2, v8

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_d

    if-ne v8, v3, :cond_e

    :cond_d
    new-instance v8, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$2$1;

    invoke-direct {v8, v0, v1}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;)V

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    move-object/from16 v22, v11

    const/4 v11, 0x1

    const/4 v3, 0x0

    move-object/from16 v9, v22

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->F()V

    :goto_a
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_b

    :cond_f
    move-object/from16 v22, v11

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
