.class public abstract Lcom/vuitton/android/presentation/screen/portal/models/MocksKt;
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
.field public static final a:Lcom/vuitton/android/presentation/model/common/AssetUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    new-instance v3, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "https://pass-prp.louisvuitton.com/media/app-bo/e7d186e4-774b-4bb3-8c58-d232ef0d1c84.jpeg"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/portal/models/MocksKt;->a:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    new-instance v8, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    sget-object v1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    new-instance v9, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const-string v10, "videoId"

    const-string v11, "https://vod.fl.freecaster.net/vod/louisvuitton/IfOBTlFfWQ_1080p.mp4"

    const-string v12, "https://posters.freecaster-uat.com/videos/louisvuitton/d3ae6f7a-6c13-3c29-a3cb-72839555a7d4-1705373593/1920x1080.jpg"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v16, "url"

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v8, v0, v9}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    new-instance v9, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    const-string v1, "FS-M-SS2023-Show-Aranya"

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    const-string v1, "Discover to immersive"

    invoke-direct {v9, v1, v0}, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    new-instance v11, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;

    const-string v1, "https://fr-ppf.louisvuitton.com/fra-fr/histoires/the-capucines"

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;-><init>(Ljava/lang/String;)V

    const-string v1, "Discover to webview"

    invoke-direct {v11, v1, v0}, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;

    const-string v0, "Notify me"

    sget-object v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;

    invoke-direct {v6, v0, v1}, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;

    const-string v1, "2024-10-09T08:39:00Z"

    invoke-static {v1}, Lcom/vuitton/foundation/util/StringKtExtKt;->c(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v1

    const-string v4, "Story"

    const-string v5, "Explore Master Perfumer Jacques Cavallier Belletrud\u2019s fragrances, a myriad of olfactory compositions with precious accords."

    const-string v3, "The Art of Gifting V11"

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;-><init>(Ljava/time/Instant;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;

    const-string v6, "Story"

    const-string v7, "Explore Master Perfumer Jacques Cavallier Belletrud\u2019s fragrances, a myriad of olfactory compositions with precious accords."

    const-string v5, "The Art of Gifting V11"

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;

    new-instance v9, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const-string v10, "videoId"

    move-object/from16 v21, v11

    const-string v11, "https://vod.fl.freecaster.net/vod/louisvuitton/l8FfFpSumU_1080p.mp4"

    const-string v12, "https://posters.freecaster-uat.com/videos/louisvuitton/af918909-67bb-312c-bdfa-140f3d2caa1e-1705373528/1920x1080.jpg"

    const-string v16, "url"

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v3, v8, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-direct {v1, v3, v9}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    const/16 v22, 0x0

    const-string v17, "The Campaign V11 to V12"

    const-string v18, "Holiday Season"

    const-string v19, "Louis Vuitton celebrates the festive season with a magical new campaign featuring Vivienne, the Maison\'s mascot."

    move-object/from16 v16, v0

    move-object/from16 v20, v1

    invoke-direct/range {v16 .. v22}, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/portal/models/PortalSlideTypeUiModel;->CONTENT:Lcom/vuitton/android/presentation/screen/portal/models/PortalSlideTypeUiModel;

    const-string v5, "portal619-1"

    invoke-direct {v1, v5, v3, v4}, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/portal/models/PortalSlideTypeUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    const-string v5, "portal619-2"

    invoke-direct {v4, v5, v3, v0}, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/portal/models/PortalSlideTypeUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    filled-new-array {v1, v4}, [Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "https://vod.fl.freecaster.net/vod/louisvuitton/RWKgfdNM2G_128k.mp3"

    const-string v1, "portal619"

    move-object v4, v2

    const-string v2, "Discover the gift guide"

    const-string v3, "Holiday season"

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
