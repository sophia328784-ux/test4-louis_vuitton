.class final Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity$onCreate$1$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity$onCreate$1$1$2$1;->b:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    check-cast p2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;->q:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity$onCreate$1$1$2$1;->b:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$ShopTheLookImmersiveArticle;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$ShopTheLookImmersiveArticle;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;->w2(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;)V

    if-nez p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    :goto_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToProductPage;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToProductPage;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
