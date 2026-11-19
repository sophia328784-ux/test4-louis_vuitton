.class public abstract Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;
    .locals 32

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v4}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v4

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v5

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->f:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-static {v7}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;)Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-result-object v7

    iget v8, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->g:I

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->h:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->j:Ljava/util/List;

    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;

    iget-object v15, v15, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;->a:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->i:Ljava/lang/String;

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    check-cast v13, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;

    if-eqz v13, :cond_2

    new-instance v10, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    iget-object v12, v13, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;->a:Ljava/lang/String;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;->b:Ljava/lang/String;

    invoke-direct {v10, v12, v13}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;

    new-instance v12, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    iget-object v13, v10, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;->a:Ljava/lang/String;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;->b:Ljava/lang/String;

    invoke-direct {v12, v13, v10}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v12

    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;

    new-instance v15, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    iget-object v13, v14, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;->a:Ljava/lang/String;

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;->b:Ljava/lang/String;

    invoke-direct {v15, v13, v14}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v13, 0xa

    goto :goto_2

    :cond_3
    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->k:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;

    if-eqz v11, :cond_4

    new-instance v13, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    iget-object v14, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;->a:Ljava/lang/String;

    iget-object v15, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;->b:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v11}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v11

    invoke-direct {v13, v14, v15, v11}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->l:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;

    move-object v14, v12

    move-object v12, v13

    new-instance v13, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;

    iget-object v15, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;->a:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;->b:Ljava/lang/String;

    invoke-direct {v13, v15, v11}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->m:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    move-object v15, v14

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v18, v1

    const/16 v1, 0xa

    invoke-static {v11, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;

    new-instance v19, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    move-object/from16 v17, v1

    iget-object v1, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;->a:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;->b:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;->c:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v23

    iget-object v1, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v24

    iget-object v1, v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;->f:Lcom/vuitton/foundation/model/domain/model/common/Sound;

    new-instance v25, Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    iget-object v11, v1, Lcom/vuitton/foundation/model/domain/model/common/Sound;->a:Ljava/lang/String;

    move-object/from16 v31, v2

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/Sound;->b:Ljava/lang/String;

    move-object/from16 v27, v2

    iget-wide v1, v1, Lcom/vuitton/foundation/model/domain/model/common/Sound;->c:J

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->c(J)Ljava/lang/String;

    move-result-object v30

    move-wide/from16 v28, v1

    move-object/from16 v26, v11

    invoke-direct/range {v25 .. v30}, Lcom/vuitton/android/presentation/model/common/SoundUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const/16 v27, 0x40

    const/16 v28, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v19 .. v28}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/SoundUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v19

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    goto :goto_4

    :cond_5
    move-object/from16 v31, v2

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->n:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v1

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    move-object v11, v15

    move-object/from16 v15, v16

    const/16 v16, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-direct/range {v0 .. v16}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;JLcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
