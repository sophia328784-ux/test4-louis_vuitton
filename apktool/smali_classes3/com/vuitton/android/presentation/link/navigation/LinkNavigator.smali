.class public final Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;",
        "",
        "Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;",
        "webViewRouter",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/presentation/helper/NavigationHelper;",
        "navigationHelper",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;",
        "webViewSocialAuthenticationHandler",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/helper/NavigationHelper;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

.field public final b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final c:Lcom/vuitton/android/presentation/helper/NavigationHelper;

.field public final d:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final e:Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/helper/NavigationHelper;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    iput-object p2, p0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->c:Lcom/vuitton/android/presentation/helper/NavigationHelper;

    iput-object p4, p0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->d:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p5, p0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->e:Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->e(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;

    invoke-static {p1, p0, v0}, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;->b(Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;
    .locals 10

    instance-of v0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Pdp;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Pdp;

    iget-object v3, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Pdp;->b:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v8, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Pdp;->c:Z

    const/16 v9, 0x3c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p0

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Plp;

    const-string v0, "nav_arg_theme_id"

    const-string v2, "nav_arg_plp_key"

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Plp;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Plp;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_1
    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$NativeStory;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/vuitton/android/presentation/screen/story/StoryDestinations$ToStoryPage;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$NativeStory;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$NativeStory;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/story/StoryDestinations$ToStoryPage;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/screen/story/StoryDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/story/StoryDestinations$ToStoryPage;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PortalSlider;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;->s:Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PortalSlider;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PortalSlider;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;->b:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;

    iget-object v4, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_5
    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Connectivity;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Connectivity;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Connectivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Feed;

    if-eqz p0, :cond_7

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Feed;

    iget-object v5, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Feed;->b:Ljava/lang/String;

    const/16 v6, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Privacy;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Privacy;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$PreferenceCenter;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$PreferenceCenter;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;->q:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

    invoke-direct {p0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "extra_display_bottom_sheet"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0

    :cond_9
    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;

    if-eqz p0, :cond_a

    sget-object p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity;->r:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;

    iget-object v0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, p1}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AICompanion;

    if-eqz p0, :cond_b

    sget-object p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_b
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$BareExplore;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$BareExplore;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_c
    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLv;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLv;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderDetail;

    if-nez p0, :cond_10

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDetail;

    if-nez p0, :cond_10

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveCategory;

    if-nez p0, :cond_10

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveProduct;

    if-nez p0, :cond_10

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;

    if-nez p0, :cond_10

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Authenticate;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Authenticate;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_1

    :cond_d
    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateGoogle;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateLine;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateKakao;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$StoreLocator;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$StoryArticle;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Services;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$Appointments;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$LegalNotices;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;

    if-nez p0, :cond_f

    instance-of p0, p1, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;

    if-nez p0, :cond_f

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Cart;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Cart;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    sget-object p0, Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_0

    :cond_e
    invoke-static {}, Lv40;->g()V

    :cond_f
    :goto_0
    return-object v4

    :cond_10
    :goto_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    const/4 v10, 0x0

    const/16 v11, 0x7fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Intent;)Lcom/vuitton/android/presentation/link/models/LinkTarget;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/link/models/LinkTarget$ForwardToExistingFlow;->a:Lcom/vuitton/android/presentation/link/models/LinkTarget$ForwardToExistingFlow;

    return-object p0
.end method
