.class final Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryBottomSheetContentKt$CatalogSubcategoryBottomSheetContent$1$1$1$1$1$2$1$handleSubcategoryClick$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryBottomSheetContentKt$CatalogSubcategoryBottomSheetContent$1$1$1$1$1$2$1$handleSubcategoryClick$1$1;->b:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryBottomSheetContentKt$CatalogSubcategoryBottomSheetContent$1$1$1$1$1$2$1$handleSubcategoryClick$1$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryBottomSheetContentKt$CatalogSubcategoryBottomSheetContent$1$1$1$1$1$2$1$handleSubcategoryClick$1$1;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryBottomSheetContentKt$CatalogSubcategoryBottomSheetContent$1$1$1$1$1$2$1$handleSubcategoryClick$1$1;->b:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryBottomSheetContentKt$CatalogSubcategoryBottomSheetContent$1$1$1$1$1$2$1$handleSubcategoryClick$1$1;->c:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_1

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->b:Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->c:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    :cond_4
    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryBottomSheetContentKt$CatalogSubcategoryBottomSheetContent$1$1$1$1$1$2$1$handleSubcategoryClick$1$1;->d:Lkotlin/jvm/functions/Function1;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->c:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
