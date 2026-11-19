.class public abstract Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u00a8\u0006\u0007\u00b2\u0006\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00018\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00018\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "",
        "layoutWidthMap",
        "Landroidx/compose/ui/unit/IntSize;",
        "layoutSize",
        "indicatorOffset",
        "indicatorWidth",
        "system"
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
.field public static final a:J

.field public static final b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    const-wide v0, 0x3200000032L

    sput-wide v0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->a:J

    new-instance v0, Lc70;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lc70;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v7, p7

    if-eqz v0, :cond_0

    const-string v1, "LVSegmentedControl"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v8, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x3d4d62bc

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    or-int/2addr v0, v7

    move-object/from16 v9, p1

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x180

    :cond_3
    move/from16 v3, p2

    goto :goto_3

    :cond_4
    and-int/lit16 v3, v7, 0x180

    if-nez v3, :cond_3

    move/from16 v3, p2

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x100

    goto :goto_2

    :cond_5
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    :goto_3
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_6

    or-int/lit16 v0, v0, 0xc00

    goto :goto_6

    :cond_6
    if-nez p3, :cond_7

    const/4 v5, -0x1

    goto :goto_4

    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    :goto_4
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x800

    goto :goto_5

    :cond_8
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v0, v5

    :goto_6
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_a

    or-int/lit16 v0, v0, 0x6000

    :cond_9
    move/from16 v6, p4

    :goto_7
    move-object/from16 v13, p5

    goto :goto_9

    :cond_a
    and-int/lit16 v6, v7, 0x6000

    if-nez v6, :cond_9

    move/from16 v6, p4

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x4000

    goto :goto_8

    :cond_b
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v0, v10

    goto :goto_7

    :goto_9
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/high16 v10, 0x20000

    goto :goto_a

    :cond_c
    const/high16 v10, 0x10000

    :goto_a
    or-int/2addr v0, v10

    const v10, 0x12493

    and-int/2addr v10, v0

    const v11, 0x12492

    const/4 v12, 0x0

    const/4 v15, 0x1

    if-eq v10, v11, :cond_d

    move v10, v15

    goto :goto_b

    :cond_d
    move v10, v12

    :goto_b
    and-int/lit8 v11, v0, 0x1

    invoke-virtual {v14, v11, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_13

    if-eqz v2, :cond_e

    move v10, v15

    goto :goto_c

    :cond_e
    move v10, v3

    :goto_c
    if-eqz v4, :cond_f

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_d

    :cond_f
    move-object/from16 v2, p3

    :goto_d
    if-eqz v5, :cond_10

    move v6, v12

    :cond_10
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    if-eq v3, v15, :cond_12

    if-ne v3, v1, :cond_11

    const v1, 0x1f7fdc42

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControls;

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControls;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    move-object v11, v1

    goto :goto_f

    :cond_11
    const v0, 0x1f7fc7b2

    invoke-static {v14, v0, v12}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_12
    const v1, 0x1f7fd283

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControls;

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControls;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :goto_f
    const v1, 0x7e3fe

    and-int v15, v0, v1

    move v12, v6

    invoke-static/range {v8 .. v15}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;ZLcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v4, v2

    move v3, v10

    move v5, v12

    goto :goto_10

    :cond_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move v5, v6

    :goto_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_14

    new-instance v0, Lc10;

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object v1, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lc10;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;ZLcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    const-string v1, "LVSegmentedControlInternal"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v8, -0x7099a334

    move-object/from16 v9, p6

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    iget-object v8, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v9, v7, 0x6

    if-nez v9, :cond_2

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v7

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_1
    and-int/lit8 v12, v7, 0x30

    if-nez v12, :cond_4

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x20

    goto :goto_2

    :cond_3
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v9, v12

    :cond_4
    and-int/lit16 v12, v7, 0x180

    if-nez v12, :cond_6

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x100

    goto :goto_3

    :cond_5
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v9, v12

    :cond_6
    and-int/lit16 v12, v7, 0xc00

    if-nez v12, :cond_8

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x800

    goto :goto_4

    :cond_7
    const/16 v12, 0x400

    :goto_4
    or-int/2addr v9, v12

    :cond_8
    and-int/lit16 v12, v7, 0x6000

    if-nez v12, :cond_a

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x4000

    goto :goto_5

    :cond_9
    const/16 v12, 0x2000

    :goto_5
    or-int/2addr v9, v12

    :cond_a
    const/high16 v12, 0x30000

    and-int/2addr v12, v7

    if-nez v12, :cond_c

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v12, 0x10000

    :goto_6
    or-int/2addr v9, v12

    :cond_c
    const v12, 0x12493

    and-int/2addr v12, v9

    const v10, 0x12492

    if-eq v12, v10, :cond_d

    const/4 v10, 0x1

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_7
    and-int/lit8 v12, v9, 0x1

    invoke-virtual {v15, v12, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_3d

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/common/DensityUtilsKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x3

    move/from16 v24, v12

    goto :goto_8

    :cond_e
    const/16 v24, 0x1

    :goto_8
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v14, :cond_f

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v12

    invoke-static {v12}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v12, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v14, :cond_10

    new-instance v11, Landroidx/compose/ui/unit/IntSize;

    move-object/from16 v20, v14

    const/16 v19, 0x20

    const-wide/16 v13, 0x0

    invoke-direct {v11, v13, v14}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    move-object/from16 v20, v14

    const/16 v19, 0x20

    :goto_9
    check-cast v11, Landroidx/compose/runtime/MutableState;

    iget-object v13, v4, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->c:Landroidx/compose/ui/graphics/Shape;

    iget-object v14, v4, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    iget-object v3, v4, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    invoke-static {v0, v13}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 v32, v8

    iget-wide v7, v3, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;->a:J

    move-object/from16 v33, v0

    sget-object v0, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v7, v8, v0}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v7, v4, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->e:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz p2, :cond_11

    iget-object v7, v2, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    if-nez v7, :cond_11

    move-object v7, v10

    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    move-object v7, v10

    const/4 v10, 0x0

    :goto_a
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/IntSize;

    move-object/from16 v21, v7

    iget-wide v7, v8, Landroidx/compose/ui/unit/IntSize;->a:J

    shr-long v7, v7, v19

    long-to-int v7, v7

    sget-wide v22, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->a:J

    move/from16 v25, v7

    shr-long v7, v22, v19

    long-to-int v7, v7

    add-int v7, v25, v7

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/IntSize;

    move/from16 v25, v9

    iget-wide v8, v8, Landroidx/compose/ui/unit/IntSize;->a:J

    const-wide v26, 0xffffffffL

    and-long v8, v8, v26

    long-to-int v8, v8

    move/from16 v28, v8

    and-long v8, v22, v26

    long-to-int v8, v8

    add-int v8, v28, v8

    move/from16 v22, v10

    int-to-long v9, v7

    shl-long v9, v9, v19

    int-to-long v7, v8

    and-long v7, v7, v26

    or-long/2addr v7, v9

    and-int/lit8 v9, v25, 0x70

    move/from16 v10, v19

    if-ne v9, v10, :cond_12

    const/4 v10, 0x1

    goto :goto_b

    :cond_12
    const/4 v10, 0x0

    :goto_b
    const/high16 v23, 0x70000

    move-object/from16 v28, v5

    and-int v5, v25, v23

    move-wide/from16 v29, v7

    const/high16 v7, 0x20000

    if-ne v5, v7, :cond_13

    const/4 v7, 0x1

    goto :goto_c

    :cond_13
    const/4 v7, 0x0

    :goto_c
    or-int/2addr v7, v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_15

    move-object/from16 v7, v20

    if-ne v8, v7, :cond_14

    goto :goto_d

    :cond_14
    const/4 v10, 0x0

    goto :goto_e

    :cond_15
    move-object/from16 v7, v20

    :goto_d
    new-instance v8, Lk70;

    const/4 v10, 0x0

    invoke-direct {v8, v2, v6, v10}, Lk70;-><init>(Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_e
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v10, 0x20

    if-ne v9, v10, :cond_16

    const/16 v19, 0x1

    :goto_f
    const/high16 v10, 0x20000

    goto :goto_10

    :cond_16
    const/16 v19, 0x0

    goto :goto_f

    :goto_10
    if-ne v5, v10, :cond_17

    const/16 v23, 0x1

    goto :goto_11

    :cond_17
    const/16 v23, 0x0

    :goto_11
    or-int v19, v19, v23

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v19, :cond_19

    if-ne v10, v7, :cond_18

    goto :goto_12

    :cond_18
    move-object/from16 v19, v7

    const/4 v7, 0x1

    goto :goto_13

    :cond_19
    :goto_12
    new-instance v10, Lk70;

    move-object/from16 v19, v7

    const/4 v7, 0x1

    invoke-direct {v10, v2, v6, v7}, Lk70;-><init>(Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_13
    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v39, v3

    move/from16 p6, v7

    move/from16 v37, v9

    move-object v7, v11

    move-object/from16 p0, v12

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move-object/from16 v34, v21

    move-object/from16 v9, v28

    move-wide/from16 v11, v29

    const/high16 v3, 0x20000

    move-object v13, v8

    move-object v14, v10

    move-object/from16 v8, v19

    move/from16 v10, v22

    invoke-static/range {v9 .. v15}, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt;->a(Landroidx/compose/ui/Modifier;ZJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v8, :cond_1a

    new-instance v10, Lc30;

    const/4 v11, 0x6

    invoke-direct {v10, v11, v7}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v10}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    iget-wide v11, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v15, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v32, :cond_3c

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_1b

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    :cond_1b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_14
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v10, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-virtual {v2}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a()I

    move-result v10

    iget-object v11, v2, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_29

    const v10, 0x7ec2194a    # 1.2900077E38f

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v10, v2, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v10, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v12

    goto :goto_15

    :cond_1c
    invoke-virtual {v2}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a()I

    move-result v12

    int-to-float v12, v12

    :goto_15
    float-to-int v13, v12

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v14

    const/4 v3, 0x0

    invoke-static {v13, v3, v14}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result v13

    add-int/lit8 v3, v13, 0x1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-le v3, v14, :cond_1d

    move v3, v14

    :cond_1d
    int-to-float v14, v13

    sub-float/2addr v12, v14

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    move/from16 v17, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_16

    :cond_1e
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_16
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_17
    const/4 v14, 0x0

    goto :goto_18

    :cond_1f
    move v9, v3

    goto :goto_17

    :goto_18
    invoke-static {v14, v13}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v13

    invoke-virtual {v13}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object/from16 v17, v7

    const/4 v14, 0x0

    :goto_19
    move-object v7, v13

    check-cast v7, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean v7, v7, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v7, :cond_21

    move-object v7, v13

    check-cast v7, Lkotlin/collections/IntIterator;

    invoke-virtual {v7}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v7

    move-object/from16 v7, v18

    check-cast v7, Ljava/util/Map;

    move/from16 v18, v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1a

    :cond_20
    const/4 v7, 0x0

    :goto_1a
    add-int/2addr v14, v7

    move/from16 v9, v18

    goto :goto_19

    :cond_21
    move/from16 v18, v9

    int-to-float v7, v3

    mul-float/2addr v7, v12

    float-to-int v7, v7

    add-int/2addr v14, v7

    sub-int v9, v18, v3

    int-to-float v7, v9

    mul-float/2addr v12, v7

    float-to-int v7, v12

    add-int/2addr v3, v7

    if-nez v10, :cond_22

    move/from16 v7, p6

    goto :goto_1b

    :cond_22
    const/4 v7, 0x0

    :goto_1b
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    const/high16 v10, 0x20000

    if-ne v5, v10, :cond_23

    move/from16 v10, p6

    goto :goto_1c

    :cond_23
    const/4 v10, 0x0

    :goto_1c
    or-int/2addr v9, v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_24

    if-ne v10, v8, :cond_25

    :cond_24
    new-instance v10, Lb70;

    move/from16 v9, p6

    invoke-direct {v10, v7, v6, v9}, Lb70;-><init>(ZLkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const-string v9, "indicator offset"

    const/4 v12, 0x2

    invoke-static {v14, v9, v10, v15, v12}, Landroidx/compose/animation/core/AnimateAsStateKt;->c(ILjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v9

    const-string v10, "width"

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-static {v3, v10, v13, v15, v12}, Landroidx/compose/animation/core/AnimateAsStateKt;->c(ILjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v10

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    or-int v13, v13, v18

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v18

    or-int v13, v13, v18

    move/from16 v18, v3

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v13, :cond_26

    if-ne v3, v8, :cond_27

    :cond_26
    new-instance v3, Ll70;

    invoke-direct {v3, v7, v14, v9}, Ll70;-><init>(ZILandroidx/compose/runtime/State;)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v7, :cond_28

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_1d

    :cond_28
    move/from16 v7, v18

    :goto_1d
    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/unit/Density;

    invoke-interface {v10, v7}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v7

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/IntSize;

    iget-wide v12, v7, Landroidx/compose/ui/unit/IntSize;->a:J

    and-long v12, v12, v26

    long-to-int v7, v12

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/Density;

    invoke-interface {v9, v7}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v7

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v7, v35

    invoke-static {v3, v7}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v9, v36

    iget-wide v12, v9, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;->a:J

    invoke-static {v3, v12, v13, v0}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v0, v15, v10}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_29
    move-object/from16 v7, v35

    move-object/from16 v9, v36

    const/4 v10, 0x0

    const v0, 0x7edac35c

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1e
    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v12, 0x30

    invoke-static {v10, v0, v15, v12}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    iget-wide v12, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v15, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v32, :cond_3b

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_2a

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1f

    :cond_2a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1f
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x27c91ad

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v35, v3, 0x1

    if-ltz v3, :cond_39

    check-cast v10, Ljava/lang/String;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/common/DensityUtilsKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    sget-object v13, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    if-eqz v11, :cond_2b

    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v14, p4, 0x1

    invoke-virtual {v13, v11, v12, v14}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v11

    goto :goto_21

    :cond_2b
    if-eqz p4, :cond_2c

    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :cond_2c
    const/4 v11, 0x1

    invoke-static {v1, v13, v12, v11}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v12

    move-object v11, v12

    :goto_21
    invoke-static {v11, v7}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "segmentedControl_tab"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "_button"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_2e

    if-ne v14, v8, :cond_2d

    goto :goto_22

    :cond_2d
    move-object/from16 v13, p0

    move-object/from16 p0, v0

    const/4 v0, 0x4

    goto :goto_23

    :cond_2e
    :goto_22
    new-instance v14, Lko;

    move-object/from16 v13, p0

    move-object/from16 p0, v0

    const/4 v0, 0x4

    invoke-direct {v14, v3, v13, v0}, Lko;-><init>(ILandroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_23
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v14}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-interface {v11, v12}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v40

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v8, :cond_2f

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2f
    move-object/from16 v41, v11

    check-cast v41, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v2}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a()I

    move-result v11

    if-eq v11, v3, :cond_30

    if-eqz p2, :cond_30

    const/16 v43, 0x1

    :goto_24
    move-object/from16 v11, v34

    goto :goto_25

    :cond_30
    const/16 v43, 0x0

    goto :goto_24

    :goto_25
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    move/from16 v14, v37

    const/16 v0, 0x20

    if-ne v14, v0, :cond_31

    const/16 v17, 0x1

    goto :goto_26

    :cond_31
    const/16 v17, 0x0

    :goto_26
    or-int v12, v12, v17

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v17

    or-int v12, v12, v17

    const/high16 v0, 0x20000

    if-ne v5, v0, :cond_32

    const/16 v17, 0x1

    goto :goto_27

    :cond_32
    const/16 v17, 0x0

    :goto_27
    or-int v12, v12, v17

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v12, :cond_33

    if-ne v0, v8, :cond_34

    :cond_33
    new-instance v0, Lqw;

    invoke-direct {v0, v11, v2, v3, v6}, Lqw;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_34
    move-object/from16 v46, v0

    check-cast v46, Lkotlin/jvm/functions/Function0;

    const/16 v47, 0x18

    const/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-static/range {v40 .. v47}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v12, v4, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->d:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x0

    invoke-static {v12, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move v2, v5

    iget-wide v4, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v15, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v34, v2

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v32, :cond_38

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v17, v4

    iget-boolean v4, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_35

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_28

    :cond_35
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_28
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v4, v0, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v5, 0x7

    const/4 v12, 0x0

    invoke-static {v0, v12, v12, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->o:Landroidx/compose/ui/text/TextStyle;

    sget-object v16, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v11

    move-object/from16 v16, v12

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object v17, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v22, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    sget-object v17, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v0

    sget v0, Landroidx/compose/ui/text/style/TextAlign;->e:I

    move-object/from16 v27, v5

    new-instance v5, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v5, v0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v30, 0x180

    const v31, 0x1abf8

    move-object v0, v13

    move/from16 v37, v14

    const-wide/16 v13, 0x0

    move-object/from16 v28, v15

    const/4 v15, 0x0

    move-object/from16 v36, v9

    move-object v9, v10

    move-object/from16 v18, v16

    move-object/from16 v10, v17

    const-wide/16 v16, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v23, v21

    const-wide/16 v20, 0x0

    move-object/from16 v25, v23

    const/16 v23, 0x0

    move-object/from16 v26, v25

    const/16 v25, 0x0

    move-object/from16 v29, v26

    const/16 v26, 0x0

    move-object/from16 v38, v29

    const/16 v29, 0x180

    move-object/from16 v48, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v36

    move-object/from16 v36, v48

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v28

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a()I

    move-result v2

    if-ne v2, v3, :cond_36

    const v2, 0xb2b52c8

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->o:Landroidx/compose/ui/text/TextStyle;

    const/4 v11, 0x0

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_29
    move-object/from16 v27, v2

    goto :goto_2a

    :cond_36
    const/4 v11, 0x0

    const v2, 0xb2ceda7

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_29

    :goto_2a
    invoke-virtual/range {p1 .. p1}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a()I

    move-result v2

    if-ne v2, v3, :cond_37

    iget-wide v2, v5, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;->b:J

    move-wide v11, v2

    move-object/from16 v2, v39

    goto :goto_2b

    :cond_37
    move-object/from16 v2, v39

    iget-wide v3, v2, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;->b:J

    move-wide v11, v3

    :goto_2b
    const/16 v30, 0x180

    const v31, 0x1aff8

    const-wide/16 v13, 0x0

    move-object/from16 v28, v15

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v28

    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 p0, v3

    move-object/from16 v4, p3

    move-object/from16 v39, v2

    move-object v9, v5

    move/from16 v5, v34

    move/from16 v3, v35

    move-object/from16 v34, v38

    move-object/from16 v2, p1

    goto/16 :goto_20

    :cond_38
    const/16 v36, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_39
    const/16 v36, 0x0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v36

    :cond_3a
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v15, v10, v9, v9}, Lpq0;->x(Landroidx/compose/runtime/GapComposer;ZZZ)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_2c

    :cond_3b
    const/16 v36, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_3c
    const/16 v36, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v36

    :cond_3d
    move-object/from16 v33, v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_3e

    new-instance v0, Leb;

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p7

    move-object/from16 v1, v33

    invoke-direct/range {v0 .. v8}, Leb;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;ZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3e
    return-void
.end method

.method public static final c(ILandroidx/compose/runtime/Composer;Ljava/util/List;)Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->e:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion$Saver$1;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_1

    :cond_0
    new-instance v3, Lj70;

    invoke-direct {v3, p2, p0, v4}, Lj70;-><init>(Ljava/lang/Object;II)V

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v3, p1, v4}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    return-object p0
.end method
