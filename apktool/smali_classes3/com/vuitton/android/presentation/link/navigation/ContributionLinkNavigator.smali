.class public final Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;,
        Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;",
        "",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/presentation/helper/NavigationHelper;",
        "navigationHelper",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/presentation/link/LinkHandler;",
        "linkHandler",
        "<init>",
        "(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/helper/NavigationHelper;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/link/LinkHandler;)V",
        "ContributionLinkNavigationAnimation",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final c:Lcom/vuitton/android/presentation/helper/NavigationHelper;

.field public final d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final e:Lcom/vuitton/android/presentation/link/LinkHandler;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/helper/NavigationHelper;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/link/LinkHandler;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p2, p0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->c:Lcom/vuitton/android/presentation/helper/NavigationHelper;

    iput-object p4, p0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->e:Lcom/vuitton/android/presentation/link/LinkHandler;

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    and-int/lit8 v2, p6, 0x4

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    move-object v14, v13

    goto :goto_0

    :cond_0
    move-object/from16 v14, p3

    :goto_0
    and-int/lit8 v2, p6, 0x8

    if-eqz v2, :cond_1

    move-object v15, v13

    goto :goto_1

    :cond_1
    move-object/from16 v15, p4

    :goto_1
    and-int/lit8 v2, p6, 0x10

    if-eqz v2, :cond_2

    move-object v9, v13

    goto :goto_2

    :cond_2
    move-object/from16 v9, p5

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AICompanion;

    const/4 v10, 0x1

    if-eqz v2, :cond_3

    sget-object v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    :goto_3
    move-object/from16 v2, p1

    :goto_4
    move-object/from16 v17, v9

    goto/16 :goto_8

    :cond_3
    sget-object v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Wishlist;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Wishlist;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object/from16 v2, p1

    sget-object v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$MyLv;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$MyLv;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v13}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4

    :cond_5
    instance-of v3, v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WishlistShared;

    if-eqz v3, :cond_7

    move-object v3, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WishlistShared;

    iget-object v4, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WishlistShared;->c:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v7, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WishlistShared;->b:Ljava/lang/String;

    const/4 v6, 0x2

    move-object v4, v5

    move-object v5, v3

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v3, v1

    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Category;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Category;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Category;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "nav_arg_plp_key"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "nav_arg_theme_id"

    invoke-virtual {v1, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_4

    :cond_8
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ExclusiveOffer;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ExclusiveOffer;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ExclusiveOffer;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_4

    :cond_9
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;->b:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_3

    :cond_a
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    move-object v2, v3

    check-cast v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;

    iget-object v3, v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;->b:Ljava/lang/String;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->MONOGRAM:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    const/16 v12, 0x5fc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    const/4 v9, 0x0

    move/from16 v16, v10

    const/4 v10, 0x0

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_8

    :cond_b
    move-object/from16 v2, p1

    move-object/from16 v17, v9

    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$RepairCreate;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesCreatePage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesCreatePage;

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_8

    :cond_c
    sget-object v1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWelcomePage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWelcomePage;

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_8

    :cond_d
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Osa;

    if-eqz v1, :cond_e

    new-instance v18, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;

    sget-object v19, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;->LOCATION_FORM:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    move-object v1, v3

    check-cast v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Osa;

    iget-object v1, v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Osa;->b:Ljava/lang/String;

    sget-object v24, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->CONTRIBUTION_LINK:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/16 v27, 0xdc

    const/16 v28, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v1

    invoke-direct/range {v18 .. v28}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;-><init>(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v18

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_8

    :cond_e
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Portal;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;->s:Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Portal;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Portal;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_8

    :cond_f
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Product;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Product;

    iget-object v4, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Product;->b:Ljava/lang/String;

    iget-boolean v8, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Product;->c:Z

    const/16 v9, 0x3c

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_8

    :cond_10
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ProductList;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ProductList;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ProductList;->b:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;->b(Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_8

    :cond_11
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$SeoLandingPage;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$SeoLandingPage;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$SeoLandingPage;->b:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->SEO_LANDING_PAGE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_8

    :cond_12
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ShadeFinder;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "PRODUCT"

    invoke-virtual {v1, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "isShadeFinder"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_13
    const/4 v4, 0x1

    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Spotlight;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->r:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Spotlight;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Spotlight;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "COLLECTION_ID"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_14
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Story;

    if-eqz v1, :cond_15

    sget-object v1, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->t:Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Story;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Story;->b:Ljava/lang/String;

    const/16 v5, 0xc

    invoke-static {v1, v2, v3, v5}, Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_8

    :cond_15
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;

    if-eqz v1, :cond_19

    move-object v1, v3

    check-cast v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;

    sget-object v3, Lcom/vuitton/android/presentation/utils/UrlFactory;->b:Lcom/vuitton/android/presentation/utils/UrlFactory$Companion;

    iget-object v5, v0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v5}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;->b:Ljava/lang/String;

    if-nez v1, :cond_16

    const-string v1, ""

    :cond_16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "/"

    invoke-static {v5, v3}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v3, v1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object v3, v1

    goto :goto_6

    :cond_17
    move-object v3, v13

    :goto_6
    if-eqz v3, :cond_18

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    const/4 v11, 0x0

    const/16 v12, 0x7fc

    move/from16 v16, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object v1

    goto :goto_8

    :cond_18
    :goto_7
    move-object v1, v13

    goto :goto_8

    :cond_19
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BOOKING_MY_EXPERIENCES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/BookingActivity;->r:Lcom/vuitton/android/presentation/screen/booking/BookingActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/vuitton/android/presentation/screen/booking/BookingActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "extra_experience_id"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    :cond_1a
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Other;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->e:Lcom/vuitton/android/presentation/link/LinkHandler;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Other;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Other;->b:Ljava/lang/String;

    sget v4, Lcom/vuitton/android/presentation/link/LinkHandler;->e:I

    invoke-virtual {v1, v3, v2, v13}, Lcom/vuitton/android/presentation/link/LinkHandler;->a(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x6

    invoke-static {v2, v3, v13, v1}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->h(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    goto :goto_7

    :cond_1b
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AudioGuide;

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity;->r:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity$Companion;

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AudioGuide;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AudioGuide;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v13}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_8

    :cond_1c
    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;

    if-nez v1, :cond_18

    instance-of v1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Unknown;

    if-eqz v1, :cond_1d

    goto :goto_7

    :cond_1d
    invoke-static {}, Lv40;->g()V

    return-void

    :goto_8
    if-eqz v1, :cond_23

    if-eqz v14, :cond_1e

    invoke-virtual {v1, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1e
    if-eqz v15, :cond_22

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    move v10, v4

    goto :goto_9

    :cond_1f
    const/4 v10, 0x0

    :goto_9
    sget-object v3, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$WhenMappings;->a:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-ne v3, v4, :cond_21

    if-eqz v10, :cond_20

    const v3, 0x7f010039

    const v4, 0x7f01003a

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_a

    :cond_20
    const v3, 0x7f010037

    const v4, 0x7f010038

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    :goto_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    goto :goto_b

    :cond_21
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_22
    :goto_b
    iget-object v0, v0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->c:Lcom/vuitton/android/presentation/helper/NavigationHelper;

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->a(Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;Landroid/os/Bundle;)Z

    :cond_23
    return-void
.end method
