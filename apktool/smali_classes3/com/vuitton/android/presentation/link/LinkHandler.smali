.class public final Lcom/vuitton/android/presentation/link/LinkHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/link/LinkHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/link/LinkHandler;",
        "",
        "Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;",
        "linkClassifier",
        "Lcom/vuitton/android/presentation/link/parsing/LinkParser;",
        "linkParser",
        "Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;",
        "linkNavigator",
        "Lcom/vuitton/android/presentation/helper/NavigationHelper;",
        "navigationHelper",
        "<init>",
        "(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;Lcom/vuitton/android/presentation/link/parsing/LinkParser;Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;Lcom/vuitton/android/presentation/helper/NavigationHelper;)V",
        "Companion",
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


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

.field public final b:Lcom/vuitton/android/presentation/link/parsing/LinkParser;

.field public final c:Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;

.field public final d:Lcom/vuitton/android/presentation/helper/NavigationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/link/LinkHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/link/LinkHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;Lcom/vuitton/android/presentation/link/parsing/LinkParser;Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;Lcom/vuitton/android/presentation/helper/NavigationHelper;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/link/LinkHandler;->a:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    iput-object p2, p0, Lcom/vuitton/android/presentation/link/LinkHandler;->b:Lcom/vuitton/android/presentation/link/parsing/LinkParser;

    iput-object p3, p0, Lcom/vuitton/android/presentation/link/LinkHandler;->c:Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;

    iput-object p4, p0, Lcom/vuitton/android/presentation/link/LinkHandler;->d:Lcom/vuitton/android/presentation/helper/NavigationHelper;

    return-void
.end method

.method public static b(Lcom/vuitton/android/presentation/link/LinkHandler;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/link/LinkHandler;->a:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/presentation/link/LinkHandler;->a(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    if-nez v1, :cond_1

    :cond_0
    move/from16 v17, v12

    goto/16 :goto_7

    :cond_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/link/LinkHandler;->b:Lcom/vuitton/android/presentation/link/parsing/LinkParser;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/link/models/ParsedLink;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/link/LinkHandler;->c:Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;

    iget-object v3, v0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->d:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iget-object v5, v0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    iget-object v13, v0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->c:Lcom/vuitton/android/presentation/helper/NavigationHelper;

    iget-object v0, v0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->e:Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;

    instance-of v6, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateGoogle;

    const/4 v14, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;->b(Landroidx/fragment/app/FragmentActivity;)V

    :goto_0
    move/from16 v17, v12

    :goto_1
    move v0, v14

    goto/16 :goto_6

    :cond_2
    instance-of v6, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateLine;

    if-eqz v6, :cond_3

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;->c(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_3
    instance-of v6, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateKakao;

    if-eqz v6, :cond_4

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;->a(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_4
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;

    const/16 v15, 0xc

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;

    iget-object v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;->b:Landroid/net/Uri;

    const/16 v2, 0x7e

    invoke-static {v0, v6, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->c(Landroid/net/Uri;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v6

    :goto_2
    invoke-static {v13, v0, v1, v6, v15}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    move-result v0

    move/from16 v17, v12

    goto/16 :goto_6

    :cond_6
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;

    if-eqz v0, :cond_7

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;

    iget-object v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;->b:Ljava/lang/String;

    const/16 v2, 0x7c

    invoke-static {v5, v1, v0, v12, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->b(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroid/app/Activity;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_7
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$StoreLocator;

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v0

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->g:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    const/4 v10, 0x0

    const/16 v11, 0x7fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object/from16 v16, v9

    const/4 v9, 0x0

    move/from16 v17, v12

    move-object/from16 v12, v16

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v13, v0, v1, v12, v15}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    goto :goto_1

    :cond_8
    move/from16 v17, v12

    move-object v12, v6

    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;

    if-eqz v0, :cond_b

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;

    iget-object v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;->b:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    :goto_3
    move/from16 v0, v17

    goto/16 :goto_6

    :cond_a
    invoke-static {v13, v0, v1, v12, v15}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    goto/16 :goto_1

    :cond_b
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$Services;

    if-eqz v0, :cond_c

    instance-of v0, v1, Lcom/vuitton/android/presentation/screen/main/MainActivity;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->SERVICES:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v13, v0, v1, v12, v15}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    goto/16 :goto_1

    :cond_c
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;

    if-eqz v0, :cond_f

    invoke-virtual {v4}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v2, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesCreatePage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesCreatePage;

    invoke-static {v2, v1}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_4

    :cond_d
    sget-object v2, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWelcomePage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWelcomePage;

    invoke-static {v2, v1}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    :goto_4
    if-nez v0, :cond_e

    move-object/from16 v12, p3

    :cond_e
    const/16 v0, 0x8

    invoke-static {v13, v2, v1, v12, v0}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    move-result v0

    goto/16 :goto_6

    :cond_f
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$Appointments;

    if-eqz v0, :cond_10

    new-instance v18, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;

    sget-object v19, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;->LOCATION_FORM:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$Appointments;

    iget-object v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$Appointments;->b:Ljava/lang/String;

    sget-object v24, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->APP_LINK:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/16 v27, 0xdc

    const/16 v28, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v28}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;-><init>(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v13, v0, v1, v12, v15}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    move-result v0

    goto :goto_6

    :cond_10
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$LegalNotices;

    if-eqz v0, :cond_11

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$LegalNotices;

    iget-object v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$LegalNotices;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v13, v0, v1, v12, v15}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    goto/16 :goto_1

    :cond_11
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;

    if-eqz v0, :cond_12

    invoke-virtual {v3}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->l:Ljava/lang/String;

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;

    iget-object v2, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/StringAndroidExtKt;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x78

    invoke-static {v5, v1, v2, v14, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->b(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroid/app/Activity;Ljava/lang/String;ZI)V

    goto/16 :goto_1

    :cond_12
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_5

    :cond_13
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object v0

    :goto_5
    invoke-static {v13, v0, v1, v12, v15}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    goto/16 :goto_1

    :cond_14
    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->b(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_15

    goto/16 :goto_3

    :cond_15
    invoke-static {v13, v0, v1, v12, v15}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    goto/16 :goto_1

    :goto_6
    if-eqz v0, :cond_16

    return v14

    :cond_16
    :goto_7
    return v17
.end method

.method public final c(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p3}, Lcom/vuitton/android/presentation/link/LinkHandler;->a(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    return v12

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/link/LinkHandler;->a:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    move-object v2, p1

    move-object v1, p2

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v2, 0xc

    iget-object p0, p0, Lcom/vuitton/android/presentation/link/LinkHandler;->d:Lcom/vuitton/android/presentation/helper/NavigationHelper;

    invoke-static {p0, p1, p2, v0, v2}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    return v12

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/link/LinkHandler;->c:Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;

    iget-object p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->l(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;

    iget-object p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->f(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;

    iget-object p2, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;->a:Ljava/lang/String;

    const/4 p3, 0x0

    const/16 p4, 0x7c

    invoke-static {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->b(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroid/app/Activity;Ljava/lang/String;ZI)V

    return-void

    :cond_2
    instance-of p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;

    if-eqz p0, :cond_4

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;

    iget-object p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;->a:Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, ""

    :cond_3
    const/4 p2, 0x0

    const/4 p3, 0x6

    invoke-static {p1, p0, p2, p3}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_4
    instance-of p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;

    if-eqz p0, :cond_5

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;

    iget-object p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->m(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    :cond_5
    instance-of p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;

    if-eqz p0, :cond_6

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;

    iget-object p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->i(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    :cond_6
    sget-object p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;->a:Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {p5, p3, p4}, Lcom/vuitton/android/presentation/chat/ChatAttachable;->b(II)V

    return-void

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-void
.end method
