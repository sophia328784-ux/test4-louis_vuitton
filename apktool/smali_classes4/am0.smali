.class public final synthetic Lam0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V
    .locals 0

    iput p2, p0, Lam0;->b:I

    iput-object p1, p0, Lam0;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lam0;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lam0;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWebViewPage;

    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p1, p0, v0, v3, v1}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWebViewPage;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->s:Lcom/vuitton/foundation/logger/Logger;

    if-eqz p0, :cond_2

    const-string v0, "Invalid URL : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebViewRouter"

    invoke-interface {p0, v0, p1, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    const-string p0, "logger"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;->BACK_IN_STOCK:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->v5(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$CookiesAcceptanceBottomSheet;

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->B()Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, v2, p1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->p(Landroid/app/Activity;Z)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToVirtualStudioOsaPage;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;->c:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToVirtualStudioOsaPage;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;Ljava/util/List;)V

    invoke-static {p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ShadeFinder;

    iget-object p0, p0, Lam0;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    if-eqz p1, :cond_6

    const-string p1, "android.permission.CAMERA"

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->N7()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToShadeFinderPage;->a:Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToShadeFinderPage;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;->SHADE_FINDER:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->d5(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;)V

    goto :goto_2

    :cond_5
    new-instance v0, Lxl0;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->C:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->B:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->w:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v0, :cond_7

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    const-string p0, "contributionLinkNavigator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->f(Landroid/app/Activity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
