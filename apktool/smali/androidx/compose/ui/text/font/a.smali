.class public final synthetic Landroidx/compose/ui/text/font/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

.field public final synthetic c:Landroidx/compose/ui/text/font/TypefaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;Landroidx/compose/ui/text/font/TypefaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/a;->b:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    iput-object p2, p0, Landroidx/compose/ui/text/font/a;->c:Landroidx/compose/ui/text/font/TypefaceRequest;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/text/font/a;->b:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    iget-object v5, v0, Landroidx/compose/ui/text/font/a;->c:Landroidx/compose/ui/text/font/TypefaceRequest;

    move-object/from16 v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v9, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->d:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iget-object v8, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->a:Landroidx/compose/ui/text/font/PlatformFontLoader;

    iget-object v2, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->f:Lck;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->a:Landroidx/compose/ui/text/font/FontFamily;

    instance-of v3, v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_22

    :cond_0
    sget-object v3, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->c:Landroidx/compose/ui/text/font/FontMatcher;

    check-cast v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    iget-object v0, v0, Landroidx/compose/ui/text/font/FontListFontFamily;->h:Ljava/util/List;

    iget-object v4, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    iget v6, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v0

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Landroidx/compose/ui/text/font/Font;

    const/16 p1, 0x0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v11

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/text/font/Font;->c()I

    move-result v11

    sget-object v16, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    if-ne v11, v6, :cond_1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    const/16 v16, 0x0

    goto/16 :goto_14

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v10

    move/from16 v11, p1

    :goto_1
    if-ge v11, v10, :cond_5

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v14}, Landroidx/compose/ui/text/font/Font;->c()I

    move-result v14

    sget-object v15, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    if-ne v14, v6, :cond_4

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v3

    :goto_2
    check-cast v0, Ljava/util/List;

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->d:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/font/FontWeight;->a(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v3

    iget v6, v4, Landroidx/compose/ui/text/font/FontWeight;->b:I

    if-gez v3, :cond_10

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v10, p1

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_3
    if-ge v10, v4, :cond_c

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v14}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v14

    iget v15, v14, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v16

    if-gez v16, :cond_8

    const/16 v16, 0x0

    if-eqz v11, :cond_7

    iget v12, v11, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v12

    if-lez v12, :cond_a

    :cond_7
    move-object v11, v14

    goto :goto_4

    :cond_8
    const/16 v16, 0x0

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v12

    if-lez v12, :cond_b

    if-eqz v13, :cond_9

    iget v12, v13, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v12

    if-gez v12, :cond_a

    :cond_9
    move-object v13, v14

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_b
    move-object v11, v14

    move-object v13, v11

    goto :goto_5

    :cond_c
    const/16 v16, 0x0

    :goto_5
    if-nez v11, :cond_d

    move-object v11, v13

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move/from16 v6, p1

    :goto_6
    if-ge v6, v3, :cond_f

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v12}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    move-object v3, v4

    goto/16 :goto_14

    :cond_10
    const/16 v16, 0x0

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->e:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/font/FontWeight;->a(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-lez v4, :cond_19

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v10, p1

    move-object/from16 v11, v16

    move-object v12, v11

    :goto_7
    if-ge v10, v4, :cond_16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v15

    if-gez v15, :cond_12

    if-eqz v11, :cond_11

    iget v15, v11, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v14

    if-lez v14, :cond_14

    :cond_11
    move-object v11, v13

    goto :goto_8

    :cond_12
    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v15

    if-lez v15, :cond_15

    if-eqz v12, :cond_13

    iget v15, v12, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v14

    if-gez v14, :cond_14

    :cond_13
    move-object v12, v13

    :cond_14
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_15
    move-object v11, v13

    move-object v12, v11

    :cond_16
    if-nez v12, :cond_17

    goto :goto_9

    :cond_17
    move-object v11, v12

    :goto_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move/from16 v6, p1

    :goto_a
    if-ge v6, v3, :cond_f

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v12}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_19
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v10

    move/from16 v11, p1

    move-object/from16 v12, v16

    move-object v13, v12

    :goto_b
    if-ge v11, v10, :cond_20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v14}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v14

    iget v15, v14, Landroidx/compose/ui/text/font/FontWeight;->b:I

    move-object/from16 v17, v4

    iget v4, v3, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v4

    if-lez v4, :cond_1a

    goto :goto_c

    :cond_1a
    iget v4, v14, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v15

    if-gez v15, :cond_1c

    if-eqz v12, :cond_1b

    iget v15, v12, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v4

    if-lez v4, :cond_1e

    :cond_1b
    move-object v12, v14

    goto :goto_c

    :cond_1c
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v15

    if-lez v15, :cond_1f

    if-eqz v13, :cond_1d

    iget v15, v13, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v4

    if-gez v4, :cond_1e

    :cond_1d
    move-object v13, v14

    :cond_1e
    :goto_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v17

    goto :goto_b

    :cond_1f
    move-object v12, v14

    move-object v13, v12

    goto :goto_d

    :cond_20
    move-object/from16 v17, v4

    :goto_d
    if-nez v13, :cond_21

    goto :goto_e

    :cond_21
    move-object v12, v13

    :goto_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v10, p1

    :goto_f
    if-ge v10, v4, :cond_23

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_23
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->e:Landroidx/compose/ui/text/font/FontWeight;

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v10, p1

    move-object/from16 v11, v16

    move-object v12, v11

    :goto_10
    if-ge v10, v4, :cond_2a

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    if-eqz v3, :cond_24

    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->b:I

    iget v15, v3, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v14

    if-gez v14, :cond_24

    goto :goto_11

    :cond_24
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v15

    if-gez v15, :cond_26

    if-eqz v11, :cond_25

    iget v15, v11, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v14

    if-lez v14, :cond_28

    :cond_25
    move-object v11, v13

    goto :goto_11

    :cond_26
    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v15

    if-lez v15, :cond_29

    if-eqz v12, :cond_27

    iget v15, v12, Landroidx/compose/ui/text/font/FontWeight;->b:I

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v14

    if-gez v14, :cond_28

    :cond_27
    move-object v12, v13

    :cond_28
    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_29
    move-object v11, v13

    move-object v12, v11

    :cond_2a
    if-nez v12, :cond_2b

    goto :goto_12

    :cond_2b
    move-object v11, v12

    :goto_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v6, p1

    :goto_13
    if-ge v6, v4, :cond_2d

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v12}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_2d
    :goto_14
    iget-object v4, v9, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->a:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    move/from16 v10, p1

    move-object/from16 v11, v16

    :goto_15
    const/4 v12, 0x1

    if-ge v10, v6, :cond_3c

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->a()I

    move-result v0

    sget-object v14, Landroidx/compose/ui/text/font/FontLoadingStrategy;->a:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_31

    iget-object v3, v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->c:Landroidx/compose/ui/text/platform/SynchronizedObject;

    monitor-enter v3

    :try_start_0
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    invoke-interface {v8}, Landroidx/compose/ui/text/font/PlatformFontLoader;->b()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13, v6}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    iget-object v6, v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->a:Landroidx/collection/LruCache;

    invoke-virtual {v6, v0}, Landroidx/collection/LruCache;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    if-nez v6, :cond_2e

    iget-object v6, v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->b:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v6, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    goto :goto_16

    :catchall_0
    move-exception v0

    goto :goto_19

    :cond_2e
    :goto_16
    if-eqz v6, :cond_2f

    iget-object v0, v6, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_18

    :cond_2f
    monitor-exit v3

    :try_start_1
    invoke-interface {v8, v13}, Landroidx/compose/ui/text/font/PlatformFontLoader;->a(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_17

    :catch_0
    invoke-virtual {v2, v5}, Lck;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_17
    invoke-static {v4, v13, v8, v0}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->a(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Ljava/lang/Object;)V

    :goto_18
    if-nez v0, :cond_30

    invoke-virtual {v2, v5}, Lck;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_30
    iget v2, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->d:I

    iget-object v3, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    iget v4, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    invoke-static {v2, v0, v13, v3, v4}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->a(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v11, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_21

    :goto_19
    monitor-exit v3

    throw v0

    :cond_31
    sget v14, Landroidx/compose/ui/text/font/FontLoadingStrategy;->b:I

    if-ne v0, v14, :cond_35

    iget-object v14, v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->c:Landroidx/compose/ui/text/platform/SynchronizedObject;

    monitor-enter v14

    :try_start_2
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    invoke-interface {v8}, Landroidx/compose/ui/text/font/PlatformFontLoader;->b()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v0, v13, v15}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    iget-object v15, v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->a:Landroidx/collection/LruCache;

    invoke-virtual {v15, v0}, Landroidx/collection/LruCache;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    if-nez v15, :cond_32

    iget-object v15, v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->b:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v15, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    goto :goto_1a

    :catchall_1
    move-exception v0

    goto :goto_1d

    :cond_32
    :goto_1a
    if-eqz v15, :cond_33

    iget-object v0, v15, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->a:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v14

    goto :goto_1c

    :cond_33
    monitor-exit v14

    :try_start_3
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-interface {v8, v13}, Landroidx/compose/ui/text/font/PlatformFontLoader;->a(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v14, v0

    goto :goto_1b

    :catchall_2
    move-exception v0

    sget-object v14, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v14, Lkotlin/Result$Failure;

    invoke-direct {v14, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_1b
    instance-of v0, v14, Lkotlin/Result$Failure;

    if-eqz v0, :cond_34

    move-object/from16 v14, v16

    :cond_34
    invoke-static {v4, v13, v8, v14}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->a(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Ljava/lang/Object;)V

    move-object v0, v14

    :goto_1c
    if-eqz v0, :cond_39

    iget v2, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->d:I

    iget-object v3, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    iget v4, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    invoke-static {v2, v0, v13, v3, v4}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->a(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v11, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_21

    :goto_1d
    monitor-exit v14

    throw v0

    :cond_35
    sget v14, Landroidx/compose/ui/text/font/FontLoadingStrategy;->c:I

    if-ne v0, v14, :cond_3b

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    invoke-interface {v8}, Landroidx/compose/ui/text/font/PlatformFontLoader;->b()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v13, v14}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    iget-object v14, v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->c:Landroidx/compose/ui/text/platform/SynchronizedObject;

    monitor-enter v14

    :try_start_4
    iget-object v15, v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->a:Landroidx/collection/LruCache;

    invoke-virtual {v15, v0}, Landroidx/collection/LruCache;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    if-nez v15, :cond_36

    iget-object v15, v4, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->b:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v15, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1e

    :catchall_3
    move-exception v0

    goto :goto_20

    :cond_36
    :goto_1e
    monitor-exit v14

    if-nez v15, :cond_38

    if-nez v11, :cond_37

    new-array v0, v12, [Landroidx/compose/ui/text/font/Font;

    aput-object v13, v0, p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v11, v0

    goto :goto_1f

    :cond_37
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_38
    iget-object v0, v15, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->a:Ljava/lang/Object;

    if-nez v0, :cond_3a

    :cond_39
    :goto_1f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_15

    :cond_3a
    iget v2, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->d:I

    iget-object v3, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    iget v4, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    invoke-static {v2, v0, v13, v3, v4}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->a(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v11, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_21

    :goto_20
    monitor-exit v14

    throw v0

    :cond_3b
    const-string v0, "Unknown font type "

    invoke-static {v13, v0}, La61;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v16

    :cond_3c
    invoke-virtual {v2, v5}, Lck;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v11, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_21
    iget-object v0, v2, Lkotlin/Pair;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    iget-object v4, v2, Lkotlin/Pair;->c:Ljava/lang/Object;

    if-nez v3, :cond_3d

    new-instance v0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    move/from16 v3, p1

    move-object/from16 v10, v16

    const/4 v2, 0x2

    invoke-direct {v0, v4, v3, v2, v10}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_22

    :cond_3d
    move-object/from16 v10, v16

    new-instance v2, Landroidx/compose/ui/text/font/AsyncFontListLoader;

    iget-object v6, v9, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->a:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/text/font/AsyncFontListLoader;-><init>(Ljava/util/List;Ljava/lang/Object;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/PlatformFontLoader;)V

    iget-object v0, v9, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->b:Lkotlinx/coroutines/internal/ContextScope;

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$resolve$1;

    invoke-direct {v4, v2, v10}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$resolve$1;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v10, v3, v4, v12}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Landroidx/compose/ui/text/font/TypefaceResult$Async;

    invoke-direct {v0, v2}, Landroidx/compose/ui/text/font/TypefaceResult$Async;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;)V

    :goto_22
    if-nez v0, :cond_43

    iget-object v0, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->e:Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;

    iget-object v0, v0, Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;->a:Landroidx/compose/ui/text/font/PlatformTypefaces;

    iget-object v1, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->a:Landroidx/compose/ui/text/font/FontFamily;

    iget v2, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    iget-object v3, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v1, :cond_41

    instance-of v4, v1, Landroidx/compose/ui/text/font/DefaultFontFamily;

    if-eqz v4, :cond_3e

    goto :goto_24

    :cond_3e
    instance-of v4, v1, Landroidx/compose/ui/text/font/GenericFontFamily;

    if-eqz v4, :cond_3f

    check-cast v1, Landroidx/compose/ui/text/font/GenericFontFamily;

    check-cast v0, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/compose/ui/text/font/GenericFontFamily;->h:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->a(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_23
    const/4 v10, 0x0

    goto :goto_25

    :cond_3f
    instance-of v0, v1, Landroidx/compose/ui/text/font/LoadedFontFamily;

    if-eqz v0, :cond_40

    check-cast v1, Landroidx/compose/ui/text/font/LoadedFontFamily;

    iget-object v0, v1, Landroidx/compose/ui/text/font/LoadedFontFamily;->h:Landroidx/compose/ui/text/font/Typeface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/compose/ui/text/platform/AndroidTypeface;

    invoke-interface {v0}, Landroidx/compose/ui/text/platform/AndroidTypeface;->a()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_23

    :cond_40
    const/4 v10, 0x0

    const/16 v16, 0x0

    goto :goto_26

    :cond_41
    :goto_24
    check-cast v0, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-static {v10, v3, v2}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->a(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_25
    new-instance v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v10}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v16, v1

    :goto_26
    if-eqz v16, :cond_42

    move-object/from16 v0, v16

    goto :goto_27

    :cond_42
    const-string v0, "Could not load font"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_43
    :goto_27
    return-object v0
.end method
