.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetContentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetContentKt$WhenMappings;
    }
.end annotation

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


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;ZLcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v0, p5

    move-object/from16 v3, p8

    move-object/from16 v10, p9

    move-object/from16 v4, p12

    move-object/from16 v9, p16

    move-object/from16 v11, p17

    move-object/from16 v12, p21

    move-object/from16 v13, p26

    move-object/from16 v14, p28

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x77145b25

    move-object/from16 v6, p29

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int v5, p30, v5

    move/from16 v15, p1

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    const/16 v17, 0x10

    if-eqz v16, :cond_1

    const/16 v16, 0x20

    goto :goto_1

    :cond_1
    move/from16 v16, v17

    :goto_1
    or-int v5, v5, v16

    move-object/from16 v6, p2

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    const/16 v19, 0x80

    const/16 v20, 0x100

    if-eqz v18, :cond_2

    move/from16 v18, v20

    goto :goto_2

    :cond_2
    move/from16 v18, v19

    :goto_2
    or-int v5, v5, v18

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    const/16 v21, 0x400

    if-eqz v18, :cond_3

    const/16 v18, 0x800

    goto :goto_3

    :cond_3
    move/from16 v18, v21

    :goto_3
    or-int v5, v5, v18

    move-object/from16 v8, p4

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    const/16 v24, 0x2000

    const/16 v25, 0x4000

    if-eqz v23, :cond_4

    move/from16 v23, v25

    goto :goto_4

    :cond_4
    move/from16 v23, v24

    :goto_4
    or-int v5, v5, v23

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    const/high16 v26, 0x10000

    if-eqz v23, :cond_5

    const/high16 v23, 0x20000

    goto :goto_5

    :cond_5
    move/from16 v23, v26

    :goto_5
    or-int v5, v5, v23

    move/from16 v8, p6

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v27

    const/high16 v28, 0x80000

    move/from16 v29, v5

    if-eqz v27, :cond_6

    const/high16 v27, 0x100000

    goto :goto_6

    :cond_6
    move/from16 v27, v28

    :goto_6
    or-int v27, v29, v27

    move/from16 v5, p7

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v30

    const/high16 v31, 0x400000

    if-eqz v30, :cond_7

    const/high16 v30, 0x800000

    goto :goto_7

    :cond_7
    move/from16 v30, v31

    :goto_7
    or-int v27, v27, v30

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    const/high16 v32, 0x2000000

    if-eqz v30, :cond_8

    const/high16 v30, 0x4000000

    goto :goto_8

    :cond_8
    move/from16 v30, v32

    :goto_8
    or-int v27, v27, v30

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    const/high16 v34, 0x10000000

    if-eqz v30, :cond_9

    const/high16 v30, 0x20000000

    goto :goto_9

    :cond_9
    move/from16 v30, v34

    :goto_9
    or-int v5, v27, v30

    move-object/from16 v6, p10

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    const/16 v27, 0x4

    :goto_a
    move-object/from16 v2, p11

    goto :goto_b

    :cond_a
    const/16 v27, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    const/16 v30, 0x20

    goto :goto_c

    :cond_b
    move/from16 v30, v17

    :goto_c
    or-int v27, v27, v30

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    move/from16 v30, v20

    goto :goto_d

    :cond_c
    move/from16 v30, v19

    :goto_d
    or-int v27, v27, v30

    move-object/from16 v2, p13

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    const/16 v30, 0x800

    goto :goto_e

    :cond_d
    move/from16 v30, v21

    :goto_e
    or-int v27, v27, v30

    move-object/from16 v2, p14

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    move/from16 v30, v25

    goto :goto_f

    :cond_e
    move/from16 v30, v24

    :goto_f
    or-int v27, v27, v30

    move-object/from16 v2, p15

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    const/high16 v30, 0x20000

    goto :goto_10

    :cond_f
    move/from16 v30, v26

    :goto_10
    or-int v27, v27, v30

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    const/high16 v30, 0x100000

    goto :goto_11

    :cond_10
    move/from16 v30, v28

    :goto_11
    or-int v27, v27, v30

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    const/high16 v30, 0x800000

    goto :goto_12

    :cond_11
    move/from16 v30, v31

    :goto_12
    or-int v27, v27, v30

    move-object/from16 v2, p18

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    const/high16 v30, 0x4000000

    goto :goto_13

    :cond_12
    move/from16 v30, v32

    :goto_13
    or-int v27, v27, v30

    move-object/from16 v11, p19

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    const/high16 v34, 0x20000000

    :cond_13
    or-int v27, v27, v34

    move-object/from16 v11, p20

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    const/16 v30, 0x4

    goto :goto_14

    :cond_14
    const/16 v30, 0x2

    :goto_14
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_15

    const/16 v17, 0x20

    :cond_15
    or-int v17, v30, v17

    move-object/from16 v2, p22

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    move/from16 v19, v20

    :cond_16
    or-int v17, v17, v19

    move-object/from16 v2, p23

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/16 v21, 0x800

    :cond_17
    or-int v17, v17, v21

    move-object/from16 v2, p24

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    move/from16 v24, v25

    :cond_18
    or-int v17, v17, v24

    move-object/from16 v2, p25

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/high16 v26, 0x20000

    :cond_19
    or-int v17, v17, v26

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v28, 0x100000

    :cond_1a
    or-int v17, v17, v28

    move-object/from16 v11, p27

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    const/high16 v31, 0x800000

    :cond_1b
    or-int v17, v17, v31

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/high16 v32, 0x4000000

    :cond_1c
    or-int v17, v17, v32

    const v19, 0x12492493

    and-int v2, v5, v19

    const v6, 0x12492492

    if-ne v2, v6, :cond_1e

    and-int v2, v27, v19

    if-ne v2, v6, :cond_1e

    const v2, 0x2492493

    and-int v2, v17, v2

    const v6, 0x2492492

    if-eq v2, v6, :cond_1d

    goto :goto_15

    :cond_1d
    const/4 v2, 0x0

    goto :goto_16

    :cond_1e
    :goto_15
    const/4 v2, 0x1

    :goto_16
    and-int/lit8 v6, v5, 0x1

    invoke-virtual {v7, v6, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_ad

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    sget-object v8, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v11, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTracker;

    instance-of v12, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$AddToCart;

    move/from16 v19, v12

    const/high16 v24, 0xe000000

    const/high16 v25, 0x380000

    const-string v28, ""

    const/16 v30, 0x18

    const/4 v12, 0x0

    if-eqz v19, :cond_36

    const v2, 0x69f4d562

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$AddToCart;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$AddToCart;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    const v6, 0x7f1402e4

    invoke-static {v7, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_20

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->g:Ljava/lang/String;

    if-nez v8, :cond_1f

    goto :goto_17

    :cond_1f
    move-object/from16 v16, v8

    goto :goto_19

    :cond_20
    :goto_17
    if-eqz v1, :cond_21

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    if-eqz v8, :cond_21

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;->b:Ljava/lang/String;

    goto :goto_18

    :cond_21
    move-object v8, v12

    :goto_18
    if-nez v8, :cond_1f

    move-object/from16 v16, v28

    :goto_19
    sget-object v17, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    if-eqz v2, :cond_23

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->h:Ljava/lang/String;

    if-nez v8, :cond_22

    goto :goto_1a

    :cond_22
    move-object/from16 v18, v8

    goto :goto_1c

    :cond_23
    :goto_1a
    if-eqz v1, :cond_24

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    goto :goto_1b

    :cond_24
    move-object v8, v12

    :goto_1b
    if-nez v8, :cond_22

    move-object/from16 v18, v28

    :goto_1c
    if-eqz v2, :cond_25

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->e:Ljava/lang/String;

    goto :goto_1d

    :cond_25
    move-object v8, v12

    :goto_1d
    if-eqz v2, :cond_26

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->f:Ljava/lang/String;

    goto :goto_1e

    :cond_26
    move-object v11, v12

    :goto_1e
    if-eqz v2, :cond_27

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->i:Ljava/lang/String;

    goto :goto_1f

    :cond_27
    move-object v2, v12

    :goto_1f
    filled-new-array {v8, v11, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v19, v11

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_28

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_29
    if-eqz v1, :cond_2a

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->b:Ljava/lang/String;

    goto :goto_21

    :cond_2a
    move-object v2, v12

    :goto_21
    if-nez v2, :cond_2b

    move-object/from16 v20, v28

    goto :goto_22

    :cond_2b
    move-object/from16 v20, v2

    :goto_22
    if-eqz v1, :cond_33

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-eqz v2, :cond_33

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-eqz v11, :cond_2c

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    goto :goto_23

    :cond_2c
    move-object v11, v12

    :goto_23
    if-eqz v11, :cond_2d

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v11, 0x7f140c43

    move-object/from16 p29, v6

    const/4 v6, 0x2

    invoke-direct {v2, v11, v12, v6, v12}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_27

    :cond_2d
    move-object/from16 p29, v6

    const/4 v6, 0x2

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-eqz v11, :cond_2e

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    goto :goto_24

    :cond_2e
    move-object v11, v12

    :goto_24
    const v6, 0x7f140947

    if-eqz v11, :cond_2f

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 v11, 0x2

    invoke-direct {v2, v6, v12, v11, v12}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_27

    :cond_2f
    const/4 v11, 0x2

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-eqz v6, :cond_30

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    goto :goto_25

    :cond_30
    move-object v6, v12

    :goto_25
    if-eqz v6, :cond_31

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140947

    invoke-direct {v2, v6, v12, v11, v12}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_27

    :cond_31
    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-eqz v2, :cond_32

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    goto :goto_26

    :cond_32
    move-object v2, v12

    :goto_26
    if-eqz v2, :cond_34

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140aa8

    invoke-direct {v2, v6, v12, v11, v12}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_27

    :cond_33
    move-object/from16 p29, v6

    :cond_34
    move-object v2, v12

    :goto_27
    if-nez v2, :cond_35

    const v2, 0x6a0056dd

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v6, 0x0

    :goto_28
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v22, v12

    goto :goto_29

    :cond_35
    const/4 v6, 0x0

    const v11, 0x36b5da4

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v11, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    invoke-static {v2, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    goto :goto_28

    :goto_29
    shl-int/lit8 v2, v5, 0xf

    and-int v2, v2, v25

    or-int/lit16 v2, v2, 0x180

    shl-int/lit8 v5, v27, 0x18

    and-int v5, v5, v24

    or-int v25, v2, v5

    move-object/from16 v23, p10

    move-object/from16 v24, v7

    move-object/from16 v19, v8

    move/from16 v21, v15

    move-object/from16 v15, p29

    invoke-static/range {v15 .. v25}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/AddToCartBottomSheetKt;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2a
    move-object/from16 v14, p17

    move-object v11, v7

    goto/16 :goto_6b

    :cond_36
    instance-of v15, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CrossSellAddToCart;

    const v19, 0xe000

    const/high16 v31, 0x70000

    const/4 v12, 0x6

    if-eqz v15, :cond_37

    const v2, 0x6a03e657

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v6, 0x7f1402e4

    invoke-static {v7, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    const v2, 0x7f141031

    invoke-static {v7, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v16

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CrossSellAddToCart;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CrossSellAddToCart;->a:Lkotlinx/collections/immutable/ImmutableList;

    shl-int/lit8 v5, v27, 0x9

    and-int/lit16 v5, v5, 0x1c00

    shr-int/lit8 v6, v17, 0x3

    and-int v6, v6, v19

    or-int/2addr v5, v6

    shl-int/lit8 v6, v17, 0x6

    and-int v6, v6, v31

    or-int v22, v5, v6

    move-object/from16 v18, p10

    move-object/from16 v20, p23

    move-object/from16 v19, p25

    move-object/from16 v17, v2

    move-object/from16 v21, v7

    invoke-static/range {v15 .. v22}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/CrossSellAddToCartBottomSheetKt;->a(Ljava/lang/String;Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2a

    :cond_37
    instance-of v15, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$BackInStock;

    move/from16 v21, v12

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v15, :cond_42

    const v2, 0x6a0cbaeb

    const-string v5, "PdpBottomSheetContent"

    invoke-static {v7, v2, v5}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v33

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v37, 0x0

    const/16 v38, 0xd

    const/16 v34, 0x0

    const/16 v36, 0x0

    move/from16 v35, v2

    invoke-static/range {v33 .. v38}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v15

    const v2, 0x7f1403d2

    invoke-static {v7, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v16

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    if-eqz v1, :cond_38

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    goto :goto_2b

    :cond_38
    const/4 v5, 0x0

    :goto_2b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_39

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :cond_39
    move-object/from16 v17, v5

    if-eqz v1, :cond_3a

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    goto :goto_2c

    :cond_3a
    const/4 v2, 0x0

    :goto_2c
    if-nez v2, :cond_3b

    move-object/from16 v18, v28

    goto :goto_2d

    :cond_3b
    move-object/from16 v18, v2

    :goto_2d
    if-eqz v1, :cond_3c

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    if-eqz v2, :cond_3c

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;->b:Ljava/lang/String;

    goto :goto_2e

    :cond_3c
    const/4 v2, 0x0

    :goto_2e
    if-nez v2, :cond_3d

    goto :goto_2f

    :cond_3d
    move-object/from16 v28, v2

    :goto_2f
    if-eqz v1, :cond_3e

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t:Ljava/lang/String;

    move-object/from16 v19, v2

    goto :goto_30

    :cond_3e
    const/16 v19, 0x0

    :goto_30
    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$BackInStock;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$BackInStock;->a:Z

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    and-int v8, v27, v25

    const/high16 v11, 0x100000

    if-ne v8, v11, :cond_3f

    const/4 v8, 0x1

    goto :goto_31

    :cond_3f
    const/4 v8, 0x0

    :goto_31
    or-int/2addr v5, v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_40

    if-ne v8, v12, :cond_41

    :cond_40
    new-instance v8, Ldm0;

    const/4 v5, 0x0

    invoke-direct {v8, v6, v9, v5}, Ldm0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_41
    move-object/from16 v22, v8

    check-cast v22, Lkotlin/jvm/functions/Function0;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v21, v2

    move-object/from16 v23, v7

    move-object/from16 v20, v28

    invoke-static/range {v15 .. v25}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/BackInStockBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_42
    instance-of v15, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;

    const/high16 v34, 0x70000000

    if-eqz v15, :cond_47

    const v5, 0x6a178419

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v8, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v6, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v11, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iget-object v15, v6, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v15, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    if-eqz v6, :cond_43

    invoke-static {v6, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v31, v2

    goto :goto_32

    :cond_43
    const/16 v31, 0x0

    :goto_32
    and-int v2, v17, v24

    const/high16 v6, 0x4000000

    if-ne v2, v6, :cond_44

    const/16 v20, 0x1

    goto :goto_33

    :cond_44
    const/16 v20, 0x0

    :goto_33
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int v2, v20, v2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_45

    if-ne v6, v12, :cond_46

    :cond_45
    new-instance v6, Lrh0;

    const/16 v2, 0x1d

    invoke-direct {v6, v14, v5, v2}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_46
    move-object/from16 v26, v6

    check-cast v26, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v2, v27, 0xf

    and-int v36, v2, v34

    const v37, 0x5f75b

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v33, p14

    move-object/from16 v34, v7

    move-object/from16 v17, v8

    move-object/from16 v20, v11

    invoke-static/range {v15 .. v37}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_47
    instance-of v15, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Reinsurance;

    const/4 v9, 0x3

    if-eqz v15, :cond_48

    const v2, 0x6a20cff4

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Reinsurance;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Reinsurance;->a:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    shr-int/lit8 v5, v27, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v2, v4, v7, v5}, Lcom/vuitton/android/presentation/screen/reinsurance/components/ReinsuranceBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_48
    instance-of v15, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Variations;

    const/high16 v35, 0x1c00000

    if-eqz v15, :cond_4c

    const v2, 0x6a245940

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v2, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->FRONT:Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    if-eqz v1, :cond_49

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    goto :goto_34

    :cond_49
    const/4 v6, 0x0

    :goto_34
    sget-object v8, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageRatio;->R1_1:Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageRatio;

    invoke-static {v2, v6, v8}, Lcom/vuitton/android/presentation/utils/ProductUtils;->a(Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageRatio;)I

    move-result v16

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d()Ljava/lang/String;

    move-result-object v12

    goto :goto_35

    :cond_4a
    const/4 v12, 0x0

    :goto_35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v12, :cond_4b

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :cond_4b
    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Variations;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Variations;->a:Ljava/util/List;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Variations;->b:Z

    shr-int/2addr v5, v9

    and-int v5, v5, v31

    shl-int/lit8 v8, v27, 0x3

    and-int v8, v8, v25

    or-int/2addr v5, v8

    shl-int/lit8 v8, v17, 0xf

    and-int v8, v8, v35

    or-int v24, v5, v8

    const/4 v15, 0x0

    move/from16 v20, p6

    move-object/from16 v21, p15

    move-object/from16 v22, p22

    move/from16 v19, v2

    move-object/from16 v18, v6

    move-object/from16 v23, v7

    move-object/from16 v17, v12

    invoke-static/range {v15 .. v24}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/VariationBottomSheetKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/util/List;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_4c
    instance-of v15, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$SizeGuide;

    if-eqz v15, :cond_57

    const v2, 0x6a3082ef

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz v1, :cond_4d

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    goto :goto_36

    :cond_4d
    const/4 v2, 0x0

    :goto_36
    if-nez v2, :cond_4e

    move-object/from16 v15, v28

    goto :goto_37

    :cond_4e
    move-object v15, v2

    :goto_37
    if-eqz v1, :cond_4f

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    if-eqz v2, :cond_4f

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;->b:Ljava/lang/String;

    goto :goto_38

    :cond_4f
    const/4 v2, 0x0

    :goto_38
    if-nez v2, :cond_50

    move-object/from16 v16, v28

    goto :goto_39

    :cond_50
    move-object/from16 v16, v2

    :goto_39
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d()Ljava/lang/String;

    move-result-object v28

    :goto_3a
    move-object/from16 v17, v28

    goto :goto_3b

    :cond_51
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    goto :goto_3a

    :goto_3b
    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$SizeGuide;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$SizeGuide;->a:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    if-eqz v1, :cond_52

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    move-object/from16 v20, v8

    goto :goto_3c

    :cond_52
    const/16 v20, 0x0

    :goto_3c
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_53

    if-ne v9, v12, :cond_54

    :cond_53
    new-instance v37, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetContentKt$PdpBottomSheetContent$4$1;

    const-string v42, "trackSizeGuideCountryClick()V"

    const/16 v43, 0x0

    const/16 v38, 0x0

    const-class v40, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    const-string v41, "trackSizeGuideCountryClick"

    move-object/from16 v39, v6

    invoke-direct/range {v37 .. v43}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v9, v37

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_54
    check-cast v9, Lkotlin/reflect/KFunction;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_55

    if-ne v11, v12, :cond_56

    :cond_55
    new-instance v37, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetContentKt$PdpBottomSheetContent$5$1;

    const-string v42, "trackSizeGuideUnitChanged-QOW2GJA(ZLjava/lang/String;)V"

    const/16 v43, 0x0

    const/16 v38, 0x2

    const-class v40, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    const-string v41, "trackSizeGuideUnitChanged"

    move-object/from16 v39, v6

    invoke-direct/range {v37 .. v43}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v11, v37

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_56
    check-cast v11, Lkotlin/reflect/KFunction;

    move-object/from16 v22, v11

    check-cast v22, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v5, v5, 0x6

    and-int v24, v5, v19

    move-object/from16 v19, p2

    move-object/from16 v18, v2

    move-object/from16 v23, v7

    move-object/from16 v21, v9

    invoke-static/range {v15 .. v24}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/SizeGuideBottomSheetContentKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_57
    instance-of v15, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$FindInStore;

    if-eqz v15, :cond_6a

    const v6, 0x6a3a71e7

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v7}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v6

    if-eqz v6, :cond_69

    invoke-static {v6, v7}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v18

    instance-of v8, v6, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v8, :cond_58

    move-object v8, v6

    check-cast v8, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v8}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v8

    :goto_3d
    move-object/from16 v19, v8

    goto :goto_3e

    :cond_58
    sget-object v8, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_3d

    :goto_3e
    invoke-static {}, Lkotlin/jvm/internal/Reflection;->a()Lkotlin/reflect/KClass;

    move-result-object v15

    const/16 v17, 0x0

    move-object/from16 v16, v6

    move-object/from16 v20, v7

    invoke-static/range {v15 .. v20}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    goto :goto_3f

    :cond_59
    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object/from16 v18, v28

    :goto_3f
    if-eqz v1, :cond_5a

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    goto :goto_40

    :cond_5a
    const/4 v6, 0x0

    :goto_40
    if-nez v6, :cond_5b

    move-object/from16 v16, v28

    goto :goto_41

    :cond_5b
    move-object/from16 v16, v6

    :goto_41
    if-eqz v1, :cond_5c

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    if-eqz v6, :cond_5c

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;->b:Ljava/lang/String;

    goto :goto_42

    :cond_5c
    const/4 v6, 0x0

    :goto_42
    if-nez v6, :cond_5d

    move-object/from16 v17, v28

    goto :goto_43

    :cond_5d
    move-object/from16 v17, v6

    :goto_43
    if-eqz v1, :cond_5e

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    move-object/from16 v21, v6

    goto :goto_44

    :cond_5e
    const/16 v21, 0x0

    :goto_44
    if-eqz v1, :cond_61

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c()Lkotlin/Pair;

    move-result-object v6

    if-eqz v6, :cond_61

    iget-object v6, v6, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_61

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d()Ljava/lang/String;

    move-result-object v9

    sget-object v20, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    goto :goto_46

    :cond_5f
    const/4 v9, 0x3

    goto :goto_45

    :cond_60
    const/4 v8, 0x0

    :goto_46
    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    goto :goto_47

    :cond_61
    const/4 v8, 0x0

    :goto_47
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c()Lkotlin/Pair;

    move-result-object v6

    move-object/from16 v23, v6

    goto :goto_48

    :cond_62
    const/16 v23, 0x0

    :goto_48
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_63

    if-ne v9, v12, :cond_64

    :cond_63
    new-instance v9, Lef;

    const/16 v6, 0xd

    invoke-direct {v9, v2, v6}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_64
    move-object/from16 v24, v9

    check-cast v24, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_65

    if-ne v9, v12, :cond_66

    :cond_65
    new-instance v9, Lje;

    const/16 v6, 0x1a

    invoke-direct {v9, v2, v6}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_66
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v6, :cond_67

    if-ne v11, v12, :cond_68

    :cond_67
    new-instance v11, Lsj;

    const/4 v6, 0x3

    const/4 v12, 0x0

    invoke-direct {v11, v2, v6, v12}, Lsj;-><init>(Landroid/content/Context;IB)V

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_68
    check-cast v11, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v2, v5, 0x3

    and-int v2, v2, v31

    and-int v5, v5, v35

    or-int v29, v2, v5

    shr-int/lit8 v2, v27, 0x18

    and-int/lit8 v30, v2, 0xe

    move-object/from16 v20, p4

    move/from16 v22, p7

    move-object/from16 v25, p18

    move-object/from16 v28, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v11

    invoke-static/range {v15 .. v30}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/Pair;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_69
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_6a
    instance-of v9, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$UserConsentVtoPopIn;

    if-eqz v9, :cond_70

    const v2, 0x6a55f1ee

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-nez v3, :cond_6b

    const v2, 0x6a55f1ed

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_4a

    :cond_6b
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;

    if-eqz v2, :cond_6c

    iget-object v6, v11, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v8, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$LegalConsentsScreen;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;)Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$LegalConsentsScreen;-><init>(Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;)V

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_6c
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    and-int v5, v5, v34

    const/high16 v6, 0x20000000

    if-ne v5, v6, :cond_6d

    const/4 v8, 0x1

    goto :goto_49

    :cond_6d
    const/4 v8, 0x0

    :goto_49
    or-int/2addr v2, v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_6e

    if-ne v5, v12, :cond_6f

    :cond_6e
    new-instance v5, Lof0;

    const/16 v2, 0x16

    invoke-direct {v5, v3, v10, v11, v2}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6f
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v19, 0x3

    shr-int/lit8 v2, v27, 0x3

    and-int/lit8 v2, v2, 0x70

    shr-int/lit8 v6, v17, 0x3

    and-int/lit16 v6, v6, 0x1c00

    or-int v8, v2, v6

    move-object/from16 v6, p24

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/VtoConsentBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_4a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_70
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Disclaimer;

    if-eqz v3, :cond_71

    const v3, 0x6a643f71

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Disclaimer;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Disclaimer;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Disclaimer;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v3, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v4, v2, v7, v6}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/DisclaimerBottomSheetKt;->a(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_71
    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CancelProductCustomization;

    if-eqz v2, :cond_72

    const v2, 0x6a685706

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v2, 0x7f140cb7

    invoke-static {v7, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f140cb8

    invoke-static {v7, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    const/16 v19, 0x3

    shl-int/lit8 v2, v27, 0x3

    and-int/lit16 v2, v2, 0x380

    shr-int/lit8 v5, v5, 0x12

    and-int/lit16 v5, v5, 0x1c00

    or-int v8, v2, v5

    move-object/from16 v5, p11

    move-object v6, v10

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/CancelProductCustomizationBottomSheetKt;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_72
    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CameraPermission;

    if-eqz v2, :cond_73

    const v2, 0x6a6e648a

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v2, 0x7f140392

    invoke-static {v7, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f140394

    invoke-static {v7, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f140393

    invoke-static {v7, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    const v3, 0x7f1404af

    invoke-static {v7, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    shr-int/lit8 v3, v27, 0x6

    and-int/lit8 v3, v3, 0x70

    shr-int/lit8 v4, v5, 0x9

    and-int v4, v4, v25

    or-int v24, v3, v4

    const v25, 0xee75b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v23, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v34, v23

    const/16 v23, 0x0

    move-object/from16 v18, p9

    move-object/from16 v14, p13

    move-object/from16 v1, p26

    move-object v5, v2

    move-object/from16 v22, v34

    move-object/from16 v2, p21

    invoke-static/range {v3 .. v25}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v13, v18

    move-object/from16 v7, v22

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_73
    move-object/from16 v2, p21

    move-object v1, v13

    move-object/from16 v13, p9

    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ServerOverload;

    if-eqz v3, :cond_74

    const v3, 0x6a768643

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ServerOverload;

    shr-int/lit8 v4, v5, 0xf

    and-int/lit8 v4, v4, 0xe

    invoke-static {v3, v7, v4}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/ServerOverloadContentBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ServerOverload;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2a

    :cond_74
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ContactUs;

    if-eqz v3, :cond_8d

    const v3, 0x6a79f88d

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    and-int v4, v5, v34

    const/high16 v6, 0x20000000

    if-ne v4, v6, :cond_75

    const/4 v4, 0x1

    goto :goto_4b

    :cond_75
    const/4 v4, 0x0

    :goto_4b
    or-int/2addr v3, v4

    and-int/lit8 v4, v17, 0x70

    const/16 v6, 0x20

    if-ne v4, v6, :cond_76

    const/4 v6, 0x1

    goto :goto_4c

    :cond_76
    const/4 v6, 0x0

    :goto_4c
    or-int/2addr v3, v6

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_77

    if-ne v6, v12, :cond_78

    :cond_77
    new-instance v6, Lof0;

    const/16 v3, 0x17

    invoke-direct {v6, v8, v13, v2, v3}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_78
    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/16 v9, 0x20

    if-ne v4, v9, :cond_79

    const/4 v9, 0x1

    goto :goto_4d

    :cond_79
    const/4 v9, 0x0

    :goto_4d
    or-int/2addr v6, v9

    and-int/lit16 v9, v5, 0x1c00

    const/16 v10, 0x800

    if-eq v9, v10, :cond_7a

    const/4 v10, 0x0

    goto :goto_4e

    :cond_7a
    const/4 v10, 0x1

    :goto_4e
    or-int/2addr v6, v10

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_7c

    if-ne v10, v12, :cond_7b

    goto :goto_4f

    :cond_7b
    move-object/from16 v6, p3

    goto :goto_50

    :cond_7c
    :goto_4f
    new-instance v10, Lqp;

    move-object/from16 v6, p3

    const/4 v11, 0x4

    invoke-direct {v10, v8, v2, v6, v11}, Lqp;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;I)V

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_50
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    const/16 v14, 0x20

    if-ne v4, v14, :cond_7d

    const/4 v14, 0x1

    goto :goto_51

    :cond_7d
    const/4 v14, 0x0

    :goto_51
    or-int/2addr v11, v14

    const/16 v14, 0x800

    if-eq v9, v14, :cond_7e

    const/4 v14, 0x0

    goto :goto_52

    :cond_7e
    const/4 v14, 0x1

    :goto_52
    or-int/2addr v11, v14

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_7f

    if-ne v14, v12, :cond_80

    :cond_7f
    new-instance v14, Lqp;

    const/4 v11, 0x5

    invoke-direct {v14, v8, v2, v6, v11}, Lqp;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;I)V

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_80
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    const/16 v15, 0x800

    if-eq v9, v15, :cond_81

    const/4 v15, 0x0

    goto :goto_53

    :cond_81
    const/4 v15, 0x1

    :goto_53
    or-int/2addr v11, v15

    const/16 v15, 0x20

    if-ne v4, v15, :cond_82

    const/4 v15, 0x1

    goto :goto_54

    :cond_82
    const/4 v15, 0x0

    :goto_54
    or-int/2addr v11, v15

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v11, :cond_83

    if-ne v15, v12, :cond_84

    :cond_83
    new-instance v15, Lqp;

    move/from16 v11, v21

    invoke-direct {v15, v8, v6, v2, v11}, Lqp;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_84
    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    move-object/from16 p29, v3

    const/16 v3, 0x20

    if-ne v4, v3, :cond_85

    const/4 v3, 0x1

    goto :goto_55

    :cond_85
    const/4 v3, 0x0

    :goto_55
    or-int/2addr v3, v11

    const/16 v11, 0x800

    if-eq v9, v11, :cond_86

    const/4 v11, 0x0

    goto :goto_56

    :cond_86
    const/4 v11, 0x1

    :goto_56
    or-int/2addr v3, v11

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v3, :cond_87

    if-ne v11, v12, :cond_88

    :cond_87
    new-instance v11, Lqp;

    const/4 v3, 0x7

    invoke-direct {v11, v8, v2, v6, v3}, Lqp;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;I)V

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_88
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v19, v3

    const/16 v3, 0x20

    if-ne v4, v3, :cond_89

    const/4 v3, 0x1

    goto :goto_57

    :cond_89
    const/4 v3, 0x0

    :goto_57
    or-int v3, v19, v3

    const/16 v4, 0x800

    if-eq v9, v4, :cond_8a

    const/16 v20, 0x0

    goto :goto_58

    :cond_8a
    const/16 v20, 0x1

    :goto_58
    or-int v3, v3, v20

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_8b

    if-ne v4, v12, :cond_8c

    :cond_8b
    new-instance v4, Lqp;

    const/16 v3, 0x8

    invoke-direct {v4, v8, v2, v6, v3}, Lqp;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;I)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8c
    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v3, v5, 0x9

    and-int/lit8 v3, v3, 0xe

    const/16 v21, 0x6

    shr-int/lit8 v4, v27, 0x6

    and-int v4, v4, v35

    or-int/2addr v3, v4

    shl-int/lit8 v4, v17, 0x18

    and-int v4, v4, v24

    or-int v12, v3, v4

    move-object v2, v11

    move-object v11, v7

    move-object v7, v2

    move-object/from16 v9, p19

    move-object/from16 v3, p29

    move-object v2, v6

    move-object v4, v10

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v14, p17

    move-object/from16 v10, p20

    invoke-static/range {v2 .. v12}, Lcom/vuitton/android/presentation/contact/compose/ContactUsModalBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_6b

    :cond_8d
    move-object/from16 v14, p17

    move-object v11, v7

    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$TermsAndConditions;

    if-eqz v2, :cond_8e

    const v2, 0x6a991486

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v11, v6}, Lcom/vuitton/android/presentation/contact/compose/TermsAndConditionsBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_6b

    :cond_8e
    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;

    if-eqz v2, :cond_99

    const v2, 0x6a9b5b3a

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetContentKt$WhenMappings;->b:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_90

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8f

    goto :goto_59

    :cond_8f
    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$EditPerfumeEngravingCustomizationBottomSheetScreen;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$EditPerfumeEngravingCustomizationBottomSheetScreen;

    invoke-static {v9, v4, v7, v8}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_59

    :cond_90
    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$EditHotstampingCustomizationBottomSheetScreen;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$EditHotstampingCustomizationBottomSheetScreen;

    invoke-static {v9, v4, v7, v8}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_59
    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    and-int v3, v5, v31

    const/high16 v4, 0x20000

    if-eq v3, v4, :cond_91

    const/4 v4, 0x0

    goto :goto_5a

    :cond_91
    const/4 v4, 0x1

    :goto_5a
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    and-int v5, v17, v25

    const/high16 v7, 0x100000

    if-ne v5, v7, :cond_92

    const/4 v5, 0x1

    goto :goto_5b

    :cond_92
    const/4 v5, 0x0

    :goto_5b
    or-int/2addr v4, v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_93

    if-ne v5, v12, :cond_94

    :cond_93
    new-instance v5, Lof0;

    move/from16 v4, v30

    invoke-direct {v5, v0, v6, v1, v4}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_94
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/high16 v4, 0x20000

    if-eq v3, v4, :cond_95

    const/4 v3, 0x0

    goto :goto_5c

    :cond_95
    const/4 v3, 0x1

    :goto_5c
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    and-int v4, v27, v35

    const/high16 v7, 0x800000

    if-ne v4, v7, :cond_96

    const/4 v8, 0x1

    goto :goto_5d

    :cond_96
    const/4 v8, 0x0

    :goto_5d
    or-int/2addr v3, v8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_98

    if-ne v4, v12, :cond_97

    goto :goto_5e

    :cond_97
    const/4 v12, 0x0

    goto :goto_5f

    :cond_98
    :goto_5e
    new-instance v4, Lem0;

    const/4 v12, 0x0

    invoke-direct {v4, v0, v6, v14, v12}, Lem0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_5f
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5, v4, v11, v12}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/EditCustomizationBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_6b

    :cond_99
    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;

    if-eqz v2, :cond_a5

    const v2, 0x6ab1975c

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetContentKt$WhenMappings;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9b

    const/4 v4, 0x2

    if-eq v2, v4, :cond_9a

    goto :goto_60

    :cond_9a
    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$CancelPerfumeEngravingCustomizationBottomSheetScreen;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$CancelPerfumeEngravingCustomizationBottomSheetScreen;

    invoke-static {v8, v3, v4, v7}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_60

    :cond_9b
    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$CancelHotstampingCustomizationBottomSheetScreen;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$CancelHotstampingCustomizationBottomSheetScreen;

    invoke-static {v8, v3, v4, v7}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_60
    and-int v8, v5, v31

    const/high16 v4, 0x20000

    if-eq v8, v4, :cond_9c

    const/4 v2, 0x0

    goto :goto_61

    :cond_9c
    const/4 v2, 0x1

    :goto_61
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    and-int v3, v17, v25

    const/high16 v7, 0x100000

    if-ne v3, v7, :cond_9d

    const/4 v3, 0x1

    goto :goto_62

    :cond_9d
    const/4 v3, 0x0

    :goto_62
    or-int/2addr v2, v3

    and-int v9, v5, v34

    const/high16 v3, 0x20000000

    if-ne v9, v3, :cond_9e

    const/4 v4, 0x1

    goto :goto_63

    :cond_9e
    const/4 v4, 0x0

    :goto_63
    or-int/2addr v2, v4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_a0

    if-ne v4, v12, :cond_9f

    goto :goto_64

    :cond_9f
    move v2, v3

    move-object v3, v0

    move v0, v2

    move-object v2, v4

    move-object v4, v6

    move-object v6, v13

    goto :goto_65

    :cond_a0
    :goto_64
    new-instance v2, Lr0;

    const/16 v7, 0x15

    move v4, v3

    move-object v3, v0

    move v0, v4

    move-object v5, v1

    move-object v4, v6

    move-object v6, v13

    invoke-direct/range {v2 .. v7}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_65
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/high16 v1, 0x20000

    if-eq v8, v1, :cond_a1

    const/4 v1, 0x0

    goto :goto_66

    :cond_a1
    const/4 v1, 0x1

    :goto_66
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    if-ne v9, v0, :cond_a2

    const/4 v0, 0x1

    goto :goto_67

    :cond_a2
    const/4 v0, 0x0

    :goto_67
    or-int/2addr v0, v1

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_a3

    if-ne v1, v12, :cond_a4

    :cond_a3
    new-instance v1, Lem0;

    const/4 v7, 0x1

    invoke-direct {v1, v3, v4, v6, v7}, Lem0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a4
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x0

    invoke-static {v2, v1, v11, v12}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/MultipleCustomizationBottomSheetKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_6b

    :cond_a5
    move-object v3, v0

    move-object v4, v6

    move-object v6, v13

    const/high16 v0, 0x20000000

    const/4 v7, 0x1

    instance-of v1, v3, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$VirtualStudioConsents;

    if-eqz v1, :cond_ab

    const v1, 0x6ac74bfd

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$VirtualStudioConsentScreen;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$VirtualStudioConsentScreen;

    invoke-static {v10, v2, v8, v9}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    and-int v2, v17, v35

    const/high16 v8, 0x800000

    if-ne v2, v8, :cond_a6

    move v2, v7

    goto :goto_68

    :cond_a6
    const/4 v2, 0x0

    :goto_68
    or-int/2addr v1, v2

    and-int v2, v5, v31

    const/high16 v8, 0x20000

    if-eq v2, v8, :cond_a7

    const/4 v2, 0x0

    goto :goto_69

    :cond_a7
    move v2, v7

    :goto_69
    or-int/2addr v1, v2

    and-int v2, v5, v34

    if-ne v2, v0, :cond_a8

    move v8, v7

    goto :goto_6a

    :cond_a8
    const/4 v8, 0x0

    :goto_6a
    or-int v0, v1, v8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_a9

    if-ne v1, v12, :cond_aa

    :cond_a9
    new-instance v2, Lr0;

    const/16 v7, 0x16

    move-object v5, v3

    move-object v3, v4

    move-object/from16 v4, p27

    invoke-direct/range {v2 .. v7}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_aa
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-static {v1, v11, v6}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/VirtualStudioConsentsBottomSheetKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_6b

    :cond_ab
    if-nez p5, :cond_ac

    const v0, 0x6acd337b

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_6b
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_6c

    :cond_ac
    const v0, 0x36b2aa5

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    invoke-static {}, Lv40;->g()V

    return-void

    :cond_ad
    move-object/from16 v14, p17

    move-object v11, v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_ae

    move-object v1, v0

    new-instance v0, Lfm0;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move/from16 v30, p30

    move-object/from16 v44, v1

    move-object/from16 v18, v14

    move-object/from16 v1, p0

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v30}, Lfm0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;ZLcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v44

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->f(Lkotlin/jvm/functions/Function2;)V

    :cond_ae
    return-void
.end method
