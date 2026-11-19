.class public abstract Lcom/vuitton/android/data/dto/dispatch/mapper/DispatchContinentMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
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
.method public static final a(Lcom/vuitton/android/data/dto/dispatch/DispatchContinentDto;)Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchArea;
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lcom/vuitton/android/data/dto/dispatch/DispatchContinentDto;->a:I

    iget v2, v0, Lcom/vuitton/android/data/dto/dispatch/DispatchContinentDto;->b:I

    iget-object v3, v0, Lcom/vuitton/android/data/dto/dispatch/DispatchContinentDto;->c:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    iget-object v0, v0, Lcom/vuitton/android/data/dto/dispatch/DispatchContinentDto;->d:Ljava/util/List;

    if-eqz v0, :cond_2c

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Companion;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->j:Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;

    if-eqz v8, :cond_1

    iget-object v8, v8, Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;->a:Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_2

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    iget-object v13, v6, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->e:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v6, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->g:Ljava/lang/String;

    iget-object v11, v6, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->i:Ljava/lang/String;

    iget v15, v6, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->b:I

    iget-object v12, v6, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->c:Ljava/lang/String;

    iget-object v14, v6, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->d:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->f:Ljava/lang/Boolean;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->h:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    move-object/from16 v24, v0

    move-object/from16 v25, v4

    goto/16 :goto_1b

    :cond_3
    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/16 v23, 0x0

    if-eqz v10, :cond_22

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v16, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v24, v0

    const-string v0, "-INT"

    invoke-static {v10, v0, v4}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_3
    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v20, v8

    const/16 v17, 0x0

    goto/16 :goto_17

    :cond_4
    sget-object v10, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->Companion:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->c:Ljava/lang/String;

    move-object/from16 v25, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->a:Ljava/lang/String;

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->b()Lkotlin/enums/EnumEntries;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/16 v18, 0x1

    if-eqz v17, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v17

    check-cast v19, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    move-object/from16 v26, v6

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->e()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    if-nez v4, :cond_6

    move/from16 v6, v18

    goto :goto_6

    :cond_6
    :goto_5
    move/from16 v6, v23

    goto :goto_6

    :cond_7
    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    sget-object v20, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode$Companion;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_6
    if-eqz v6, :cond_c

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->d()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    if-nez v10, :cond_9

    move/from16 v6, v18

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v6, v23

    goto :goto_8

    :cond_a
    if-nez v10, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_8
    if-eqz v6, :cond_c

    goto :goto_9

    :cond_c
    move-object/from16 v6, v26

    goto :goto_4

    :cond_d
    move-object/from16 v26, v6

    const/16 v17, 0x0

    :goto_9
    check-cast v17, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    if-nez v17, :cond_1f

    if-nez v10, :cond_e

    move-object/from16 v20, v8

    const/16 v17, 0x0

    goto :goto_e

    :cond_e
    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->b()Lkotlin/enums/EnumEntries;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    move-object/from16 v19, v6

    invoke-virtual/range {v17 .. v17}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual/range {v17 .. v17}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->e()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    if-nez v4, :cond_f

    move/from16 v6, v18

    goto :goto_c

    :cond_f
    :goto_b
    move/from16 v6, v23

    goto :goto_c

    :cond_10
    if-nez v4, :cond_11

    goto :goto_b

    :cond_11
    sget-object v20, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode$Companion;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_c
    if-eqz v6, :cond_12

    invoke-virtual/range {v17 .. v17}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->a()Ljava/util/List;

    move-result-object v6

    move-object/from16 v20, v8

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;

    invoke-direct {v8, v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_d

    :cond_12
    move-object/from16 v20, v8

    :cond_13
    move-object/from16 v6, v19

    move-object/from16 v8, v20

    goto :goto_a

    :cond_14
    move-object/from16 v20, v8

    const/16 v16, 0x0

    :goto_d
    check-cast v16, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    move-object/from16 v17, v16

    :goto_e
    if-nez v17, :cond_20

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->b()Lkotlin/enums/EnumEntries;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    move-object/from16 v16, v6

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->e()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_16

    if-nez v4, :cond_15

    move/from16 v6, v18

    goto :goto_11

    :cond_15
    :goto_10
    move/from16 v6, v23

    goto :goto_11

    :cond_16
    if-nez v4, :cond_17

    goto :goto_10

    :cond_17
    sget-object v17, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode$Companion;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_11
    if-eqz v6, :cond_18

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->d()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_18

    goto :goto_12

    :cond_18
    move-object/from16 v6, v16

    goto :goto_f

    :cond_19
    const/4 v8, 0x0

    :goto_12
    move-object/from16 v17, v8

    check-cast v17, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    if-nez v17, :cond_20

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->b()Lkotlin/enums/EnumEntries;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    move-object/from16 v16, v6

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->e()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1b

    if-nez v4, :cond_1a

    move/from16 v6, v18

    goto :goto_15

    :cond_1a
    :goto_14
    move/from16 v6, v23

    goto :goto_15

    :cond_1b
    if-nez v4, :cond_1c

    goto :goto_14

    :cond_1c
    sget-object v17, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode$Companion;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_15
    if-eqz v6, :cond_1d

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->f()Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_16

    :cond_1d
    move-object/from16 v6, v16

    goto :goto_13

    :cond_1e
    const/4 v8, 0x0

    :goto_16
    move-object/from16 v17, v8

    check-cast v17, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    goto :goto_17

    :cond_1f
    move-object/from16 v20, v8

    :cond_20
    :goto_17
    if-eqz v17, :cond_21

    move-object v0, v14

    move-object/from16 v14, v17

    goto :goto_18

    :cond_21
    move-object/from16 v8, v20

    move-object/from16 v0, v24

    move-object/from16 v4, v25

    move-object/from16 v6, v26

    goto/16 :goto_2

    :cond_22
    move-object/from16 v24, v0

    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object v0, v14

    const/4 v14, 0x0

    :goto_18
    if-nez v14, :cond_23

    goto :goto_1b

    :cond_23
    invoke-virtual {v14}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->c()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v14}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->e()Ljava/lang/String;

    move-result-object v18

    if-eqz v11, :cond_26

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->Companion:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->a()Lkotlin/enums/EnumEntries;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    invoke-virtual {v8}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    goto :goto_19

    :cond_25
    const/4 v6, 0x0

    :goto_19
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    move-object/from16 v20, v6

    goto :goto_1a

    :cond_26
    const/16 v20, 0x0

    :goto_1a
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->n:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    new-instance v16, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    const/16 v22, 0x0

    move-object/from16 v19, v7

    invoke-direct/range {v16 .. v22}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v19

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;

    invoke-virtual {v14}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->h()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v4}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_27

    :goto_1b
    const/4 v9, 0x0

    goto :goto_1d

    :cond_27
    new-instance v10, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    if-nez v12, :cond_28

    move-object/from16 v12, v25

    :cond_28
    if-nez v0, :cond_29

    move-object/from16 v17, v25

    goto :goto_1c

    :cond_29
    move-object/from16 v17, v0

    :goto_1c
    if-eqz v9, :cond_2a

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    :cond_2a
    move/from16 v18, v23

    const/16 v20, 0x0

    move-object/from16 v19, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v26

    invoke-direct/range {v10 .. v20}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v10

    :goto_1d
    if-eqz v9, :cond_2b

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    move-object/from16 v0, v24

    move-object/from16 v4, v25

    goto/16 :goto_0

    :cond_2c
    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2d
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchArea;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchArea;-><init>(IILjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
