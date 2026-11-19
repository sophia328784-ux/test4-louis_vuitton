.class public abstract Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetsKt;
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


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x43e10000    # 450.0f

    sput v0, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetsKt;->a:F

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const v3, 0x5baf923

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v4, v2, 0x30

    if-nez v4, :cond_3

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    move v4, v6

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    and-int/2addr v3, v6

    invoke-virtual {v15, v3, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;->b:Ljava/lang/String;

    :goto_4
    move-object v6, v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :goto_5
    new-instance v3, Lf1;

    const/16 v4, 0x1a

    invoke-direct {v3, v0, v1, v4}, Lf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v4, -0x72bbea08

    invoke-static {v4, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    const/16 v17, 0x30

    const/16 v18, 0x7fb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-static/range {v4 .. v18}, Lcom/vuitton/android/designkit/components/components/LVCustomBottomSheetContentKt;->a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    goto :goto_6

    :cond_6
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v4, Lg2;

    const/16 v5, 0x14

    invoke-direct {v4, v0, v1, v2, v5}, Lg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    const v2, -0x4419e1d0

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v2, v1, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x1

    if-eq v4, v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    and-int/2addr v2, v5

    invoke-virtual {v14, v2, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->A:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    if-eqz v4, :cond_3

    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    if-nez v4, :cond_4

    const-string v4, ""

    :cond_4
    if-eqz v0, :cond_5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->A:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;->c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    if-eqz v5, :cond_5

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    move-object v5, v3

    new-instance v2, Lla;

    const/4 v3, 0x5

    invoke-direct {v2, v4, v3}, Lla;-><init>(Ljava/lang/String;I)V

    const v3, 0x61e408bb

    invoke-static {v3, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const/16 v16, 0x30

    const/16 v17, 0x7fb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-static/range {v3 .. v17}, Lcom/vuitton/android/designkit/components/components/LVCustomBottomSheetContentKt;->a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    goto :goto_4

    :cond_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Lom;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v1, v4}, Lom;-><init>(Ljava/lang/Object;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final c(Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x1beef288

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p8, v1

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    invoke-virtual {v0, p3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    invoke-virtual {v0, p4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4000

    goto :goto_4

    :cond_4
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v1, v2

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v1, v2

    const v2, 0x92493

    and-int/2addr v2, v1

    const v3, 0x92492

    const/4 v4, 0x0

    if-eq v2, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    move v2, v4

    :goto_7
    and-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetOutOfStock;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetOutOfStock;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x2403c46e

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v2, v1, 0xf

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v1, v1, 0x9

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    invoke-static {v6, p4, v0, v1}, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetsKt;->d(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_8
    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetReinsurance;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetReinsurance;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x2403df14

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v1, v1, 0xf

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    invoke-static {p2, v7, v0, v1}, Lcom/vuitton/android/presentation/screen/reinsurance/components/ReinsuranceBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_9
    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetDisclaimer;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetDisclaimer;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x2403f64a

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {p1, v0, v1}, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetsKt;->b(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_a
    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetCommercial;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetCommercial;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x240408a8

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v1, v1, 0xf

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    invoke-static {p3, v7, v0, v1}, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetsKt;->a(Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_b
    const p0, 0x2403bc64

    invoke-static {v0, p0, v4}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_d

    new-instance v0, Lo;

    const/4 v9, 0x7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public static final d(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const v3, -0xee83c48

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    and-int/lit8 v4, v2, 0x6

    const/4 v5, 0x4

    if-nez v4, :cond_1

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v2

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit8 v6, v2, 0x30

    const/16 v7, 0x20

    if-nez v6, :cond_3

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :cond_3
    and-int/lit8 v6, v4, 0x13

    const/16 v8, 0x12

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v6, v8, :cond_4

    move v6, v9

    goto :goto_3

    :cond_4
    move v6, v10

    :goto_3
    and-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    const/4 v8, 0x3

    if-eqz v6, :cond_9

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v6, 0x7f141201

    invoke-static {v3, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    const v11, 0x7f141200

    invoke-static {v3, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f1411ff

    invoke-static {v3, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/ComposableSingletons$NativeCartBottomSheetsKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/ComposableSingletons$NativeCartBottomSheetsKt;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/ComposableSingletons$NativeCartBottomSheetsKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    and-int/lit8 v14, v4, 0xe

    if-ne v14, v5, :cond_5

    move v5, v9

    goto :goto_4

    :cond_5
    move v5, v10

    :goto_4
    and-int/lit8 v4, v4, 0x70

    if-ne v4, v7, :cond_6

    goto :goto_5

    :cond_6
    move v9, v10

    :goto_5
    or-int v4, v5, v9

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_7

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v4, :cond_8

    :cond_7
    new-instance v5, Lil;

    invoke-direct {v5, v0, v1, v8}, Lil;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v15, v5

    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/16 v25, 0x0

    const v26, 0xff74b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v9, v11

    move-object v11, v12

    const/4 v12, 0x0

    move v14, v8

    move-object v8, v13

    const/4 v13, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v22, v21

    const/16 v21, 0x0

    move/from16 v23, v22

    const/16 v22, 0x0

    const/16 v24, 0x6000

    move/from16 v27, v23

    move-object/from16 v23, v3

    move/from16 v3, v27

    invoke-static/range {v4 .. v26}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_6

    :cond_9
    move-object/from16 v23, v3

    move v3, v8

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_a

    new-instance v5, La9;

    invoke-direct {v5, v0, v1, v2, v3}, La9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method
