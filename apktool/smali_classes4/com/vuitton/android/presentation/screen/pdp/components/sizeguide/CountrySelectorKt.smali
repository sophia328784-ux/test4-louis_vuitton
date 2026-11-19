.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/CountrySelectorKt;
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


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    if-eqz v0, :cond_0

    const-string v1, "CountrySelector"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x630ee730

    move-object/from16 v3, p5

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    :goto_0
    or-int v3, p6, v3

    move-object/from16 v10, p2

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_1

    :cond_2
    const/16 v6, 0x80

    :goto_1
    or-int/2addr v3, v6

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_2

    :cond_3
    const/16 v6, 0x400

    :goto_2
    or-int/2addr v3, v6

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x4000

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    const/16 v6, 0x2000

    :goto_3
    or-int/2addr v3, v6

    and-int/lit16 v6, v3, 0x2493

    const/16 v8, 0x2492

    const/4 v9, 0x0

    const/4 v11, 0x1

    if-eq v6, v8, :cond_5

    move v6, v11

    goto :goto_4

    :cond_5
    move v6, v9

    :goto_4
    and-int/lit8 v8, v3, 0x1

    invoke-virtual {v0, v8, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v6, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v13, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownItem;

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-direct {v13, v12, v9, v15, v14}, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    new-instance v6, Lkotlin/text/Regex;

    const-string v12, "<p>|</p>|&nbsp;"

    invoke-direct {v6, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v12, ""

    invoke-virtual {v6, v4, v12}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v12, 0xe000

    and-int v13, v3, v12

    if-ne v13, v7, :cond_7

    goto :goto_6

    :cond_7
    move v11, v9

    :goto_6
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v7, v11

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v7, :cond_8

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v7, :cond_9

    :cond_8
    new-instance v11, Lsq;

    invoke-direct {v11, v5, v8, v9}, Lsq;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v14, v11

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x6

    shl-int/2addr v3, v7

    and-int/2addr v3, v12

    or-int v17, v7, v3

    const/16 v18, 0x2e2

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    move-object v9, v8

    move-object v8, v6

    move-object v6, v1

    invoke-static/range {v6 .. v18}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_7

    :cond_a
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_b

    new-instance v0, Lw;

    const/16 v7, 0xd

    move-object/from16 v3, p2

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method
