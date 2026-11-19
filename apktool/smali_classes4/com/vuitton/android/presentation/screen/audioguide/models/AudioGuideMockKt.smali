.class public abstract Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideMockKt;
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


# static fields
.field public static final a:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

.field public static final b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    new-instance v6, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-string v8, "https://pass-prp.louisvuitton.com/media/app-bo/2f21de32-7aa3-4dcc-8147-0d051fbf1f81.jpeg"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    new-instance v5, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    const-string v2, "FS-W-SS-23"

    invoke-direct {v5, v2}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v2, "Explorez les Essentiels de l\'Automne"

    const-string v3, "Pr\u00eat-\u00e0-porter Femme"

    invoke-direct {v4, v2, v3}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    sget-object v9, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {v7, v9}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    const-string v3, "carouselM_01"

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    new-instance v14, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    new-instance v15, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/16 v19, 0x6

    const/16 v20, 0x0

    const-string v16, "https://pass-prp.louisvuitton.com/media/app-bo/2f21de32-7aa3-4dcc-8147-0d051fbf1f81.jpeg"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v20}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v14, v15, v8}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    new-instance v13, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Product;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const/4 v3, 0x0

    const-string v4, "M41414"

    invoke-direct {v13, v4, v3, v8}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Product;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v3, "D\u00e9couvrez l\u2019\u00e9charpe Reykjvaik"

    const-string v4, "Accessoires Femme"

    invoke-direct {v12, v3, v4}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v15, v9}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    const-string v11, "carouselM_02"

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    filled-new-array {v2, v10}, [Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v3, v9}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    const-string v4, "carousel_M"

    const-string v5, "Selectionn\u00e9s pour vous"

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v10, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;

    const-wide/16 v13, 0xfa0

    const-string v15, "Bienvenue \u00e0 la Fondation Louis Vuitton."

    const-wide/16 v11, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;-><init>(JJLjava/lang/String;)V

    new-instance v11, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;

    const-wide/16 v14, 0x2710

    const-string v16, "Cette collection permanente vous invite \u00e0 d\u00e9couvrir les \u0153uvres majeures du XXe si\u00e8cle."

    const-wide/16 v12, 0xfa0

    invoke-direct/range {v11 .. v16}, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;-><init>(JJLjava/lang/String;)V

    new-instance v12, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;

    const-wide/16 v15, 0x4650

    const-string v17, "Laissez-vous guider \u00e0 travers les grandes salles lumineuses con\u00e7ues par Frank Gehry."

    const-wide/16 v13, 0x2710

    invoke-direct/range {v12 .. v17}, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;-><init>(JJLjava/lang/String;)V

    filled-new-array {v10, v11, v12}, [Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v1, "track-01"

    const-string v2, "Introduction"

    const-string v3, "01"

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideMockKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    move-object/from16 v20, v9

    new-instance v9, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v1, "#0B230A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v14

    sget-object v16, Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;->DARK:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    const-string v2, "fr"

    const-string v3, "Fran\u00e7ais"

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    new-instance v3, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v7, 0x6

    const-string v4, ""

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v4, "Jean Paul Gaultier"

    const-string v5, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

    invoke-direct {v2, v4, v5, v3}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;

    const-string v4, "12 pistes"

    const-string v5, "26 minutes"

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    new-instance v22, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/16 v26, 0x6

    const/16 v27, 0x0

    const-string v23, "https://eu.louisvuitton.com/images/is/image/lv/track_01_thumb"

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v27}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v23, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/16 v27, 0x6

    const/16 v28, 0x0

    const-string v24, "https://eu.louisvuitton.com/images/is/image/lv/track_01"

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v28}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v24, Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    const-wide/32 v27, 0x2bf20

    const-string v29, "3:00"

    const-string v25, "sound-01"

    const-string v26, "https://cdn.louisvuitton.com/audio/track_01.mp3"

    invoke-direct/range {v24 .. v29}, Lcom/vuitton/android/presentation/model/common/SoundUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const/16 v29, 0x40

    const/16 v30, 0x0

    move-object/from16 v25, v22

    const-string v22, "track-01"

    move-object/from16 v26, v23

    const-string v23, "Introduction"

    move-object/from16 v27, v24

    const-string v24, "01"

    const/16 v28, 0x0

    invoke-direct/range {v21 .. v30}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/SoundUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v21

    new-instance v21, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    new-instance v22, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/16 v26, 0x6

    const/16 v27, 0x0

    const-string v23, "https://eu.louisvuitton.com/images/is/image/lv/track_02_thumb"

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v27}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v23, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/16 v27, 0x6

    const-string v24, "https://eu.louisvuitton.com/images/is/image/lv/track_02"

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v28}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v24, Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    const-wide/32 v27, 0x3a980

    const-string v29, "4:00"

    const-string v25, "sound-02"

    const-string v26, "https://cdn.louisvuitton.com/audio/track_02.mp3"

    invoke-direct/range {v24 .. v29}, Lcom/vuitton/android/presentation/model/common/SoundUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const/16 v29, 0x40

    move-object/from16 v25, v22

    const-string v22, "track-02"

    move-object/from16 v26, v23

    const-string v23, "Galerie des collections"

    move-object/from16 v27, v24

    const-string v24, "02"

    const/16 v28, 0x0

    invoke-direct/range {v21 .. v30}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/SoundUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v21

    filled-new-array {v4, v5}, [Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    new-instance v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;

    const-string v5, "Cr\u00e9dits : Fondation Louis Vuitton, tous droits r\u00e9serv\u00e9s."

    const-string v6, "Voir les cr\u00e9dits"

    invoke-direct {v4, v5, v6}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x0

    const-string v10, "preview-id"

    const-string v11, "Fondation Louis Vuitton"

    const-string v12, "Collection permanente"

    const/16 v17, 0x3

    move-object v13, v0

    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v9 .. v25}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;JLcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v9, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideMockKt;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    return-void
.end method
