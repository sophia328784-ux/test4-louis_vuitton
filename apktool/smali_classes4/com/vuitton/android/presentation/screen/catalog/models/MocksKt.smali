.class public abstract Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;
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
.field public static final a:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;

.field public static final b:Ljava/util/List;

.field public static final c:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;

.field public static final d:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

.field public static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;

    const-string v1, "NEW"

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    const-string v2, "1"

    const-string v3, "Subcategory 1"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    const-string v6, "2"

    const-string v7, "Subcategory 2"

    invoke-direct {v5, v6, v7, v4}, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;)V

    filled-new-array {v1, v5}, [Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "Subcategory Group 1"

    invoke-direct {v0, v5, v1}, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    invoke-direct {v5, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    invoke-direct {v2, v6, v7, v4}, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;)V

    filled-new-array {v5, v2}, [Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Subcategory Group 2"

    invoke-direct {v1, v3, v2}, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    filled-new-array {v0, v1}, [Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;->b:Ljava/util/List;

    new-instance v5, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;->c:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;

    new-instance v6, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    new-instance v9, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v0, "Slide 1"

    const-string v1, "Subtitle 1"

    invoke-direct {v9, v0, v1}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedMocksKt;->a:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-direct {v11, v0, v4}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    const/4 v12, 0x0

    const-string v8, "1"

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    new-instance v8, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    new-instance v10, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v1, "Slide 2"

    const-string v2, "Subtitle 2"

    invoke-direct {v10, v1, v2}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-direct {v12, v0, v4}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    const/4 v13, 0x0

    const-string v9, "2"

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    filled-new-array {v7, v8}, [Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v11, 0x8

    const/4 v12, 0x0

    const-string v7, "1"

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;->d:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    new-instance v0, Lfa0;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;->e:Lkotlin/Lazy;

    return-void
.end method
