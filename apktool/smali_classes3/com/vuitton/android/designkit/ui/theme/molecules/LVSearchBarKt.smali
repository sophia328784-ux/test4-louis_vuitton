.class public abstract Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "focused",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "textFieldValueState",
        "",
        "lastTextValue",
        "onSearchClicked",
        "value",
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
.field public static final a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc70;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lc70;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v10, p10

    move/from16 v11, p11

    if-eqz v0, :cond_0

    const-string v1, "LVSearchBar"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v12, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x56287802

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v10, 0x6

    if-nez v1, :cond_2

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v10

    goto :goto_1

    :cond_2
    move v1, v10

    :goto_1
    and-int/lit8 v2, v10, 0x30

    move-object/from16 v13, p1

    if-nez v2, :cond_4

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_4
    and-int/lit16 v2, v10, 0x180

    move-object/from16 v14, p2

    if-nez v2, :cond_6

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_3

    :cond_5
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_6
    and-int/lit16 v2, v10, 0xc00

    move-object/from16 v4, p3

    if-nez v2, :cond_8

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x800

    goto :goto_4

    :cond_7
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_8
    and-int/lit16 v2, v10, 0x6000

    move-object/from16 v5, p4

    if-nez v2, :cond_a

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x4000

    goto :goto_5

    :cond_9
    const/16 v2, 0x2000

    :goto_5
    or-int/2addr v1, v2

    :cond_a
    const/high16 v2, 0x30000

    or-int/2addr v1, v2

    const/high16 v2, 0x180000

    and-int/2addr v2, v10

    if-nez v2, :cond_d

    and-int/lit8 v2, v11, 0x40

    if-nez v2, :cond_b

    move/from16 v2, p6

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_c

    const/high16 v3, 0x100000

    goto :goto_6

    :cond_b
    move/from16 v2, p6

    :cond_c
    const/high16 v3, 0x80000

    :goto_6
    or-int/2addr v1, v3

    goto :goto_7

    :cond_d
    move/from16 v2, p6

    :goto_7
    const/high16 v3, 0xc00000

    and-int/2addr v3, v10

    move-object/from16 v8, p7

    if-nez v3, :cond_f

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/high16 v3, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v3, 0x400000

    :goto_8
    or-int/2addr v1, v3

    :cond_f
    const/high16 v3, 0x6000000

    and-int/2addr v3, v10

    const/4 v6, 0x1

    if-nez v3, :cond_11

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_10

    const/high16 v3, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v3, 0x2000000

    :goto_9
    or-int/2addr v1, v3

    :cond_11
    and-int/lit16 v3, v11, 0x200

    const/high16 v7, 0x30000000

    if-eqz v3, :cond_13

    or-int/2addr v1, v7

    :cond_12
    move-object/from16 v7, p8

    goto :goto_b

    :cond_13
    and-int/2addr v7, v10

    if-nez v7, :cond_12

    move-object/from16 v7, p8

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    const/high16 v9, 0x20000000

    goto :goto_a

    :cond_14
    const/high16 v9, 0x10000000

    :goto_a
    or-int/2addr v1, v9

    :goto_b
    const v9, 0x12492493

    and-int/2addr v9, v1

    const v15, 0x12492492

    if-eq v9, v15, :cond_15

    const/4 v9, 0x1

    goto :goto_c

    :cond_15
    const/4 v9, 0x0

    :goto_c
    and-int/lit8 v15, v1, 0x1

    invoke-virtual {v0, v15, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v9, v10, 0x1

    const v15, -0x380001

    if-eqz v9, :cond_18

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v9

    if-eqz v9, :cond_16

    goto :goto_e

    :cond_16
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v3, v11, 0x40

    if-eqz v3, :cond_17

    and-int/2addr v1, v15

    :cond_17
    move-object/from16 v19, p5

    move/from16 v17, v2

    :goto_d
    move-object/from16 v24, v7

    goto :goto_f

    :cond_18
    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v6, :cond_19

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v6, v9

    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    and-int/lit8 v9, v11, 0x40

    if-eqz v9, :cond_1a

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->H:I

    and-int/2addr v1, v15

    :cond_1a
    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    move/from16 v17, v2

    move-object/from16 v24, v3

    move-object/from16 v19, v6

    goto :goto_f

    :cond_1b
    move/from16 v17, v2

    move-object/from16 v19, v6

    goto :goto_d

    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBars;

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBars;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;

    const v3, 0xfffe

    and-int/2addr v3, v1

    shr-int/lit8 v6, v1, 0x3

    const/high16 v7, 0x70000

    and-int/2addr v7, v6

    or-int/2addr v3, v7

    const/high16 v7, 0x380000

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    const/high16 v6, 0x1c00000

    shl-int/lit8 v7, v1, 0x6

    and-int/2addr v6, v7

    or-int v26, v3, v6

    shr-int/lit8 v1, v1, 0x15

    and-int/lit16 v1, v1, 0x3f0

    const/16 v28, 0x500

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v25, v0

    move/from16 v27, v1

    move-object/from16 v21, v2

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v8

    const/16 v23, 0x1

    invoke-static/range {v12 .. v28}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;III)V

    move/from16 v7, v17

    move-object/from16 v6, v19

    move-object/from16 v9, v24

    goto :goto_10

    :cond_1c
    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v6, p5

    move-object v9, v7

    move v7, v2

    :goto_10
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_1d

    new-instance v0, Li70;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move-object v1, v12

    invoke-direct/range {v0 .. v11}, Li70;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function0;Ljava/lang/String;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p5

    move/from16 v1, p8

    if-eqz v0, :cond_0

    const-string v2, "LVSearchBarButton"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x24976cc3

    move-object/from16 v3, p7

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    or-int/2addr v2, v1

    or-int/lit8 v4, v2, 0x30

    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_2

    or-int/lit16 v2, v2, 0x1b0

    move v4, v2

    move-object/from16 v2, p2

    :goto_1
    move-object/from16 v7, p3

    goto :goto_3

    :cond_2
    move-object/from16 v2, p2

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x100

    goto :goto_2

    :cond_3
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v4, v7

    goto :goto_1

    :goto_3
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x800

    goto :goto_4

    :cond_4
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v4, v8

    and-int/lit8 v8, p9, 0x10

    if-eqz v8, :cond_5

    or-int/lit16 v4, v4, 0x6000

    goto :goto_7

    :cond_5
    and-int/lit16 v9, v1, 0x6000

    if-nez v9, :cond_8

    if-nez p4, :cond_6

    const/4 v9, -0x1

    goto :goto_5

    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    :goto_5
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x4000

    goto :goto_6

    :cond_7
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v4, v9

    :cond_8
    :goto_7
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    const/high16 v10, 0x20000

    if-eqz v9, :cond_9

    move v9, v10

    goto :goto_8

    :cond_9
    const/high16 v9, 0x10000

    :goto_8
    or-int/2addr v4, v9

    const v9, 0x92493

    and-int/2addr v9, v4

    const v11, 0x92492

    const/4 v12, 0x0

    const/4 v14, 0x1

    if-eq v9, v11, :cond_a

    move v9, v14

    goto :goto_9

    :cond_a
    move v9, v12

    :goto_9
    and-int/lit8 v11, v4, 0x1

    invoke-virtual {v13, v11, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v11, :cond_b

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v9, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v5, :cond_c

    const-string v2, ""

    :cond_c
    move-object v1, v2

    if-eqz v8, :cond_d

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v17, v2

    goto :goto_a

    :cond_d
    move-object/from16 v17, p4

    :goto_a
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt$WhenMappings;->a:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    if-eq v2, v14, :cond_f

    if-ne v2, v3, :cond_e

    const v2, 0x5c6f86f2

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBars;

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBars;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_e
    const v0, 0x5c6f7414

    invoke-static {v13, v0, v12}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_f
    const v2, 0x5c6f7dec

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBars;

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBars;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    shr-int/lit8 v5, v4, 0x3

    const/4 v8, 0x6

    invoke-static {v9, v13, v8}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/focus/FocusManager;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v16, v16, v18

    const/high16 v18, 0x70000

    and-int v3, v4, v18

    if-ne v3, v10, :cond_10

    move v3, v14

    goto :goto_c

    :cond_10
    const/4 v3, 0x0

    :goto_c
    or-int v3, v16, v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_11

    if-ne v10, v11, :cond_12

    :cond_11
    new-instance v10, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt$LVSearchBarButton$2$1;

    const/4 v3, 0x0

    invoke-direct {v10, v15, v6, v8, v3}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt$LVSearchBarButton$2$1;-><init>(Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v12, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_13

    new-instance v3, Ln60;

    const/4 v8, 0x7

    invoke-direct {v3, v8}, Ln60;-><init>(I)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v11, :cond_14

    new-instance v8, Lc70;

    invoke-direct {v8, v14}, Lc70;-><init>(I)V

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->m:I

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v11, :cond_15

    new-instance v12, Lc70;

    const/4 v11, 0x2

    invoke-direct {v12, v11}, Lc70;-><init>(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v12, Lkotlin/jvm/functions/Function0;

    const v11, 0x6180d80

    and-int/lit8 v14, v4, 0xe

    or-int/2addr v11, v14

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v5, v11

    const v11, 0xe000

    shl-int/lit8 v14, v4, 0x3

    and-int/2addr v11, v14

    or-int/2addr v5, v11

    const/high16 v11, 0xc00000

    or-int v14, v5, v11

    shr-int/lit8 v4, v4, 0xf

    and-int/lit8 v15, v4, 0x7e

    const/16 v16, 0x1000

    move-object v7, v9

    move-object v9, v2

    move-object v2, v3

    move-object v3, v8

    const/4 v8, 0x1

    move-object v6, v12

    const/4 v12, 0x0

    move-object/from16 v4, p3

    move/from16 v11, p6

    move v5, v10

    move-object/from16 v10, p5

    invoke-static/range {v0 .. v16}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;III)V

    move-object v3, v1

    move-object v2, v7

    move-object/from16 v5, v17

    goto :goto_d

    :cond_16
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v5, p4

    move-object v3, v2

    move-object/from16 v2, p1

    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_17

    move-object v1, v0

    new-instance v0, Lbg;

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lbg;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;ZII)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p7

    move-object/from16 v10, p9

    move/from16 v14, p14

    move/from16 v15, p15

    iget-object v2, v1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v0, :cond_0

    const-string v3, "LVSearchBarInternal"

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x72ad92a1

    move-object/from16 v3, p13

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v0, v14, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v14

    goto :goto_1

    :cond_2
    move v0, v14

    :goto_1
    and-int/lit8 v5, v14, 0x30

    if-nez v5, :cond_4

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    :cond_4
    and-int/lit16 v5, v14, 0x180

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x100

    goto :goto_3

    :cond_5
    const/16 v16, 0x80

    :goto_3
    or-int v0, v0, v16

    goto :goto_4

    :cond_6
    move-object/from16 v5, p2

    :goto_4
    and-int/lit16 v3, v14, 0xc00

    if-nez v3, :cond_8

    move-object/from16 v3, p3

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x800

    goto :goto_5

    :cond_7
    const/16 v16, 0x400

    :goto_5
    or-int v0, v0, v16

    goto :goto_6

    :cond_8
    move-object/from16 v3, p3

    :goto_6
    and-int/lit16 v11, v14, 0x6000

    if-nez v11, :cond_a

    move-object/from16 v11, p4

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x4000

    goto :goto_7

    :cond_9
    const/16 v17, 0x2000

    :goto_7
    or-int v0, v0, v17

    goto :goto_8

    :cond_a
    move-object/from16 v11, p4

    :goto_8
    const/high16 v17, 0x30000

    and-int v17, v14, v17

    move/from16 v12, p5

    if-nez v17, :cond_c

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v18

    if-eqz v18, :cond_b

    const/high16 v18, 0x20000

    goto :goto_9

    :cond_b
    const/high16 v18, 0x10000

    :goto_9
    or-int v0, v0, v18

    :cond_c
    const/high16 v18, 0x180000

    and-int v18, v14, v18

    move-object/from16 v8, p6

    if-nez v18, :cond_e

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/high16 v19, 0x100000

    goto :goto_a

    :cond_d
    const/high16 v19, 0x80000

    :goto_a
    or-int v0, v0, v19

    :cond_e
    const/high16 v19, 0xc00000

    and-int v19, v14, v19

    if-nez v19, :cond_10

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    const/high16 v19, 0x800000

    goto :goto_b

    :cond_f
    const/high16 v19, 0x400000

    :goto_b
    or-int v0, v0, v19

    :cond_10
    const/high16 v19, 0x6000000

    and-int v19, v14, v19

    move/from16 v9, p8

    if-nez v19, :cond_12

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v20

    if-eqz v20, :cond_11

    const/high16 v20, 0x4000000

    goto :goto_c

    :cond_11
    const/high16 v20, 0x2000000

    :goto_c
    or-int v0, v0, v20

    :cond_12
    const/high16 v20, 0x30000000

    and-int v20, v14, v20

    if-nez v20, :cond_14

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    const/high16 v20, 0x20000000

    goto :goto_d

    :cond_13
    const/high16 v20, 0x10000000

    :goto_d
    or-int v0, v0, v20

    :cond_14
    and-int/lit8 v20, v15, 0x6

    move-object/from16 v4, p10

    if-nez v20, :cond_16

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    const/16 v21, 0x4

    goto :goto_e

    :cond_15
    const/16 v21, 0x2

    :goto_e
    or-int v21, v15, v21

    goto :goto_f

    :cond_16
    move/from16 v21, v15

    :goto_f
    and-int/lit8 v22, v15, 0x30

    move/from16 v8, p11

    if-nez v22, :cond_18

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v22

    if-eqz v22, :cond_17

    const/16 v22, 0x20

    goto :goto_10

    :cond_17
    const/16 v22, 0x10

    :goto_10
    or-int v21, v21, v22

    :cond_18
    and-int/lit16 v1, v15, 0x180

    if-nez v1, :cond_1a

    move-object/from16 v1, p12

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    const/16 v16, 0x100

    goto :goto_11

    :cond_19
    const/16 v16, 0x80

    :goto_11
    or-int v21, v21, v16

    :goto_12
    move/from16 v1, v21

    goto :goto_13

    :cond_1a
    move-object/from16 v1, p12

    goto :goto_12

    :goto_13
    const v16, 0x12492493

    and-int v3, v0, v16

    const v4, 0x12492492

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-ne v3, v4, :cond_1c

    and-int/lit16 v1, v1, 0x93

    const/16 v3, 0x92

    if-eq v1, v3, :cond_1b

    goto :goto_14

    :cond_1b
    move/from16 v1, v17

    goto :goto_15

    :cond_1c
    :goto_14
    move/from16 v1, v16

    :goto_15
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v7, v3, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v3, :cond_1d

    new-instance v1, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v1, Landroidx/compose/ui/focus/FocusRequester;

    shr-int/lit8 v4, v0, 0x15

    and-int/lit8 v4, v4, 0xe

    invoke-static {v13, v7, v4}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    move-object/from16 p0, v4

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->r:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/focus/FocusManager;

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_1e

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v9, Landroidx/compose/runtime/MutableState;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_1f

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_1f

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;->Completed:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

    :goto_16
    move-object v11, v2

    goto :goto_17

    :cond_1f
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_20

    iget-object v11, v2, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_20

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;->Typing:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

    goto :goto_16

    :cond_20
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_21

    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_21

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;->Selected:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

    goto :goto_16

    :cond_21
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;->Enabled:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

    goto :goto_16

    :goto_17
    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v2, 0x0

    move-object/from16 p0, v9

    const/high16 v9, 0x40800000    # 4.0f

    move-object/from16 p13, v11

    const/4 v11, 0x2

    invoke-static {v6, v9, v2, v11}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v20

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    move-object v9, v1

    move-object/from16 v21, v2

    iget-wide v1, v10, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;->a:J

    sget-object v11, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v8, v11, :cond_22

    sget-object v8, Landroidx/compose/ui/text/style/TextDirection;->b:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/text/style/TextDirection;->d:I

    :goto_18
    move/from16 v32, v8

    goto :goto_19

    :cond_22
    sget-object v8, Landroidx/compose/ui/text/style/TextDirection;->b:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/text/style/TextDirection;->c:I

    goto :goto_18

    :goto_19
    const/16 v36, 0x0

    const v37, 0xfefffe

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    move-wide/from16 v22, v1

    invoke-static/range {v21 .. v37}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v25, Landroidx/compose/ui/text/input/KeyboardType;->c:I

    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->b:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v26, Landroidx/compose/ui/text/input/ImeAction;->f:I

    sget-object v1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->b:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v23, Landroidx/compose/ui/text/input/KeyboardCapitalization;->f:I

    new-instance v22, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v30, 0x72

    const/16 v31, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v22 .. v31}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x20

    if-ne v1, v2, :cond_23

    move/from16 v1, v16

    goto :goto_1a

    :cond_23
    move/from16 v1, v17

    :goto_1a
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x1c00

    const/16 v8, 0x800

    if-ne v2, v8, :cond_24

    goto :goto_1b

    :cond_24
    move/from16 v16, v17

    :goto_1b
    or-int v1, v1, v16

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_25

    if-ne v2, v3, :cond_26

    :cond_25
    move v1, v0

    goto :goto_1c

    :cond_26
    move/from16 v16, v0

    move-object v8, v3

    goto :goto_1d

    :goto_1c
    new-instance v0, Ld1;

    move/from16 v16, v1

    move-object v8, v3

    move-object v2, v4

    move-object v3, v5

    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Ld1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/platform/SoftwareKeyboardController;Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_1d
    move-object/from16 v28, v2

    check-cast v28, Lkotlin/jvm/functions/Function1;

    new-instance v23, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x2f

    const/16 v31, 0x0

    invoke-direct/range {v23 .. v31}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_27

    new-instance v0, Ln60;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ln60;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    move-object/from16 v17, v0

    check-cast v17, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move-object/from16 v2, p4

    move-object/from16 v8, p6

    move-object/from16 v4, p12

    move-object/from16 v24, v6

    move-object v13, v7

    move-object v3, v10

    move v5, v12

    move/from16 v6, p8

    move-object/from16 v7, p10

    move-object/from16 v10, p13

    move-object v12, v9

    move/from16 v9, p11

    invoke-direct/range {v0 .. v12}, Lcom/vuitton/android/designkit/ui/theme/molecules/a;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;)V

    const v1, -0x41c9c4a2

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    shr-int/lit8 v1, v16, 0x3

    and-int/lit8 v2, v1, 0xe

    const/high16 v3, 0x36000000

    or-int/2addr v2, v3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    shr-int/lit8 v2, v16, 0xc

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v1, v3

    const v3, 0x301b6

    and-int/lit16 v2, v2, 0x1c00

    or-int v18, v2, v3

    const/16 v19, 0x4008

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    sget-object v11, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->a:Lb21;

    const/4 v14, 0x0

    move/from16 v4, p8

    move-object v15, v0

    move-object/from16 v16, v13

    move-object/from16 v12, v17

    move-object/from16 v2, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v0, p1

    move-object/from16 v13, p7

    move/from16 v17, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    goto :goto_1e

    :cond_28
    move-object/from16 v24, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1e
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_29

    move-object v1, v0

    new-instance v0, Lh70;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v38, v1

    move-object/from16 v1, v24

    invoke-direct/range {v0 .. v15}, Lh70;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;II)V

    move-object/from16 v1, v38

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;III)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v8, p16

    if-eqz v0, :cond_0

    const-string v2, "LVSearchBarInternal"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v9, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x44aa4ef2

    move-object/from16 v2, p13

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v0, v14, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v14

    goto :goto_1

    :cond_2
    move v0, v14

    :goto_1
    and-int/lit8 v4, v14, 0x30

    if-nez v4, :cond_4

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_4
    and-int/lit16 v4, v14, 0x180

    if-nez v4, :cond_6

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x100

    goto :goto_3

    :cond_5
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    :cond_6
    and-int/lit16 v4, v14, 0xc00

    move-object/from16 v13, p3

    if-nez v4, :cond_8

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x800

    goto :goto_4

    :cond_7
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v0, v4

    :cond_8
    and-int/lit16 v4, v14, 0x6000

    if-nez v4, :cond_a

    move-object/from16 v4, p4

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x4000

    goto :goto_5

    :cond_9
    const/16 v16, 0x2000

    :goto_5
    or-int v0, v0, v16

    goto :goto_6

    :cond_a
    move-object/from16 v4, p4

    :goto_6
    const/high16 v16, 0x30000

    and-int v16, v14, v16

    move/from16 v12, p5

    if-nez v16, :cond_c

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    if-eqz v16, :cond_b

    const/high16 v16, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v16, 0x10000

    :goto_7
    or-int v0, v0, v16

    :cond_c
    const/high16 v16, 0x180000

    and-int v16, v14, v16

    move-object/from16 v11, p6

    if-nez v16, :cond_e

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/high16 v16, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v16, 0x80000

    :goto_8
    or-int v0, v0, v16

    :cond_e
    const/high16 v16, 0xc00000

    and-int v16, v14, v16

    move-object/from16 v4, p7

    if-nez v16, :cond_10

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v16, 0x400000

    :goto_9
    or-int v0, v0, v16

    :cond_10
    and-int/lit16 v3, v8, 0x100

    const/high16 v17, 0x6000000

    if-eqz v3, :cond_11

    or-int v0, v0, v17

    move/from16 v5, p8

    goto :goto_b

    :cond_11
    and-int v17, v14, v17

    move/from16 v5, p8

    if-nez v17, :cond_13

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x4000000

    goto :goto_a

    :cond_12
    const/high16 v18, 0x2000000

    :goto_a
    or-int v0, v0, v18

    :cond_13
    :goto_b
    const/high16 v18, 0x30000000

    and-int v18, v14, v18

    move-object/from16 v4, p9

    if-nez v18, :cond_15

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    const/high16 v18, 0x20000000

    goto :goto_c

    :cond_14
    const/high16 v18, 0x10000000

    :goto_c
    or-int v0, v0, v18

    :cond_15
    and-int/lit16 v6, v8, 0x400

    if-eqz v6, :cond_16

    or-int/lit8 v16, v15, 0x6

    move-object/from16 v2, p10

    goto :goto_e

    :cond_16
    and-int/lit8 v19, v15, 0x6

    move-object/from16 v2, p10

    if-nez v19, :cond_18

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    const/16 v16, 0x4

    goto :goto_d

    :cond_17
    const/16 v16, 0x2

    :goto_d
    or-int v16, v15, v16

    goto :goto_e

    :cond_18
    move/from16 v16, v15

    :goto_e
    and-int/lit8 v20, v15, 0x30

    move/from16 v4, p11

    if-nez v20, :cond_1a

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v20

    if-eqz v20, :cond_19

    const/16 v17, 0x20

    goto :goto_f

    :cond_19
    const/16 v17, 0x10

    :goto_f
    or-int v16, v16, v17

    :cond_1a
    move/from16 v17, v0

    move/from16 v0, v16

    and-int/lit16 v1, v8, 0x1000

    if-eqz v1, :cond_1b

    or-int/lit16 v0, v0, 0x180

    move v4, v0

    move-object/from16 v0, p12

    goto :goto_12

    :cond_1b
    move/from16 v16, v0

    and-int/lit16 v0, v15, 0x180

    if-nez v0, :cond_1d

    move-object/from16 v0, p12

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    const/16 v18, 0x100

    goto :goto_10

    :cond_1c
    const/16 v18, 0x80

    :goto_10
    or-int v16, v16, v18

    :goto_11
    move/from16 v4, v16

    goto :goto_12

    :cond_1d
    move-object/from16 v0, p12

    goto :goto_11

    :goto_12
    const v16, 0x12492493

    and-int v0, v17, v16

    move/from16 v16, v1

    const v1, 0x12492492

    const/16 v18, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_1f

    and-int/lit16 v0, v4, 0x93

    const/16 v1, 0x92

    if-eq v0, v1, :cond_1e

    goto :goto_13

    :cond_1e
    move/from16 v0, v18

    goto :goto_14

    :cond_1f
    :goto_13
    move v0, v5

    :goto_14
    and-int/lit8 v1, v17, 0x1

    invoke-virtual {v10, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v3, :cond_20

    move/from16 v24, v18

    goto :goto_15

    :cond_20
    move/from16 v24, p8

    :goto_15
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v6, :cond_22

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_21

    new-instance v1, Lc70;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lc70;-><init>(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object/from16 v26, v1

    goto :goto_16

    :cond_22
    move-object/from16 v26, v2

    :goto_16
    if-eqz v16, :cond_23

    const/4 v1, 0x0

    move-object/from16 v28, v1

    goto :goto_17

    :cond_23
    move-object/from16 v28, p12

    :goto_17
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_25

    move-object v2, v0

    new-instance v0, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    sget-object v1, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v19, Landroidx/compose/ui/text/TextRange;->c:J

    :goto_18
    move v1, v5

    goto :goto_19

    :cond_24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    move-result-wide v19

    goto :goto_18

    :goto_19
    const/4 v5, 0x4

    const/4 v6, 0x0

    move/from16 v16, v4

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v8, v2

    move/from16 v33, v16

    move/from16 v32, v17

    move-wide/from16 v2, v19

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v35, v1

    move-object v1, v0

    move-object/from16 v0, v35

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_25
    move-object v8, v0

    move/from16 v33, v4

    move/from16 v32, v17

    move-object/from16 v0, p1

    :goto_1a
    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v2, v0}, Landroidx/compose/ui/text/input/TextFieldValue;->b(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_26

    if-ne v4, v8, :cond_27

    :cond_26
    new-instance v4, Luc;

    const/4 v3, 0x1

    invoke-direct {v4, v2, v1, v3}, Luc;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v10}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    move/from16 v3, v32

    and-int/lit8 v4, v3, 0x70

    const/16 v5, 0x20

    if-ne v4, v5, :cond_28

    const/4 v5, 0x1

    goto :goto_1b

    :cond_28
    move/from16 v5, v18

    :goto_1b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v5, :cond_29

    if-ne v4, v8, :cond_2a

    :cond_29
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    and-int/lit16 v6, v3, 0x380

    const/16 v0, 0x100

    if-ne v6, v0, :cond_2b

    const/16 v18, 0x1

    :cond_2b
    or-int v0, v5, v18

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_2c

    if-ne v5, v8, :cond_2d

    :cond_2c
    new-instance v5, Lvc;

    const/4 v0, 0x1

    invoke-direct {v5, v7, v1, v4, v0}, Lvc;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    move-object/from16 v18, v5

    check-cast v18, Lkotlin/jvm/functions/Function1;

    const v0, 0x7ffffc0e

    and-int v30, v3, v0

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0x3fe

    move-object/from16 v20, p4

    move-object/from16 v23, p7

    move-object/from16 v25, p9

    move/from16 v27, p11

    move/from16 v31, v0

    move-object/from16 v17, v2

    move-object/from16 v16, v9

    move-object/from16 v29, v10

    move-object/from16 v22, v11

    move/from16 v21, v12

    move-object/from16 v19, v13

    invoke-static/range {v16 .. v31}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    move/from16 v9, v24

    move-object/from16 v11, v26

    move-object/from16 v13, v28

    goto :goto_1c

    :cond_2e
    move-object/from16 v16, v9

    move-object/from16 v29, v10

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v9, p8

    move-object/from16 v13, p12

    move-object v11, v2

    :goto_1c
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2f

    move-object v1, v0

    new-instance v0, Lg70;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v34, v1

    move-object v3, v7

    move-object/from16 v1, v16

    move-object/from16 v7, p6

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Lg70;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;III)V

    move-object/from16 v1, v34

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2f
    return-void
.end method
