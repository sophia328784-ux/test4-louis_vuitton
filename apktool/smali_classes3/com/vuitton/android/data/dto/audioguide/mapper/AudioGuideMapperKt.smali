.class public abstract Lcom/vuitton/android/data/dto/audioguide/mapper/AudioGuideMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;)Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v4

    iget-object v5, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->f:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-static {v6}, Lcom/vuitton/android/data/dto/common/mapper/FeatureThemeMapperKt;->a(Lcom/vuitton/android/data/dto/common/FeatureThemeDto;)Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    move-result-object v6

    iget v7, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->g:I

    iget-object v8, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->h:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->i:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->j:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v10, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;

    iget-object v15, v13, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto;->a:Ljava/lang/String;

    iget-object v13, v13, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto;->b:Ljava/lang/String;

    invoke-direct {v14, v15, v13}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->k:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

    if-eqz v10, :cond_1

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;

    iget-object v15, v10, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;->a:Ljava/lang/String;

    iget-object v13, v10, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;->b:Ljava/lang/String;

    iget-object v10, v10, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v10}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v10

    invoke-direct {v14, v15, v13, v10}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    iget-object v10, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->l:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;

    iget-object v15, v10, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;->a:Ljava/lang/String;

    iget-object v10, v10, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;->b:Ljava/lang/String;

    invoke-direct {v13, v15, v10}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->m:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    move-object v15, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v10, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;

    new-instance v17, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;

    move-object/from16 v24, v1

    iget-object v1, v12, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;->a:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v12, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;->b:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v12, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;->c:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v12, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v21

    iget-object v1, v12, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v22

    iget-object v1, v12, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;->f:Lcom/vuitton/android/data/dto/common/SoundDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/common/Sound;

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/common/SoundDto;->a:Ljava/lang/String;

    move-object/from16 v26, v3

    iget-object v3, v1, Lcom/vuitton/android/data/dto/common/SoundDto;->b:Ljava/lang/String;

    iget v1, v1, Lcom/vuitton/android/data/dto/common/SoundDto;->c:F

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    float-to-long v4, v1

    invoke-direct {v12, v2, v3, v4, v5}, Lcom/vuitton/foundation/model/domain/model/common/Sound;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v23, v12

    invoke-direct/range {v17 .. v23}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/Sound;)V

    move-object/from16 v1, v17

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    goto :goto_2

    :cond_2
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    iget-object v0, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->n:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;

    move-object v10, v11

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v14, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v14}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;)V

    return-object v0
.end method
