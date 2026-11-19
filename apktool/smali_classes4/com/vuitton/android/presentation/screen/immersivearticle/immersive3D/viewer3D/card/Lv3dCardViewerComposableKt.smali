.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u00a8\u0006\t\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0008\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "localGyro",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "isStartAnimationFinished",
        "isSceneLoaded",
        "isCardLoaded",
        "isFrontCardLoaded",
        "is3dError",
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
.field public static final a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;

    const/16 v8, 0x7e

    const/4 v9, 0x0

    const-string v1, "models/card_scene"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$BlossomConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const-string v1, "Lv3dCardViewerComposable"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;->e:Landroid/graphics/Bitmap;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;->d:Landroid/graphics/Bitmap;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x51082a7a

    move-object/from16 v6, p7

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    iget-object v5, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v6, p9, 0x1

    if-eqz v6, :cond_1

    or-int/lit8 v8, p8, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x4

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    :goto_0
    or-int v8, p8, v8

    :goto_1
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    goto :goto_2

    :cond_3
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v8, v10

    or-int/lit16 v10, v8, 0x180

    and-int/lit8 v12, p9, 0x10

    if-eqz v12, :cond_4

    or-int/lit16 v8, v8, 0x6180

    move v10, v8

    move-object/from16 v8, p4

    :goto_3
    move-object/from16 v24, v5

    move-object/from16 v5, p5

    goto :goto_5

    :cond_4
    move-object/from16 v8, p4

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/16 v14, 0x4000

    goto :goto_4

    :cond_5
    const/16 v14, 0x2000

    :goto_4
    or-int/2addr v10, v14

    goto :goto_3

    :goto_5
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/high16 v14, 0x20000

    goto :goto_6

    :cond_6
    const/high16 v14, 0x10000

    :goto_6
    or-int/2addr v10, v14

    and-int/lit8 v14, p9, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_8

    or-int/2addr v10, v15

    :cond_7
    move-object/from16 v15, p6

    goto :goto_8

    :cond_8
    and-int v15, p8, v15

    if-nez v15, :cond_7

    move-object/from16 v15, p6

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/high16 v16, 0x100000

    goto :goto_7

    :cond_9
    const/high16 v16, 0x80000

    :goto_7
    or-int v10, v10, v16

    :goto_8
    const v16, 0x92493

    const/16 p0, 0x2

    and-int v7, v10, v16

    const v11, 0x92492

    move/from16 v25, v10

    const/4 v10, 0x0

    if-eq v7, v11, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    move v7, v10

    :goto_9
    and-int/lit8 v11, v25, 0x1

    invoke-virtual {v9, v11, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_3a

    if-eqz v6, :cond_b

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_b
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v12, :cond_d

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_c

    new-instance v7, Lfa0;

    const/4 v8, 0x6

    invoke-direct {v7, v8}, Lfa0;-><init>(I)V

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object/from16 v37, v7

    move-object v7, v4

    move-object/from16 v4, v37

    goto :goto_a

    :cond_d
    move-object v7, v4

    move-object v4, v8

    :goto_a
    const/4 v8, 0x7

    if-eqz v14, :cond_f

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_e

    new-instance v11, Lfa0;

    invoke-direct {v11, v8}, Lfa0;-><init>(I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v11, Lkotlin/jvm/functions/Function0;

    move-object/from16 v29, v11

    goto :goto_b

    :cond_f
    move-object/from16 v29, v15

    :goto_b
    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v11, Landroidx/compose/ui/platform/InspectionModeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    sget-object v12, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const/4 v14, 0x0

    if-eqz v11, :cond_12

    const v3, -0x3ab3d983

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v3, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v6, v7, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget-wide v7, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v9, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v24, :cond_11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_10

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_10
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v6, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v6, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v12, v1, v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v27, 0x0

    const v28, 0x3fff8

    const-string v6, "This is 3d !"

    move-object/from16 v25, v9

    move v1, v10

    move-wide v8, v11

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/4 v3, 0x1

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x6

    move/from16 v37, v3

    move v3, v1

    move/from16 v1, v37

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v9, v25

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_3b

    move-object v1, v0

    new-instance v0, Loa;

    move-object/from16 v3, p3

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v6, v29

    invoke-direct/range {v0 .. v8}, Loa;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$BlossomConfiguration;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_11
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v14

    :cond_12
    move-object v5, v4

    move v15, v10

    move-object/from16 v10, v29

    const/4 v11, 0x1

    move-object/from16 v4, p3

    const v8, -0x3aaefef8

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_13

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v8, Landroidx/compose/runtime/MutableState;

    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Context;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v6, :cond_14

    sget-object v15, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v15, v9}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v17, v15

    check-cast v17, Lkotlinx/coroutines/CoroutineScope;

    sget-object v15, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v9}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v6, :cond_15

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v13}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v13, Landroidx/compose/runtime/MutableState;

    move/from16 p6, v11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_16

    new-instance v11, Landroid/view/SurfaceView;

    invoke-direct {v11, v14}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v11, Landroid/view/SurfaceView;

    move-object/from16 v27, v8

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_17

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v18, v11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_18

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v11, Landroidx/compose/runtime/MutableState;

    move-object/from16 v19, v14

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v6, :cond_19

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v14}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v14, Landroidx/compose/runtime/MutableState;

    move-object/from16 v20, v15

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v6, :cond_1a

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v15}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v15, Landroidx/compose/runtime/MutableState;

    move-object/from16 v28, v12

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v29, v1

    if-ne v12, v6, :cond_25

    new-instance v12, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    new-instance v1, Lc30;

    move-object/from16 v21, v12

    const/16 v12, 0xa

    invoke-direct {v1, v12, v8}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    new-instance v12, Lc30;

    move-object/from16 v22, v1

    const/16 v1, 0xb

    invoke-direct {v12, v1, v14}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    new-instance v1, Lc30;

    move-object/from16 v30, v12

    const/16 v12, 0xc

    invoke-direct {v1, v12, v11}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    new-instance v12, Lc30;

    move-object/from16 v31, v1

    const/16 v1, 0x9

    invoke-direct {v12, v1, v13}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    new-instance v1, Lx3;

    move-object/from16 v32, v12

    const/16 v12, 0xb

    invoke-direct {v1, v4, v15, v12}, Lx3;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    new-instance v12, Lpy;

    move-object/from16 v23, v1

    const/16 v1, 0x19

    invoke-direct {v12, v10, v1}, Lpy;-><init>(Lkotlin/jvm/functions/Function0;I)V

    move-object/from16 p4, v30

    move-object/from16 v30, v15

    move-object/from16 v15, v18

    move-object/from16 v18, p4

    move-object/from16 p4, v32

    move-object/from16 v32, v20

    move-object/from16 v20, p4

    move-object/from16 p4, v14

    move-object/from16 v1, v17

    move-object/from16 v16, v19

    move-object/from16 v14, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v23

    move-object/from16 v19, v31

    move-object/from16 v23, p5

    move-object/from16 v31, v10

    move-object/from16 v22, v12

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v14 .. v23}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;-><init>(Landroid/view/SurfaceView;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V

    move/from16 v22, v10

    move-object/from16 v33, v15

    move-object/from16 v15, v16

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;->a:Ljava/lang/String;

    move-object/from16 v23, v12

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;->b:Landroid/graphics/Bitmap;

    move-object/from16 v20, v13

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;->c:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_1b

    iput-object v12, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->J:Landroid/graphics/Bitmap;

    :cond_1b
    if-eqz v13, :cond_1c

    iput-object v13, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->K:Landroid/graphics/Bitmap;

    :cond_1c
    if-eqz v7, :cond_1d

    iput-object v7, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->L:Landroid/graphics/Bitmap;

    :cond_1d
    if-eqz v3, :cond_1e

    iput-object v3, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->M:Landroid/graphics/Bitmap;

    :cond_1e
    if-eqz v10, :cond_24

    const-string v12, ".gltf"

    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->a:Landroid/view/SurfaceView;

    invoke-static {v12, v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->c(Landroid/view/SurfaceView;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v13

    iget-object v2, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    move-object/from16 v16, v3

    iget v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->l:I

    move-object/from16 v17, v7

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    invoke-virtual {v13, v3}, Lcom/google/android/filament/EntityManager;->b(I)V

    const-string v3, "models/sneakers_ibl.ktx"

    invoke-static {v12, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->c(Landroid/view/SurfaceView;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    new-instance v13, Lcom/google/android/filament/utils/KTX1Loader$Options;

    invoke-direct {v13}, Lcom/google/android/filament/utils/KTX1Loader$Options;-><init>()V

    move-object/from16 v34, v0

    sget-object v0, Lcom/google/android/filament/utils/KTX1Loader;->a:Lcom/google/android/filament/utils/KTX1Loader;

    invoke-virtual {v0, v12, v3, v13}, Lcom/google/android/filament/utils/KTX1Loader;->a(Lcom/google/android/filament/Engine;Ljava/nio/ByteBuffer;Lcom/google/android/filament/utils/KTX1Loader$Options;)Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;->a:Lcom/google/android/filament/Texture;

    iget-object v3, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;

    if-eqz v0, :cond_1f

    new-instance v13, Lcom/google/android/filament/IndirectLight$Builder;

    invoke-direct {v13}, Lcom/google/android/filament/IndirectLight$Builder;-><init>()V

    move-object/from16 v18, v1

    invoke-virtual {v0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    move-object/from16 v35, v5

    iget-wide v4, v13, Lcom/google/android/filament/IndirectLight$Builder;->b:J

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/filament/IndirectLight;->b(JJ)V

    iget v0, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->a:F

    invoke-static {v0, v4, v5}, Lcom/google/android/filament/IndirectLight;->e(FJ)V

    invoke-virtual {v13, v12}, Lcom/google/android/filament/IndirectLight$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndirectLight;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/filament/Scene;->f(Lcom/google/android/filament/IndirectLight;)V

    goto :goto_d

    :cond_1f
    move-object/from16 v18, v1

    move-object/from16 v35, v5

    :goto_d
    const-string v0, "materials/lit.filamat"

    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->v:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v4, Lcom/google/android/filament/Material$Builder;

    invoke-direct {v4}, Lcom/google/android/filament/Material$Builder;-><init>()V

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    iput-object v0, v4, Lcom/google/android/filament/Material$Builder;->a:Ljava/nio/ByteBuffer;

    iput v5, v4, Lcom/google/android/filament/Material$Builder;->b:I

    invoke-virtual {v4, v12}, Lcom/google/android/filament/Material$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Material;

    move-result-object v0

    iput-object v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->D:Lcom/google/android/filament/Material;

    invoke-virtual {v0}, Lcom/google/android/filament/Material;->b()Lcom/google/android/filament/MaterialInstance;

    move-result-object v0

    iput-object v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->E:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0802bc

    sget-object v4, Lcom/google/android/filament/utils/TextureType;->COLOR:Lcom/google/android/filament/utils/TextureType;

    invoke-static {v12, v0, v1, v4}, Lcom/google/android/filament/utils/TextureLoaderKt;->a(Lcom/google/android/filament/Engine;Landroid/content/res/Resources;ILcom/google/android/filament/utils/TextureType;)Lcom/google/android/filament/Texture;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/TextureSampler;

    invoke-direct {v1}, Lcom/google/android/filament/TextureSampler;-><init>()V

    iget-object v4, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->E:Lcom/google/android/filament/MaterialInstance;

    const-string v5, "materialInstance"

    if-eqz v4, :cond_23

    const-string v13, "texture"

    invoke-virtual {v4, v13, v0, v1}, Lcom/google/android/filament/MaterialInstance;->i(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    iget-object v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->E:Lcom/google/android/filament/MaterialInstance;

    if-eqz v0, :cond_22

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;Lcom/google/android/filament/MaterialInstance;)Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

    move-result-object v0

    iput-object v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->F:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->a:I

    iput v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->n:I

    iget v0, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->b:F

    iget v1, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->o:I

    if-nez v1, :cond_20

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/EntityManager;->a()I

    move-result v1

    iput v1, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->o:I

    :cond_20
    const-string v1, "#AF69EE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    move/from16 v21, v1

    move/from16 v19, v5

    const/4 v5, 0x3

    new-array v1, v5, [F

    aput v4, v1, v22

    aput v13, v1, p6

    aput v21, v1, p0

    new-instance v4, Lcom/google/android/filament/LightManager$Builder;

    sget-object v5, Lcom/google/android/filament/LightManager$Type;->SPOT:Lcom/google/android/filament/LightManager$Type;

    invoke-direct {v4, v5}, Lcom/google/android/filament/LightManager$Builder;-><init>(Lcom/google/android/filament/LightManager$Type;)V

    aget v5, v1, v22

    aget v13, v1, p6

    aget v1, v1, p0

    move-object/from16 v21, v8

    move-object/from16 v36, v9

    iget-wide v8, v4, Lcom/google/android/filament/LightManager$Builder;->b:J

    invoke-static {v8, v9, v5, v13, v1}, Lcom/google/android/filament/LightManager;->c(JFFF)V

    invoke-static {v0, v8, v9}, Lcom/google/android/filament/LightManager;->f(FJ)V

    iget v0, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->f:F

    iget v1, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->g:F

    iget v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->h:F

    invoke-static {v8, v9, v0, v1, v5}, Lcom/google/android/filament/LightManager;->h(JFFF)V

    iget v0, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->c:F

    iget v1, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->d:F

    iget v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->e:F

    invoke-static {v8, v9, v0, v1, v5}, Lcom/google/android/filament/LightManager;->d(JFFF)V

    iget v0, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->i:F

    invoke-static {v0, v0, v8, v9}, Lcom/google/android/filament/LightManager;->i(FFJ)V

    iget v0, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->j:F

    invoke-static {v0, v8, v9}, Lcom/google/android/filament/LightManager;->e(FJ)V

    iget v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->o:I

    invoke-virtual {v4, v12, v0}, Lcom/google/android/filament/LightManager$Builder;->a(Lcom/google/android/filament/Engine;I)V

    iget v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->o:I

    invoke-virtual {v7, v0}, Lcom/google/android/filament/Scene;->b(I)V

    iget v0, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->k:F

    iget v1, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->p:I

    if-nez v1, :cond_21

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/EntityManager;->a()I

    move-result v1

    iput v1, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->p:I

    :cond_21
    const-string v1, "#FAACCB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v19

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v19

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v19

    const/4 v8, 0x3

    new-array v9, v8, [F

    aput v4, v9, v22

    aput v5, v9, p6

    aput v1, v9, p0

    new-instance v1, Lcom/google/android/filament/LightManager$Builder;

    sget-object v4, Lcom/google/android/filament/LightManager$Type;->DIRECTIONAL:Lcom/google/android/filament/LightManager$Type;

    invoke-direct {v1, v4}, Lcom/google/android/filament/LightManager$Builder;-><init>(Lcom/google/android/filament/LightManager$Type;)V

    aget v4, v9, v22

    aget v5, v9, p6

    aget v8, v9, p0

    move-object/from16 p0, v10

    iget-wide v9, v1, Lcom/google/android/filament/LightManager$Builder;->b:J

    invoke-static {v9, v10, v4, v5, v8}, Lcom/google/android/filament/LightManager;->c(JFFF)V

    invoke-static {v0, v9, v10}, Lcom/google/android/filament/LightManager;->f(FJ)V

    invoke-static {v0, v9, v10}, Lcom/google/android/filament/LightManager;->g(FJ)V

    iget v0, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->l:F

    iget v4, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->m:F

    iget v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->n:F

    invoke-static {v9, v10, v0, v4, v3}, Lcom/google/android/filament/LightManager;->d(JFFF)V

    iget v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->p:I

    invoke-virtual {v1, v12, v0}, Lcom/google/android/filament/LightManager$Builder;->a(Lcom/google/android/filament/Engine;I)V

    iget v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->p:I

    invoke-virtual {v7, v0}, Lcom/google/android/filament/Scene;->b(I)V

    move/from16 v1, p6

    iput-boolean v1, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->O:Z

    :try_start_0
    new-instance v0, Ll00;

    const/16 v3, 0x1c

    invoke-direct {v0, v14, v3}, Ll00;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v3, p0

    invoke-virtual {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->c(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->w:Lkotlin/jvm/functions/Function1;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->e()V

    invoke-virtual {v14}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->h()V

    invoke-virtual {v14}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->a()V

    iget-object v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->y:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_e
    move-object/from16 v9, v36

    goto :goto_f

    :catch_0
    iget-object v0, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->A:Lkotlin/jvm/functions/Function1;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_22
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v23

    :cond_23
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v23

    :cond_24
    move-object/from16 v34, v0

    move-object/from16 v18, v1

    move-object/from16 v16, v3

    move-object/from16 v35, v5

    move-object/from16 v17, v7

    move-object/from16 v21, v8

    move/from16 v1, p6

    :goto_f
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v12, v14

    move-object/from16 v0, v32

    goto :goto_10

    :cond_25
    move/from16 v1, p6

    move-object/from16 v34, v0

    move-object/from16 v16, v3

    move-object/from16 v35, v5

    move-object/from16 v21, v8

    move-object/from16 v31, v10

    move-object v2, v12

    move-object/from16 p4, v14

    move-object/from16 v30, v15

    move-object/from16 v33, v18

    move-object/from16 v15, v19

    move-object/from16 v0, v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v13

    move-object/from16 v18, v17

    move-object/from16 v17, v7

    :goto_10
    check-cast v12, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_26

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;

    invoke-direct {v2, v15}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_28

    if-ne v5, v6, :cond_27

    goto :goto_11

    :cond_27
    move-object/from16 v4, p3

    goto :goto_12

    :cond_28
    :goto_11
    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$5$1;

    move-object/from16 v4, p3

    move-object/from16 v8, v21

    move-object/from16 v7, v23

    invoke-direct {v5, v12, v4, v8, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_12
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v16, :cond_2b

    if-eqz v17, :cond_2b

    const v3, -0x3a8dc6eb

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_29

    if-ne v7, v6, :cond_2a

    :cond_29
    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$6$1;

    move-object/from16 v14, p4

    const/4 v5, 0x0

    invoke-direct {v7, v12, v4, v14, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$6$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move/from16 v10, v22

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_2b
    move/from16 v10, v22

    const v3, -0x3a89be98

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const v7, 0xe000

    and-int v7, v25, v7

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_2c

    move v10, v1

    goto :goto_14

    :cond_2c
    const/4 v10, 0x0

    :goto_14
    or-int/2addr v5, v10

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_2e

    if-ne v7, v6, :cond_2d

    goto :goto_15

    :cond_2d
    move-object/from16 v5, v35

    const/4 v8, 0x0

    goto :goto_16

    :cond_2e
    :goto_15
    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$7$1;

    move-object/from16 v5, v35

    const/4 v8, 0x0

    invoke-direct {v7, v12, v5, v11, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$7$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_16
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v15, v18

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v10, v13

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v10, v13

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_30

    if-ne v13, v6, :cond_2f

    goto :goto_17

    :cond_2f
    move-object/from16 v2, v27

    goto :goto_18

    :cond_30
    :goto_17
    new-instance v16, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/a;

    move-object/from16 v18, v2

    move-object/from16 v21, v12

    move-object/from16 v17, v15

    move-object/from16 v19, v27

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/a;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;)V

    move-object/from16 v13, v16

    move-object/from16 v2, v19

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_18
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v7, v13, v9}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_31

    new-instance v3, Lbn;

    const/4 v7, 0x3

    invoke-direct {v3, v12, v2, v7}, Lbn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    check-cast v3, Landroidx/lifecycle/LifecycleEventObserver;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v7, v10

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v7, v10

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_32

    if-ne v10, v6, :cond_33

    :cond_32
    new-instance v10, Ljx;

    const/16 v7, 0x10

    invoke-direct {v10, v3, v0, v12, v7}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_33
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v10, v9}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v2, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    move-object/from16 v7, v34

    invoke-static {v9, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v24, :cond_39

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_34

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    :cond_34
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_19
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v12, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    const v0, -0x4e43327a

    move-object/from16 v2, v29

    invoke-static {v9, v0, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v6, v28

    invoke-virtual {v6, v0, v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v3, 0x7f140720

    invoke-static {v9, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    sget-object v14, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v14, Landroidx/compose/ui/text/style/TextAlign;->e:I

    new-instance v15, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v15, v14}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v27, 0x0

    const v28, 0x3fbf8

    move/from16 v22, v10

    move-object v14, v11

    const-wide/16 v10, 0x0

    move-object/from16 v23, v8

    move-object/from16 v25, v9

    move-wide v8, v12

    const/4 v12, 0x0

    move-object/from16 v16, v14

    const-wide/16 v13, 0x0

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v19, v17

    const-wide/16 v17, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v21, v20

    const/16 v20, 0x0

    move-object/from16 v24, v21

    const/16 v21, 0x0

    move/from16 v26, v22

    const/16 v22, 0x0

    move-object/from16 v29, v23

    const/16 v23, 0x0

    move-object/from16 v32, v24

    const/16 v24, 0x0

    move/from16 v33, v26

    const/16 v26, 0x0

    move-object v1, v6

    move-object v6, v3

    move-object v3, v1

    move-object/from16 v34, v7

    move-object/from16 v1, v29

    move-object v7, v0

    move/from16 v0, v33

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v9, v25

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_35
    move-object/from16 v34, v7

    move-object v1, v8

    move v0, v10

    move-object/from16 v32, v11

    move-object/from16 v3, v28

    move-object/from16 v2, v29

    const v7, -0x4e3eb6df

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v15, v33

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_36

    if-ne v8, v6, :cond_37

    :cond_36
    new-instance v8, Lya0;

    invoke-direct {v8, v15, v0}, Lya0;-><init>(Landroid/view/SurfaceView;I)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_37
    move-object v6, v8

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->a(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v3, v6, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_38

    const/4 v6, 0x1

    :goto_1b
    const/4 v8, 0x3

    goto :goto_1c

    :cond_38
    move v6, v0

    goto :goto_1b

    :goto_1c
    invoke-static {v1, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->j(Landroidx/compose/animation/core/TweenSpec;FI)Landroidx/compose/animation/ExitTransition;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-static {v1, v2, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v8

    invoke-static {v1, v2, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->i(Landroidx/compose/animation/core/TweenSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v8

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/ComposableSingletons$Lv3dCardViewerComposableKt;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/ComposableSingletons$Lv3dCardViewerComposableKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/ComposableSingletons$Lv3dCardViewerComposableKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v13, 0x30d80

    const/16 v14, 0x10

    const/4 v10, 0x0

    move-object v12, v9

    move-object v9, v0

    invoke-static/range {v6 .. v14}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v9, v12

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v3, v1

    move-object/from16 v7, v31

    move-object/from16 v1, v34

    goto :goto_1d

    :cond_39
    move-object v1, v8

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v1

    :cond_3a
    move-object/from16 v4, p3

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v3, p2

    move-object v1, v0

    move-object v5, v8

    move-object v7, v15

    :goto_1d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_3b

    new-instance v0, Lbg;

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lbg;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$BlossomConfiguration;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3b
    return-void
.end method
