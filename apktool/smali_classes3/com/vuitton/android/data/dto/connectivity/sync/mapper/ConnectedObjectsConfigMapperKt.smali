.class public abstract Lcom/vuitton/android/data/dto/connectivity/sync/mapper/ConnectedObjectsConfigMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;
    .locals 39

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;->a:Ljava/util/List;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;->b:Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;

    if-eqz v3, :cond_2a

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;->a:Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;

    const/16 v7, 0xa

    if-eqz v6, :cond_20

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;

    iget-object v9, v6, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->a:Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;

    if-eqz v9, :cond_c

    iget-object v11, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;->a:Ljava/lang/String;

    iget-object v12, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;->b:Ljava/lang/String;

    iget-object v13, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;->c:Ljava/lang/String;

    iget-object v14, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;->d:Ljava/lang/String;

    iget-object v15, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;->e:Ljava/lang/String;

    iget-object v10, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;->f:Ljava/util/List;

    if-eqz v10, :cond_3

    check-cast v10, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v20, v8

    invoke-static {v10, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/dto/connectivity/sync/SectionFaqDto;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Lcom/vuitton/android/data/dto/connectivity/sync/SectionFaqDto;->a:Ljava/util/List;

    if-eqz v10, :cond_1

    check-cast v10, Ljava/lang/Iterable;

    move-object/from16 v16, v8

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v17, v11

    invoke-static {v10, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/dto/connectivity/sync/FaqDto;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/Faq;

    move-object/from16 v18, v10

    iget-object v10, v11, Lcom/vuitton/android/data/dto/connectivity/sync/FaqDto;->a:Ljava/lang/String;

    move-object/from16 v19, v12

    iget-object v12, v11, Lcom/vuitton/android/data/dto/connectivity/sync/FaqDto;->b:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/android/data/dto/connectivity/sync/FaqDto;->c:Ljava/lang/String;

    invoke-direct {v7, v10, v12, v11}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/Faq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    const/16 v7, 0xa

    goto :goto_1

    :cond_0
    :goto_2
    move-object/from16 v19, v12

    goto :goto_3

    :cond_1
    move-object/from16 v16, v8

    move-object/from16 v17, v11

    const/4 v8, 0x0

    goto :goto_2

    :goto_3
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionFaq;

    invoke-direct {v7, v8}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionFaq;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v19

    const/16 v7, 0xa

    goto :goto_0

    :cond_2
    move-object/from16 v16, v4

    :goto_4
    move-object/from16 v17, v11

    move-object/from16 v19, v12

    goto :goto_5

    :cond_3
    move-object/from16 v20, v8

    const/16 v16, 0x0

    goto :goto_4

    :goto_5
    iget-object v4, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;->g:Ljava/util/List;

    if-eqz v4, :cond_7

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/dto/connectivity/sync/SectionTutorialsDto;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v8, Lcom/vuitton/android/data/dto/connectivity/sync/SectionTutorialsDto;->a:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/android/data/dto/connectivity/sync/SectionTutorialsDto;->b:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/android/data/dto/connectivity/sync/SectionTutorialsDto;->c:Ljava/lang/String;

    move-object/from16 v18, v4

    iget-object v4, v8, Lcom/vuitton/android/data/dto/connectivity/sync/SectionTutorialsDto;->d:Ljava/util/List;

    if-eqz v4, :cond_5

    check-cast v4, Ljava/lang/Iterable;

    move-object/from16 v22, v10

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    const/16 v11, 0xa

    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/dto/connectivity/sync/WatchTutorialDto;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorial;

    move-object/from16 v21, v4

    iget-object v4, v11, Lcom/vuitton/android/data/dto/connectivity/sync/WatchTutorialDto;->a:Ljava/lang/String;

    move-object/from16 v27, v13

    iget-object v13, v11, Lcom/vuitton/android/data/dto/connectivity/sync/WatchTutorialDto;->b:Ljava/lang/String;

    move-object/from16 v28, v14

    iget-object v14, v11, Lcom/vuitton/android/data/dto/connectivity/sync/WatchTutorialDto;->f:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/android/data/dto/connectivity/sync/WatchTutorialDto;->g:Ljava/lang/String;

    invoke-direct {v12, v4, v13, v14, v11}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v21

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    goto :goto_7

    :cond_4
    move-object/from16 v25, v10

    :goto_8
    move-object/from16 v27, v13

    move-object/from16 v28, v14

    goto :goto_9

    :cond_5
    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    const/16 v25, 0x0

    goto :goto_8

    :goto_9
    iget-object v4, v8, Lcom/vuitton/android/data/dto/connectivity/sync/SectionTutorialsDto;->e:Ljava/lang/String;

    new-instance v21, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionTutorials;

    move-object/from16 v26, v4

    invoke-direct/range {v21 .. v26}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionTutorials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v4, v21

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v18

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    goto/16 :goto_6

    :cond_6
    :goto_a
    move-object/from16 v27, v13

    move-object/from16 v28, v14

    goto :goto_b

    :cond_7
    const/4 v7, 0x0

    goto :goto_a

    :goto_b
    iget-object v4, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;->h:Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;

    if-eqz v4, :cond_8

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;

    iget-object v10, v4, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;->b:Ljava/lang/String;

    invoke-direct {v8, v10, v4}, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v8

    goto :goto_c

    :cond_8
    const/16 v18, 0x0

    :goto_c
    iget-object v4, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;->i:Ljava/util/List;

    if-eqz v4, :cond_a

    check-cast v4, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchfacesDto;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v21, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;

    iget-object v10, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchfacesDto;->a:Ljava/lang/String;

    iget-object v11, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchfacesDto;->b:Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;

    if-eqz v11, :cond_9

    new-instance v29, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;

    iget-object v12, v11, Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;->a:Ljava/lang/String;

    iget-object v13, v11, Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;->b:Ljava/util/ArrayList;

    iget-object v14, v11, Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;->c:Ljava/lang/String;

    move-object/from16 v38, v4

    iget-object v4, v11, Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;->d:Ljava/lang/String;

    move-object/from16 v33, v4

    iget-object v4, v11, Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;->e:Ljava/lang/String;

    move-object/from16 v34, v4

    iget-object v4, v11, Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;->f:Ljava/util/ArrayList;

    move-object/from16 v35, v4

    iget-object v4, v11, Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;->g:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;->h:Ljava/lang/String;

    move-object/from16 v36, v4

    move-object/from16 v37, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    invoke-direct/range {v29 .. v37}, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v29

    goto :goto_e

    :cond_9
    move-object/from16 v38, v4

    const/16 v23, 0x0

    :goto_e
    iget-object v4, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchfacesDto;->c:Ljava/lang/String;

    iget-object v11, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchfacesDto;->d:Ljava/lang/String;

    iget-object v9, v9, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchfacesDto;->e:Ljava/util/ArrayList;

    move-object/from16 v24, v4

    move-object/from16 v26, v9

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    invoke-direct/range {v21 .. v26}, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v4, v21

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v38

    goto :goto_d

    :cond_a
    const/4 v8, 0x0

    :cond_b
    new-instance v10, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

    move-object/from16 v11, v17

    move-object/from16 v12, v19

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;Ljava/util/List;)V

    move-object v9, v10

    goto :goto_f

    :cond_c
    move-object/from16 v20, v8

    const/4 v9, 0x0

    :goto_f
    iget-object v4, v6, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->b:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;

    if-eqz v4, :cond_11

    iget-object v7, v4, Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;->a:Ljava/util/List;

    if-eqz v7, :cond_d

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v7, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;

    invoke-static {v10}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqCategoryMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_d
    const/4 v8, 0x0

    :cond_e
    iget-object v7, v4, Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;->b:Ljava/util/List;

    iget-object v10, v4, Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;->c:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    if-eqz v10, :cond_f

    invoke-static {v10}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqVideoMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;

    move-result-object v10

    goto :goto_11

    :cond_f
    const/4 v10, 0x0

    :goto_11
    iget-object v4, v4, Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;->d:Ljava/util/List;

    if-eqz v4, :cond_10

    invoke-static {v4}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/TutorialMapperKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_12

    :cond_10
    const/4 v4, 0x0

    :goto_12
    new-instance v11, Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;

    invoke-direct {v11, v8, v7, v10, v4}, Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;Ljava/util/List;)V

    move-object v10, v11

    goto :goto_13

    :cond_11
    const/4 v10, 0x0

    :goto_13
    iget-object v4, v6, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->c:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;

    if-eqz v4, :cond_16

    iget-object v7, v4, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->a:Ljava/util/List;

    if-eqz v7, :cond_12

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v7, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;

    invoke-static {v11}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqCategoryMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_12
    const/4 v8, 0x0

    :cond_13
    iget-object v7, v4, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->b:Ljava/util/List;

    iget-object v11, v4, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->c:Ljava/util/List;

    if-eqz v11, :cond_14

    invoke-static {v11}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/TutorialMapperKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_15

    :cond_14
    const/4 v11, 0x0

    :goto_15
    iget-object v4, v4, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->d:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    if-eqz v4, :cond_15

    invoke-static {v4}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqVideoMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;

    move-result-object v4

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    :goto_16
    new-instance v12, Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;

    invoke-direct {v12, v8, v7, v11, v4}, Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;)V

    move-object v11, v12

    goto :goto_17

    :cond_16
    const/4 v11, 0x0

    :goto_17
    iget-object v4, v6, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->d:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;

    if-eqz v4, :cond_1a

    iget-object v7, v4, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->a:Ljava/util/List;

    if-eqz v7, :cond_17

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v7, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;

    invoke-static {v12}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqCategoryMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_17
    const/4 v8, 0x0

    :cond_18
    iget-object v7, v4, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->b:Ljava/util/List;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->c:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    if-eqz v4, :cond_19

    invoke-static {v4}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqVideoMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;

    move-result-object v4

    goto :goto_19

    :cond_19
    const/4 v4, 0x0

    :goto_19
    new-instance v12, Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;

    invoke-direct {v12, v8, v7, v4}, Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;)V

    goto :goto_1a

    :cond_1a
    const/4 v12, 0x0

    :goto_1a
    iget-object v4, v6, Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;->e:Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;

    if-eqz v4, :cond_1f

    iget-object v14, v4, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->a:Ljava/lang/String;

    iget-object v15, v4, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->b:Ljava/lang/String;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->c:Ljava/util/List;

    if-eqz v6, :cond_1c

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;

    invoke-static {v8}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqCategoryMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_1b
    move-object/from16 v16, v7

    goto :goto_1c

    :cond_1c
    const/16 v16, 0x0

    :goto_1c
    iget-object v6, v4, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->d:Ljava/util/List;

    if-eqz v6, :cond_1d

    invoke-static {v6}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/TutorialMapperKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_1d

    :cond_1d
    const/16 v17, 0x0

    :goto_1d
    iget-object v6, v4, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->e:Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;

    if-eqz v6, :cond_1e

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/connectivity/watch/SectionWatchVideoDto;->b:Ljava/lang/String;

    invoke-direct {v7, v8, v6}, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v7

    goto :goto_1e

    :cond_1e
    const/16 v18, 0x0

    :goto_1e
    iget-object v4, v4, Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;->f:Ljava/util/List;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;

    move-object/from16 v19, v4

    invoke-direct/range {v13 .. v19}, Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;Ljava/util/List;)V

    :goto_1f
    move-object/from16 v8, v20

    goto :goto_20

    :cond_1f
    const/4 v13, 0x0

    goto :goto_1f

    :goto_20
    invoke-direct/range {v8 .. v13}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;)V

    move-object/from16 v20, v8

    goto :goto_21

    :cond_20
    const/4 v8, 0x0

    :goto_21
    iget-object v3, v3, Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;->b:Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;

    if-eqz v3, :cond_29

    iget-object v4, v3, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;->a:Ljava/util/List;

    if-eqz v4, :cond_21

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;

    invoke-static {v7}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqCategoryMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    :cond_22
    iget-object v4, v3, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;->b:Ljava/util/List;

    if-eqz v4, :cond_23

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;

    invoke-static {v9}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqCategoryMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_23
    const/4 v7, 0x0

    :cond_24
    iget-object v4, v3, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;->c:Ljava/util/List;

    if-eqz v4, :cond_25

    check-cast v4, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;

    invoke-static {v10}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqCategoryMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_25
    const/4 v9, 0x0

    :cond_26
    iget-object v3, v3, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;->d:Lcom/vuitton/android/data/dto/connectivity/lightup/HomePageContentDto;

    if-eqz v3, :cond_28

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/HomePageContent;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/connectivity/lightup/HomePageContentDto;->a:Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;

    if-eqz v3, :cond_27

    invoke-static {v3}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqVideoMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;

    move-result-object v3

    goto :goto_25

    :cond_27
    const/4 v3, 0x0

    :goto_25
    invoke-direct {v4, v3}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/HomePageContent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;)V

    goto :goto_26

    :cond_28
    const/4 v4, 0x0

    :goto_26
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;

    invoke-direct {v3, v6, v7, v9, v4}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/HomePageContent;)V

    move-object v4, v3

    goto :goto_27

    :cond_29
    const/4 v4, 0x0

    :goto_27
    invoke-direct {v5, v8, v4}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;)V

    move-object v4, v5

    goto :goto_28

    :cond_2a
    const/4 v4, 0x0

    :goto_28
    iget-object v3, v0, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;->d:Ljava/lang/Long;

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v1
.end method
