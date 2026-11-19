.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u00a8\u0006\u0006\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0004\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "isAutoSwipeActivated",
        "isZoomGestureDetected",
        "has3DFocus",
        "isScrollEnabled",
        "isNotificationDragged",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42b00000    # 88.0f

    sput v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt;->a:F

    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt;->b:F

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;FLjava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 38

    move-object/from16 v12, p1

    move-object/from16 v6, p5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x4faac01

    move-object/from16 v1, p25

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p26, v2

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    move/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x100

    goto :goto_2

    :cond_2
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v2, v9

    move-object/from16 v9, p3

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x800

    goto :goto_3

    :cond_3
    const/16 v13, 0x400

    :goto_3
    or-int/2addr v2, v13

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    const/16 v16, 0x2000

    const/16 v17, 0x4000

    if-eqz v13, :cond_4

    move/from16 v13, v17

    goto :goto_4

    :cond_4
    move/from16 v13, v16

    :goto_4
    or-int/2addr v2, v13

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    const/high16 v18, 0x10000

    const/high16 v19, 0x20000

    if-eqz v13, :cond_5

    move/from16 v13, v19

    goto :goto_5

    :cond_5
    move/from16 v13, v18

    :goto_5
    or-int/2addr v2, v13

    move-object/from16 v13, p6

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    const/high16 v21, 0x80000

    const/high16 v22, 0x100000

    if-eqz v20, :cond_6

    move/from16 v20, v22

    goto :goto_6

    :cond_6
    move/from16 v20, v21

    :goto_6
    or-int v2, v2, v20

    move-object/from16 v3, p7

    const/16 p25, 0x2

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    const/high16 v23, 0x400000

    const/high16 v24, 0x800000

    if-eqz v20, :cond_7

    move/from16 v20, v24

    goto :goto_7

    :cond_7
    move/from16 v20, v23

    :goto_7
    or-int v2, v2, v20

    move-object/from16 v4, p8

    const/16 v20, 0x4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    const/high16 v26, 0x2000000

    const/high16 v27, 0x4000000

    if-eqz v25, :cond_8

    move/from16 v25, v27

    goto :goto_8

    :cond_8
    move/from16 v25, v26

    :goto_8
    or-int v2, v2, v25

    move-object/from16 v7, p9

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    const/high16 v29, 0x10000000

    const/high16 v30, 0x20000000

    if-eqz v28, :cond_9

    move/from16 v28, v30

    goto :goto_9

    :cond_9
    move/from16 v28, v29

    :goto_9
    or-int v2, v2, v28

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    move/from16 v31, v20

    :goto_a
    move-object/from16 v8, p11

    goto :goto_b

    :cond_a
    move/from16 v31, p25

    goto :goto_a

    :goto_b
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    const/16 v32, 0x20

    goto :goto_c

    :cond_b
    const/16 v32, 0x10

    :goto_c
    or-int v31, v31, v32

    move-object/from16 v10, p12

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    const/16 v33, 0x100

    goto :goto_d

    :cond_c
    const/16 v33, 0x80

    :goto_d
    or-int v31, v31, v33

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    const/16 v33, 0x800

    goto :goto_e

    :cond_d
    const/16 v33, 0x400

    :goto_e
    or-int v31, v31, v33

    move-object/from16 v11, p14

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_e

    move/from16 v34, v17

    goto :goto_f

    :cond_e
    move/from16 v34, v16

    :goto_f
    or-int v31, v31, v34

    move-object/from16 v14, p15

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    move/from16 v18, v19

    :cond_f
    or-int v18, v31, v18

    move-object/from16 v15, p16

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    move/from16 v21, v22

    :cond_10
    or-int v18, v18, v21

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    move/from16 v23, v24

    :cond_11
    or-int v18, v18, v23

    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    move/from16 v26, v27

    :cond_12
    or-int v18, v18, v26

    move-object/from16 v1, p19

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    move/from16 v29, v30

    :cond_13
    or-int v26, v18, v29

    move-object/from16 v1, p20

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    move/from16 v18, v20

    :goto_10
    move-object/from16 v1, p21

    goto :goto_11

    :cond_14
    move/from16 v18, p25

    goto :goto_10

    :goto_11
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    const/16 v25, 0x20

    goto :goto_12

    :cond_15
    const/16 v25, 0x10

    :goto_12
    or-int v18, v18, v25

    move-object/from16 v1, p22

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    const/16 v32, 0x100

    goto :goto_13

    :cond_16
    const/16 v32, 0x80

    :goto_13
    or-int v18, v18, v32

    move-object/from16 v1, p23

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    const/16 v34, 0x800

    goto :goto_14

    :cond_17
    const/16 v34, 0x400

    :goto_14
    or-int v18, v18, v34

    move-object/from16 v1, p24

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    move/from16 v16, v17

    :cond_18
    or-int v1, v18, v16

    const v16, 0x12492493

    move/from16 v17, v2

    and-int v2, v17, v16

    const v3, 0x12492492

    const/4 v4, 0x0

    const/16 v18, 0x1

    if-ne v2, v3, :cond_1a

    and-int v2, v26, v16

    if-ne v2, v3, :cond_1a

    and-int/lit16 v1, v1, 0x2493

    const/16 v2, 0x2492

    if-eq v1, v2, :cond_19

    goto :goto_15

    :cond_19
    move v1, v4

    goto :goto_16

    :cond_1a
    :goto_15
    move/from16 v1, v18

    :goto_16
    and-int/lit8 v2, v17, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v4, v1, v0, v2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move/from16 v16, v4

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    const/16 v27, 0x3

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v2, :cond_1b

    sget-object v4, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    move-object/from16 v19, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;

    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v21, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;

    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v22, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionListUiModel;

    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v23, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v24, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;

    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Lkotlin/reflect/KClass;

    aput-object v21, v4, v16

    aput-object v22, v4, v18

    aput-object v23, v4, p25

    aput-object v24, v4, v27

    aput-object v3, v4, v20

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_17

    :cond_1b
    move-object/from16 v19, v3

    :goto_17
    move-object/from16 v23, v4

    check-cast v23, Ljava/util/List;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1c

    if-ne v4, v2, :cond_1f

    :cond_1c
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;

    if-nez v3, :cond_1e

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;

    if-eqz v3, :cond_1d

    goto :goto_18

    :cond_1d
    move/from16 v18, v16

    :cond_1e
    :goto_18
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v12, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v18, v18, v20

    move/from16 p25, v3

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v18, :cond_20

    if-ne v3, v2, :cond_21

    :cond_20
    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$1$1;

    const/4 v2, 0x0

    invoke-direct {v3, v12, v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$1$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object v2, v0

    new-instance v0, Le30;

    move-object/from16 v20, p8

    move-object/from16 v16, p21

    move-object/from16 v21, p22

    move-object/from16 v22, p23

    move-object/from16 v4, p24

    move-object/from16 v28, v1

    move-object/from16 v36, v2

    move/from16 v24, v5

    move-object/from16 v25, v8

    move-object v5, v9

    move-object/from16 v18, v10

    move-object v3, v11

    move-object/from16 v17, v13

    move-object v13, v15

    move-object/from16 v11, v19

    move-object/from16 v2, p0

    move-object/from16 v19, p7

    move-object/from16 v8, p18

    move-object/from16 v15, p19

    move-object/from16 v9, p20

    move/from16 v1, p25

    move-object v10, v7

    move-object v7, v6

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v25}, Le30;-><init>(ZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/util/List;FLkotlin/jvm/functions/Function0;)V

    const v1, -0x616b9729

    move-object/from16 v5, v36

    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/16 v6, 0xc00

    const/4 v7, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v5

    invoke-virtual/range {v28 .. v28}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    const v0, 0x70a4192f

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v0, 0x7f140319

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lf30;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v4, p10

    move-object/from16 v3, p17

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lf30;-><init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    const v1, 0x24a96ad2

    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    shr-int/lit8 v0, v26, 0x3

    and-int/lit16 v0, v0, 0x380

    const/high16 v1, 0x6000000

    or-int/2addr v0, v1

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v1, 0x9

    or-int v12, v0, v1

    const/16 v13, 0xf1

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v11, v6

    move-object v2, v7

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p13

    move-object/from16 v4, v28

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v5, v11

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_22
    move-object v5, v6

    const/4 v0, 0x0

    const v1, 0x70b287c1

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_23
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_19
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_24

    move-object v1, v0

    new-instance v0, Lg30;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p26

    move-object/from16 v37, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v26}, Lg30;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;FLjava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v37

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_24
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)Landroidx/compose/ui/Modifier;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;->FULLSCREEN:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->i()F

    move-result p0

    invoke-static {v1, p0}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleHelper;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {v1, p0, p1}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
