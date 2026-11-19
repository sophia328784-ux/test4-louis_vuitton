.class public abstract Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    move-object v2, v1

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->f:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    sget-object v3, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_REPLAY:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_DONE:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_UPCOMING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    :goto_0
    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->e:Ljava/time/Instant;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->b:Ljava/lang/String;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;)Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    new-instance v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    if-eqz v0, :cond_0

    new-instance v6, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v3

    :goto_1
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v8

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->f:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-static {v0}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;)Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    move-result-object v9

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v0

    move-object v10, v0

    goto :goto_2

    :cond_2
    move-object v10, v3

    :goto_2
    new-instance v11, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    sget-object v0, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->MARIELOUISE_LEFT:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    goto :goto_3

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_4
    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->MARIELOUISE_CENTERED:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    goto :goto_3

    :cond_5
    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->FULL_WIDTH:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    :goto_3
    invoke-direct {v11, p0}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;-><init>(Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;)V

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;)V

    return-object v4

    :cond_6
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/util/StringKtExtKt;->c(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v0

    new-instance v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    if-eqz v1, :cond_7

    new-instance v7, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    iget-object v8, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->b:Ljava/lang/String;

    invoke-direct {v7, v8, v1}, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object v7, v3

    :goto_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v1

    move-object v8, v1

    goto :goto_5

    :cond_8
    move-object v8, v3

    :goto_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v9

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-static {v1}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;)Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    move-result-object v10

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v3

    :cond_9
    move-object v11, v3

    new-instance v12, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result p0

    if-ne p0, v2, :cond_a

    goto :goto_6

    :cond_a
    move v2, v4

    :goto_6
    invoke-direct {v12, v0, v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;-><init>(Ljava/time/Instant;Z)V

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;)V

    return-object v5

    :cond_b
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->b:Ljava/lang/String;

    if-eqz v5, :cond_c

    new-instance v7, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->e:Ljava/lang/String;

    invoke-direct {v7, v5, v8}, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    move-object v7, v3

    :goto_7
    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v5}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v9

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-static {v5}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;)Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    move-result-object v10

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz v5, :cond_d

    invoke-static {v5}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v5

    move-object v11, v5

    goto :goto_8

    :cond_d
    move-object v11, v3

    :goto_8
    new-instance v12, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    invoke-static {v0}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    move-result-object v5

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->h:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt$WhenMappings;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v8, p0

    if-eq p0, v2, :cond_f

    if-ne p0, v1, :cond_e

    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;->PORTRAIT:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    goto :goto_9

    :cond_e
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_f
    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;->LANDSCAPE:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    :goto_9
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->f:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE_UPCOMING:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    if-ne v1, v3, :cond_10

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->e:Ljava/time/Instant;

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    if-ne v0, v2, :cond_10

    goto :goto_a

    :cond_10
    move v2, v4

    :goto_a
    invoke-direct {v12, v5, p0, v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;-><init>(Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Z)V

    new-instance v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;)V

    return-object v5

    :cond_11
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;

    if-eqz v0, :cond_14

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;

    new-instance v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$HighLightUiModel;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v0

    move-object v8, v0

    goto :goto_b

    :cond_12
    move-object v8, v3

    :goto_b
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz p0, :cond_13

    invoke-static {p0}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v3

    :cond_13
    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$HighLightUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    return-object v4

    :cond_14
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    const/16 v1, 0xa

    if-eqz v0, :cond_1a

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->c:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    if-eqz v6, :cond_15

    iget-object v8, v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->a:Ljava/lang/String;

    goto :goto_d

    :cond_15
    move-object v8, v3

    :goto_d
    if-eqz v6, :cond_16

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->b:Ljava/lang/String;

    move-object v9, v6

    goto :goto_e

    :cond_16
    move-object v9, v3

    :goto_e
    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v6}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v11

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v6}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v10

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz v4, :cond_17

    invoke-static {v4}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v4

    move-object v12, v4

    goto :goto_f

    :cond_17
    move-object v12, v3

    :goto_f
    new-instance v6, Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz p0, :cond_19

    invoke-static {p0}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v3

    :cond_19
    new-instance p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;

    invoke-direct {p0, v0, v2, v5, v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    return-object p0

    :cond_1a
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    if-eqz v0, :cond_1f

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->c:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    if-eqz v6, :cond_1b

    new-instance v8, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->b:Ljava/lang/String;

    invoke-direct {v8, v9, v6}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_1b
    move-object v8, v3

    :goto_11
    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v6}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v9

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v6}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v10

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz v4, :cond_1c

    invoke-static {v4}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v4

    move-object v11, v4

    goto :goto_12

    :cond_1c
    move-object v11, v3

    :goto_12
    new-instance v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1d
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz p0, :cond_1e

    invoke-static {p0}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v3

    :cond_1e
    new-instance p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    invoke-direct {p0, v0, v2, v5, v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    return-object p0

    :cond_1f
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    if-eqz v0, :cond_25

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    if-eqz v2, :cond_20

    new-instance v4, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_20
    move-object v4, v3

    :goto_13
    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    if-eqz v6, :cond_21

    new-instance v8, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->b:Ljava/lang/String;

    invoke-direct {v8, v9, v6}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_21
    move-object v8, v3

    :goto_15
    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v6}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v9

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v6}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v10

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz v2, :cond_22

    invoke-static {v2}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v2

    move-object v11, v2

    goto :goto_16

    :cond_22
    move-object v11, v3

    :goto_16
    new-instance v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_23
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz p0, :cond_24

    invoke-static {p0}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v3

    :cond_24
    new-instance p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    return-object p0

    :cond_25
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    if-eqz v0, :cond_2a

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    if-eqz v0, :cond_26

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->b:Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_17

    :cond_26
    move-object v6, v3

    :goto_17
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlideSingle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlideSingle;->a:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlideSingle;->b:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v8}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v8

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlideSingle;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz v1, :cond_27

    invoke-static {v1}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v1

    goto :goto_19

    :cond_27
    move-object v1, v3

    :goto_19
    invoke-direct {v2, v4, v8, v1}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_28
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->e:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v8

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-eqz p0, :cond_29

    invoke-static {p0}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    move-result-object v3

    :cond_29
    move-object v9, v3

    new-instance v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    return-object v4

    :cond_2a
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;

    if-eqz v0, :cond_2d

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;

    new-instance v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;

    if-eqz v0, :cond_2c

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v0, :cond_2b

    invoke-static {v0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v3

    :cond_2b
    invoke-direct {v1, v2, v6, v3}, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    move-object v6, v1

    goto :goto_1a

    :cond_2c
    move-object v6, v3

    :goto_1a
    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;->d:Ljava/util/List;

    sget-object v9, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/16 v12, 0x20

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_2d
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;

    if-eqz v0, :cond_30

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;

    new-instance v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;

    if-eqz v0, :cond_2f

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v0, :cond_2e

    invoke-static {v0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v3

    :cond_2e
    invoke-direct {v1, v2, v6, v3}, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    move-object v6, v1

    goto :goto_1b

    :cond_2f
    move-object v6, v3

    :goto_1b
    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;->d:Ljava/util/List;

    sget-object v9, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/16 v12, 0x20

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_30
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;

    if-eqz v0, :cond_31

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$AuthenticationUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {p0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$AuthenticationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    return-object v0

    :cond_31
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;

    if-eqz v0, :cond_35

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;

    new-instance v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v8

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;->e:Lcom/vuitton/foundation/model/domain/model/common/Icon;

    if-eqz v0, :cond_33

    sget-object v1, Lcom/vuitton/android/presentation/model/common/mapper/IconUiModelMapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-ne v0, v2, :cond_32

    sget-object v0, Lcom/vuitton/android/presentation/model/common/IconUiModel;->AI_COMPANION:Lcom/vuitton/android/presentation/model/common/IconUiModel;

    move-object v9, v0

    goto :goto_1c

    :cond_32
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_33
    move-object v9, v3

    :goto_1c
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz p0, :cond_34

    invoke-static {p0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v3

    :cond_34
    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/IconUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    return-object v4

    :cond_35
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;

    if-eqz v0, :cond_36

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;->a:Ljava/lang/String;

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;-><init>(Ljava/lang/String;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_36
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Contactability;

    if-eqz v0, :cond_37

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Contactability;

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ContactabilityUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Contactability;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Contactability;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {p0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ContactabilityUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    return-object v0

    :cond_37
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;)Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;->FULLSCREEN:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;->RATIO_1X1:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;->RATIO_9X16:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;->RATIO_16X9:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;->RATIO_4X5:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;->RATIO_2X3:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/GeolocationUiModel;

    iget v3, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;->a:F

    iget v4, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;->b:F

    iget v1, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;->c:I

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/android/presentation/common/editorial/models/GeolocationUiModel;-><init>(FFI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    return-object p0
.end method
