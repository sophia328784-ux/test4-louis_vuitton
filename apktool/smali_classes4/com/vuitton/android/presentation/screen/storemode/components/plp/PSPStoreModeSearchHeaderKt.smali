.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeSearchHeaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeSearchHeaderKt$WhenMappings;
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
.method public static final a(Ljava/lang/String;Ljava/lang/Integer;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x4e74869f

    move-object/from16 v5, p8

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int v5, p9, v5

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_1

    :cond_1
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v5, v8

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_2

    :cond_2
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v5, v8

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x800

    goto :goto_3

    :cond_3
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v5, v8

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_4

    const/high16 v8, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v8, 0x10000

    :goto_4
    or-int/2addr v5, v8

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v8, 0x80000

    :goto_5
    or-int/2addr v5, v8

    move-object/from16 v8, p7

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/high16 v9, 0x800000

    goto :goto_6

    :cond_6
    const/high16 v9, 0x400000

    :goto_6
    or-int/2addr v5, v9

    const v9, 0x492493

    and-int/2addr v9, v5

    const v10, 0x492492

    const/4 v11, 0x0

    if-eq v9, v10, :cond_7

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    move v9, v11

    :goto_7
    and-int/lit8 v10, v5, 0x1

    invoke-virtual {v0, v10, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_d

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v9, ""

    if-eqz v3, :cond_9

    const v10, 0x15c8b173

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-nez v1, :cond_8

    :goto_8
    move-object v11, v9

    goto :goto_b

    :cond_8
    move-object v11, v1

    goto :goto_b

    :cond_9
    const v10, 0x15c9ac3c

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_a

    goto :goto_9

    :cond_a
    if-eqz v2, :cond_b

    const v9, 0x15cb1ee7

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v10

    const v12, 0x7f120010

    invoke-static {v12, v9, v10, v0}, Lcom/vuitton/android/presentation/helper/PluralStringResourceHelperKt;->a(II[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_b
    :goto_9
    const v10, 0x15cf5f4b

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-nez v1, :cond_c

    goto :goto_a

    :cond_c
    move-object v9, v1

    :goto_a
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :goto_b
    new-instance v9, Ljj;

    move-object/from16 v10, p4

    invoke-direct {v9, v7, v10, v6}, Ljj;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Z)V

    const v12, 0x2dc0d182

    invoke-static {v12, v9, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    shr-int/lit8 v5, v5, 0x3

    const/high16 v9, 0x380000

    and-int/2addr v5, v9

    const v9, 0xc00030

    or-int v20, v9, v5

    const/16 v21, 0x0

    const/16 v22, 0xf35

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, p4

    move-object/from16 v14, p7

    move-object/from16 v19, v0

    invoke-static/range {v8 .. v22}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_c

    :cond_d
    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_e

    new-instance v0, Lds;

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lds;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method
