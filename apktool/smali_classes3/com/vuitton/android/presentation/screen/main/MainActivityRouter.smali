.class public final Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/main/MainActivityRouter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;",
        "",
        "Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;",
        "myLvDeeplinkRouter",
        "Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;",
        "servicesDeeplinkRouter",
        "Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;",
        "webViewRouter",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;

.field public final b:Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;

.field public final c:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->b:Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    return-void
.end method

.method public static b(Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p2 .. p7}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;)V
    .locals 12

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPortalSlider;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPortalSlider;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPortalSlider;->a:Ljava/lang/String;

    sget-object p2, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;->s:Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAudioGuide;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAudioGuide;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAudioGuide;->a:Ljava/lang/String;

    iget-object p2, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAudioGuide;->b:Ljava/lang/String;

    sget-object p3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity;->r:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAICompanion;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToProductDetails;

    if-eqz v0, :cond_3

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToProductDetails;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToProductDetails;->a:Ljava/lang/String;

    sget-object p2, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToSpotlightCollectionDeepLink;

    if-eqz v0, :cond_4

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToSpotlightCollectionDeepLink;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToSpotlightCollectionDeepLink;->a:Ljava/lang/String;

    new-instance p2, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToSpotlightPage;

    invoke-direct {p2, p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToSpotlightPage;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_4
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAdvisorCurationFromDeepLink;

    const-string v1, "PERSONAL_SELECTION_TYPE"

    const-string v2, "PERSONAL_SELECTION_ID"

    const-class v3, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    if-eqz v0, :cond_5

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAdvisorCurationFromDeepLink;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAdvisorCurationFromDeepLink;->a:Ljava/lang/String;

    sget-object p2, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    sget-object p3, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;->ADVISOR_CURATION:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToInStoreSelectionFromDeepLink;

    if-eqz v0, :cond_6

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToInStoreSelectionFromDeepLink;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToInStoreSelectionFromDeepLink;->a:Ljava/lang/String;

    sget-object p2, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    sget-object p3, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;->IN_STORE:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_6
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;

    if-eqz v0, :cond_7

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;->a:Ljava/lang/String;

    sget-object p3, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->LOGIN_WITH_PARAM_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, p0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->c(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_7
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToRegisterWithRedirection;

    const-string v1, "MAIN_ACTIVITY_REQUEST_CODE"

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToRegisterWithRedirection;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToRegisterWithRedirection;->a:Ljava/util/List;

    iget-boolean p3, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToRegisterWithRedirection;->b:Z

    if-eqz p3, :cond_9

    sget-object p3, Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;->p:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity$Companion;

    if-eqz p0, :cond_8

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :cond_8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class p3, Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;

    invoke-direct {p0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "EXTRA_CID"

    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_9
    sget-object p3, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_WITH_PREFILLED_EMAIL:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    if-eqz p0, :cond_a

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :cond_a
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v2, p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->c(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    const/16 p1, 0xa3

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2, p0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_b
    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateDeeplinkV2;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateDeeplinkV2;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object p3, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->DEFAULT:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p3, v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    const/16 p1, 0xa4

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2, p0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_c
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLVPassQRCode;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;

    sget-object p2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_LVPASS_QRCODE:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;->a(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V

    return-void

    :cond_d
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccount;

    if-eqz v0, :cond_e

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_e
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccountWithParsedLink;

    if-eqz v0, :cond_f

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccountWithParsedLink;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccountWithParsedLink;->a:Lcom/vuitton/android/presentation/link/models/ParsedLink;

    sget-object p2, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_f
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAppointments;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;

    sget-object p2, Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;->REDIRECTION_OSA_MY_APPOINTMENTS:Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->b:Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v2}, Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;->a(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V

    return-void

    :cond_10
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPrivacyPolicyFromDeepLink;

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_11
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNotificationsPreferencesFromDeepLink;

    if-eqz v0, :cond_12

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;->q:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "extra_display_bottom_sheet"

    invoke-virtual {p0, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_12
    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCart;

    if-eqz v0, :cond_13

    sget-object v4, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    sget-object v6, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CART:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_13
    move-object v5, p1

    instance-of p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCheckout;

    if-eqz p1, :cond_14

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCheckout;

    iget-object v2, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCheckout;->b:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    const/4 v10, 0x0

    const/16 v11, 0x7fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object p0

    move-object v5, v1

    invoke-virtual {v5, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_14
    instance-of p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToWebView;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    if-eqz p1, :cond_15

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToWebView;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToWebView;->a:Ljava/lang/String;

    const/16 p1, 0x7c

    invoke-static {v0, v5, p0, v3, p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->b(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroid/app/Activity;Ljava/lang/String;ZI)V

    return-void

    :cond_15
    instance-of p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNativeStory;

    if-eqz p1, :cond_16

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNativeStory;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNativeStory;->a:Ljava/lang/String;

    new-instance p1, Lcom/vuitton/android/presentation/screen/story/StoryDestinations$ToStoryPage;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/story/StoryDestinations$ToStoryPage;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/vuitton/android/presentation/screen/story/StoryDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/story/StoryDestinations$ToStoryPage;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_16
    instance-of p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToStoreLocator;

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, v0

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->g:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x7fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object p0

    move-object v5, v1

    invoke-virtual {v5, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_17
    instance-of p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToTravelFromDeepLink;

    if-eqz p1, :cond_18

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->TRAVELS:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_18
    instance-of p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyWatchFromPairingWith;

    if-eqz p1, :cond_19

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyWatchFromPairingWith;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyWatchFromPairingWith;->a:Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;

    sget-object p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;

    invoke-direct {p2, v5, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "PAIRING_V2"

    invoke-virtual {p2, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    filled-new-array {p1, p2}, [Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    return-void

    :cond_19
    instance-of p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToConnectivityDeeplink;

    if-eqz p1, :cond_1a

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToConnectivityDeeplink;

    iget-object p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToConnectivityDeeplink;->a:Ljava/lang/String;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1a
    instance-of p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateFromTravel;

    if-eqz p1, :cond_1b

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object p3, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->DEFAULT:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, p1, p3, v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    const/16 p1, 0xa6

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2, p0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_1b
    instance-of p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToBrowser;

    if-eqz p1, :cond_1d

    new-instance p0, Landroid/content/Intent;

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToBrowser;

    iget-object p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToBrowser;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p0, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.android.chrome"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v5, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1c
    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const p1, 0x7f140edc

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1d
    instance-of p1, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToSeoLandingPage;

    if-eqz p1, :cond_1e

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToSeoLandingPage;

    iget-object v3, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToSeoLandingPage;->a:Ljava/lang/String;

    sget-object p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->SEO_LANDING_PAGE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->b(Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    move-object v0, p0

    move-object v1, v5

    instance-of p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToOsaCreateAppointment;

    if-eqz p0, :cond_1f

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToOsaCreateAppointment;

    iget-object v3, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToOsaCreateAppointment;->a:Ljava/util/List;

    iget-object v4, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToOsaCreateAppointment;->b:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;->LOCATION_FORM:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    sget-object v6, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->APP_LINK:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/16 v7, 0x1b0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;->c(Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1f
    instance-of p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToImmersiveArticle;

    if-eqz p0, :cond_20

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToImmersiveArticle;

    iget-object v2, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToImmersiveArticle;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x3

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->b(Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    instance-of p0, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToSharedWishlist;

    if-eqz p0, :cond_21

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToSharedWishlist;

    iget-object v3, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToSharedWishlist;->a:Ljava/util/List;

    iget-object v4, p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToSharedWishlist;->b:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_21
    invoke-static {}, Lv40;->g()V

    return-void
.end method
