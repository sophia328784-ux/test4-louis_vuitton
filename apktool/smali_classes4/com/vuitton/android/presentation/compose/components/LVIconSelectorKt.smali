.class public abstract Lcom/vuitton/android/presentation/compose/components/LVIconSelectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;",
        "selectedIconType",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JLcom/vuitton/android/presentation/model/onboarding/IconLauncherType;Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v0, p0

    if-eqz v0, :cond_0

    const-string v1, "LVIconsSelector-FU0evQE"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v2, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x2501097d

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    move-object/from16 v8, p1

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_1

    :cond_2
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v1, p9, 0x4

    move-wide/from16 v3, p2

    if-nez v1, :cond_3

    invoke-virtual {v10, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x100

    goto :goto_2

    :cond_3
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    if-nez p4, :cond_4

    const/4 v1, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_3
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x800

    goto :goto_4

    :cond_5
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x6000

    move-object/from16 v5, p5

    goto :goto_6

    :cond_6
    move-object/from16 v5, p5

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x4000

    goto :goto_5

    :cond_7
    const/16 v6, 0x2000

    :goto_5
    or-int/2addr v0, v6

    :goto_6
    and-int/lit8 v6, p9, 0x20

    const/high16 v7, 0x30000

    if-eqz v6, :cond_9

    or-int/2addr v0, v7

    :cond_8
    move-object/from16 v7, p6

    goto :goto_8

    :cond_9
    and-int v7, p8, v7

    if-nez v7, :cond_8

    move-object/from16 v7, p6

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/high16 v9, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v9, 0x10000

    :goto_7
    or-int/2addr v0, v9

    :goto_8
    const v9, 0x12493

    and-int/2addr v9, v0

    const v11, 0x12492

    const/4 v12, 0x1

    if-eq v9, v11, :cond_b

    move v9, v12

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    :goto_9
    and-int/2addr v0, v12

    invoke-virtual {v10, v0, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_b

    :cond_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v0, v5

    :cond_d
    move-object v6, v7

    :goto_a
    move-wide v4, v3

    goto :goto_c

    :cond_e
    :goto_b
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_f

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    :cond_f
    if-eqz v1, :cond_10

    move-object v5, v9

    :cond_10
    move-object v0, v5

    if-eqz v6, :cond_d

    move-object v6, v9

    goto :goto_a

    :goto_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v3, :cond_11

    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v7, v1

    check-cast v7, Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x3

    invoke-static {v2, v9, v1}, Landroidx/compose/foundation/layout/SizeKt;->w(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v3, Le60;

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Le60;-><init>(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    move-wide v13, v4

    move-object v0, v6

    move-object v15, v9

    const v4, -0x73758c08

    invoke-static {v4, v3, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const v11, 0x186000

    const/16 v12, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v12}, Landroidx/compose/foundation/layout/FlowLayoutKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v0

    move-wide v4, v13

    move-object v7, v15

    goto :goto_d

    :cond_12
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v8, v7

    move-object v7, v5

    move-wide v4, v3

    :goto_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v1, Lqm;

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lqm;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JLcom/vuitton/android/presentation/model/onboarding/IconLauncherType;Ljava/util/List;Lkotlin/jvm/functions/Function2;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method
