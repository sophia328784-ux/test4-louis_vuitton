.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/SheetValue;",
        "currentBottomSheetState",
        "",
        "currentAlphaValue",
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

.field public static final b:F

.field public static final c:Ljh;

.field public static final d:Ljh;

.field public static final e:Ljh;

.field public static final f:Ljh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x43100000    # 144.0f

    sput v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    const/high16 v0, 0x42880000    # 68.0f

    sput v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->b:F

    new-instance v0, Ljh;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljh;-><init>(I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->c:Ljh;

    new-instance v0, Ljh;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljh;-><init>(I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->d:Ljh;

    new-instance v0, Ljh;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljh;-><init>(I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->e:Ljh;

    new-instance v0, Ljh;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljh;-><init>(I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->f:Ljh;

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x4238694d

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    move-object/from16 v6, p1

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_3

    :cond_3
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v0, v4

    move-object/from16 v4, p4

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x4000

    goto :goto_4

    :cond_4
    const/16 v5, 0x2000

    :goto_4
    or-int/2addr v0, v5

    move-object/from16 v5, p5

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v7, 0x10000

    :goto_5
    or-int/2addr v0, v7

    const v7, 0x12493

    and-int/2addr v7, v0

    const v10, 0x12492

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v7, v10, :cond_6

    move v7, v12

    goto :goto_6

    :cond_6
    move v7, v11

    :goto_6
    and-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v10, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array v7, v11, [Landroidx/navigation/Navigator;

    invoke-static {v7, v9}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v13, :cond_7

    sget-object v10, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    invoke-static {v10}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v10, Landroidx/compose/runtime/MutableState;

    invoke-static {v9}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;->a(Landroidx/compose/runtime/Composer;)Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v15, :cond_8

    if-ne v11, v13, :cond_9

    :cond_8
    new-instance v11, Luk;

    invoke-direct {v11, v14}, Luk;-><init>(Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v11, Landroidx/navigation/NavController$OnDestinationChangedListener;

    invoke-virtual {v7, v11}, Landroidx/navigation/NavController;->a(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v0, v0, 0xe

    if-eq v0, v2, :cond_a

    const/4 v14, 0x0

    goto :goto_7

    :cond_a
    move v14, v12

    :goto_7
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v14, v15

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_b

    if-ne v15, v13, :cond_c

    :cond_b
    new-instance v15, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt$CatalogStoreMode$2$1;

    const/4 v14, 0x0

    invoke-direct {v15, v1, v7, v14}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt$CatalogStoreMode$2$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v11, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eq v0, v2, :cond_d

    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    move v0, v12

    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_e

    if-ne v2, v13, :cond_f

    :cond_e
    new-instance v2, Lqk;

    invoke-direct {v2, v1, v12}, Lqk;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-static {v0, v2, v9, v0, v12}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_10

    invoke-static {v9}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v0

    :cond_10
    check-cast v0, Landroidx/compose/material3/SnackbarHostState;

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v19

    new-instance v2, Lu;

    const/16 v11, 0x12

    invoke-direct {v2, v3, v8, v1, v11}, Lu;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    const v11, -0xa8a0308

    invoke-static {v11, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    new-instance v2, Lg0;

    const/16 v12, 0xf

    invoke-direct {v2, v0, v12}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v0, 0x52083879

    invoke-static {v0, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    new-instance v0, Lw0;

    move-object v2, v1

    move-object v1, v7

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lw0;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Landroidx/compose/runtime/MutableState;)V

    const v1, -0x7c218b3e

    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    const v22, 0x30000d80

    const/16 v23, 0xf3

    move-object/from16 v21, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-static/range {v9 .. v23}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_9

    :cond_11
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_12

    new-instance v0, Lu1;

    const/16 v8, 0x8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    const v0, -0x5e789920

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    move-object/from16 v6, p0

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int v1, p9, v1

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v1, v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v1, v4

    move-object/from16 v8, p4

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x4000

    goto :goto_3

    :cond_3
    const/16 v4, 0x2000

    :goto_3
    or-int/2addr v1, v4

    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v4, 0x10000

    :goto_4
    or-int/2addr v1, v4

    move-object/from16 v4, p6

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v5, 0x80000

    :goto_5
    or-int/2addr v1, v5

    move-object/from16 v9, p7

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x800000

    goto :goto_6

    :cond_6
    const/high16 v5, 0x400000

    :goto_6
    or-int/2addr v1, v5

    const v5, 0x492493

    and-int/2addr v5, v1

    const v10, 0x492492

    const/4 v11, 0x1

    if-eq v5, v10, :cond_7

    move v5, v11

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    :goto_7
    and-int/lit8 v10, v1, 0x1

    invoke-virtual {v0, v10, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0, v11}, Lcom/vuitton/android/designkit/components/ScreenDimensionsKt;->a(Landroidx/compose/runtime/Composer;I)F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->c(F)I

    move-result v5

    int-to-float v15, v5

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v5, v5

    invoke-static {v5}, Lkotlin/math/MathKt;->c(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v15, v5

    sget v10, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt;->a:F

    sub-float v10, v15, v10

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    sub-float/2addr v10, v11

    sget v11, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/SearchBottomBarKt;->a:F

    sub-float/2addr v10, v11

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v14, :cond_8

    const v13, 0x3e4ccccd    # 0.2f

    invoke-static {v13}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v18, v13

    check-cast v18, Landroidx/compose/runtime/MutableFloatState;

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0xe

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v13, p2

    invoke-static {v13, v0, v1, v2}, Landroidx/compose/material3/BottomSheetScaffoldKt;->e(Landroidx/compose/material3/SheetValue;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroidx/compose/material3/BottomSheetScaffoldKt;->d(Landroidx/compose/material3/SheetState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/BottomSheetScaffoldState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v2, :cond_a

    if-ne v12, v14, :cond_9

    goto :goto_8

    :cond_9
    move/from16 v20, v11

    move-object/from16 v11, p3

    goto :goto_9

    :cond_a
    :goto_8
    new-instance v12, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt$InBottomSheetNavigation$1$1;

    const/4 v2, 0x0

    move/from16 v20, v11

    move-object/from16 v11, p3

    invoke-direct {v12, v1, v11, v2}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt$InBottomSheetNavigation$1$1;-><init>(Landroidx/compose/material3/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_9
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/navigation/Navigator;

    invoke-static {v2, v0}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v2

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 p8, v2

    const-string v2, "InBottomSheetNavigation"

    invoke-direct {v12, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    or-int v2, v2, v16

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    or-int v2, v2, v16

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    or-int v2, v2, v16

    move-object/from16 v16, v1

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v2, :cond_c

    if-ne v1, v14, :cond_b

    goto :goto_a

    :cond_b
    move v2, v5

    move/from16 v17, v10

    move-object/from16 v14, v16

    goto :goto_b

    :cond_c
    :goto_a
    new-instance v13, Lrk;

    const/16 v19, 0x0

    move/from16 v17, v10

    move-object/from16 v14, v16

    move/from16 v16, v5

    invoke-direct/range {v13 .. v19}, Lrk;-><init>(Ljava/lang/Object;FFFLjava/lang/Object;I)V

    move/from16 v2, v16

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v13

    :goto_b
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v1}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVShape;->d:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/4 v5, 0x0

    invoke-static {v5}, Landroidx/compose/foundation/shape/CornerSizeKt;->b(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v24

    invoke-static {v5}, Landroidx/compose/foundation/shape/CornerSizeKt;->b(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v25

    const/16 v26, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v1

    invoke-static/range {v21 .. v26}, Landroidx/compose/foundation/shape/CornerBasedShape;->c(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;I)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object v15, v12

    iget-wide v11, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sub-float v16, v2, v20

    new-instance v1, Lsk;

    move-object/from16 v5, p8

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    move/from16 v3, v17

    invoke-direct/range {v1 .. v10}, Lsk;-><init>(FFLcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    const v3, 0x198e2aef

    invoke-static {v3, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$CatalogStoreModeKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$CatalogStoreModeKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v7

    move-wide v7, v11

    sget-object v12, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$CatalogStoreModeKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v1, Ltk;

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v3, p1

    move-object/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Ltk;-><init>(FLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, -0x68a37ebb

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    const v23, 0x180006

    const v24, 0xfb90

    const/4 v5, 0x0

    move-object v1, v9

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v13

    const/4 v13, 0x0

    move-object v3, v14

    const/4 v14, 0x0

    move-object v2, v15

    const/4 v15, 0x0

    move/from16 v4, v16

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v22, 0x6

    move-object/from16 v21, v0

    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/BottomSheetScaffoldKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    goto :goto_c

    :cond_d
    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lq8;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lq8;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p5

    const-string v1, "StoreModeExploreScreen"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, -0x7fc5dbd2

    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    or-int/lit8 v3, p7, 0x6

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_0

    :cond_1
    const/16 v4, 0x10

    :goto_0
    or-int/2addr v3, v4

    move-object/from16 v4, p2

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x100

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    const/16 v5, 0x80

    :goto_1
    or-int/2addr v3, v5

    move-object/from16 v5, p3

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x800

    if-eqz v9, :cond_3

    move v9, v10

    goto :goto_2

    :cond_3
    const/16 v9, 0x400

    :goto_2
    or-int/2addr v3, v9

    move-object/from16 v9, p4

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    const/16 v12, 0x4000

    if-eqz v11, :cond_4

    move v11, v12

    goto :goto_3

    :cond_4
    const/16 v11, 0x2000

    :goto_3
    or-int/2addr v3, v11

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    const/high16 v13, 0x20000

    if-eqz v11, :cond_5

    move v11, v13

    goto :goto_4

    :cond_5
    const/high16 v11, 0x10000

    :goto_4
    or-int/2addr v3, v11

    const v11, 0x12493

    and-int/2addr v11, v3

    const v14, 0x12492

    const/16 v16, 0x1

    if-eq v11, v14, :cond_6

    move/from16 v11, v16

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :goto_5
    and-int/lit8 v14, v3, 0x1

    invoke-virtual {v8, v14, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_10

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->f:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    iget v1, v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;->a:I

    if-lez v1, :cond_7

    move/from16 v1, v16

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/high16 v14, 0x70000

    and-int/2addr v14, v3

    if-ne v14, v13, :cond_8

    move/from16 v13, v16

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v13, :cond_9

    if-ne v14, v15, :cond_a

    :cond_9
    new-instance v14, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt$StoreModeExploreScreen$1$1;

    const/4 v13, 0x0

    invoke-direct {v14, v7, v13}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt$StoreModeExploreScreen$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v11, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit16 v11, v3, 0x380

    if-ne v11, v6, :cond_b

    move/from16 v6, v16

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    or-int/2addr v6, v11

    const v11, 0xe000

    and-int/2addr v11, v3

    if-ne v11, v12, :cond_c

    move/from16 v11, v16

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    :goto_9
    or-int/2addr v6, v11

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    and-int/lit16 v3, v3, 0x1c00

    if-ne v3, v10, :cond_d

    goto :goto_a

    :cond_d
    const/16 v16, 0x0

    :goto_a
    or-int v3, v6, v16

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_e

    if-ne v6, v15, :cond_f

    :cond_e
    move-object v3, v0

    goto :goto_b

    :cond_f
    move-object v3, v0

    goto :goto_c

    :goto_b
    new-instance v0, Lnh;

    move-object v6, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lnh;-><init>(ZLcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v0

    :goto_c
    move-object/from16 v16, v6

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v19, 0x1fe

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x6

    move-object/from16 v17, v8

    move-object v8, v3

    invoke-static/range {v8 .. v19}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v3

    goto :goto_d

    :cond_10
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_d
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_11

    new-instance v0, Lu1;

    const/4 v8, 0x7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v7

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method
