.class public abstract Lcom/vuitton/android/presentation/screen/pdp/PdpDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToProductPage;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToProductPage;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToProductPage;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToProductPage;->b:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToProductPage;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToProductPage;->d:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p1

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWelcomePage;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWelcomePage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWelcomePage;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToArPage;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToArPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToArPage;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "SKU"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_2
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToBeautyVtoPage;

    const-string v0, "isShadeFinder"

    const-string v2, "PRODUCT"

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToBeautyVtoPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToBeautyVtoPage;->a:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1

    :cond_3
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWishlistPage;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWishlistPage;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWishlistPage;->a:Z

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToCatalogAfterStoreModePage;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToCustomizationWebViewPage;

    if-eqz p1, :cond_6

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToCustomizationWebViewPage;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToCustomizationWebViewPage;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToCustomizationWebViewPage;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    const/16 v11, 0x5fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToPrivacyPolicyPage;

    if-eqz p1, :cond_7

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToStoreLocatorPage;

    if-eqz p1, :cond_8

    new-instance p1, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToStoreLocatorPage;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToStoreLocatorPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToStoreLocatorPage;->a:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToStoreLocatorPage;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToTrunkSpeakerSectionToPage;

    if-eqz p1, :cond_9

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivity;->p:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivity$Companion;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->TRUNK_SPEAKER:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivity;

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "SECTION_TYPE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "SHOULD_SHOW_WATCH_FACES_PAGE"

    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_9
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWebViewPage;

    if-eqz p1, :cond_a

    new-instance v4, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWebViewPage;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWebViewPage;->a:Ljava/lang/String;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWifiDeviceToPage;

    const/4 v4, 0x0

    if-eqz p1, :cond_b

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToNativeCartPage;

    if-eqz p1, :cond_c

    sget-object p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->w:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity$Companion;

    sget-object p1, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;->PDP:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "PREVIOUS_SCREEN"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_c
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToShadeFinderPage;

    if-eqz p1, :cond_d

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0

    :cond_d
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToVirtualStudioOsaPage;

    if-eqz p1, :cond_e

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;->LOCATION_FORM:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToVirtualStudioOsaPage;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToVirtualStudioOsaPage;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToVirtualStudioOsaPage;->a:Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;->b:Ljava/lang/String;

    const p0, 0x7f140a82

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->PDP:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/16 v7, 0x1a0

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;->c(Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_e
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToAICompanionPage;

    if-eqz p0, :cond_f

    sget-object p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-object v4
.end method
