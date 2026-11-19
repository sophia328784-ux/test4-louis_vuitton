.class public final Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initWebView$1$customizationCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/pdp/models/CustomizationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initWebView$1$customizationCallback$1$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/webview/WebViewFragment$initWebView$1$customizationCallback$1",
        "Lcom/vuitton/android/presentation/screen/pdp/models/CustomizationCallback;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initWebView$1$customizationCallback$1;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initWebView$1$customizationCallback$1;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initWebView$1$customizationCallback$1$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewConfirmEvent;

    goto :goto_0

    :cond_0
    const-string p0, "Should not happen for customization"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewConfirmEvent;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewConfirmEvent;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewConfirmEvent;

    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;->THREEKIT:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;

    invoke-direct {v1, p1, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;)V

    const-string p1, "CUSTOMIZATION_ID"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "SKU"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CUSTOMIZATION_TYPE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initWebView$1$customizationCallback$1;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initWebView$1$customizationCallback$1$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewConfirmEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;->BASE64:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;

    invoke-direct {v1, p1, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;)V

    const-string p1, "CUSTOMIZATION_ID"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CUSTOMIZATION_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "Should not happen for customization"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
