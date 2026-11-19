.class public final synthetic Liq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/link/LinkHandler;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Liq0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liq0;->d:Ljava/lang/Object;

    iput-object p2, p0, Liq0;->e:Ljava/lang/Object;

    iput-object p3, p0, Liq0;->f:Ljava/lang/Object;

    iput-object p4, p0, Liq0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p5, p0, Liq0;->b:I

    iput-object p1, p0, Liq0;->c:Ljava/lang/Object;

    iput-object p2, p0, Liq0;->d:Ljava/lang/Object;

    iput-object p3, p0, Liq0;->e:Ljava/lang/Object;

    iput-object p4, p0, Liq0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Liq0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liq0;->c:Ljava/lang/Object;

    iput-object p4, p0, Liq0;->f:Ljava/lang/Object;

    iput-object p2, p0, Liq0;->d:Ljava/lang/Object;

    iput-object p3, p0, Liq0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Liq0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Liq0;->f:Ljava/lang/Object;

    iget-object v4, p0, Liq0;->e:Ljava/lang/Object;

    iget-object v5, p0, Liq0;->d:Ljava/lang/Object;

    iget-object p0, p0, Liq0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    check-cast v5, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;

    check-cast v4, Lcom/linkplay/core/device/LPDevice;

    check-cast v3, Lcom/linkplay/core/device/LPDevice;

    check-cast p1, Lcom/linkplay/core/device/LPDevice;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/Hilt_WifiDeviceDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, v5, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;->m:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceInfo;->getPlayChannel()Lcom/linkplay/core/status/LPPlayChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper;->a(Landroid/content/Context;Lcom/linkplay/core/status/LPPlayChannel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-direct {p1, v3}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;-><init>(Lcom/linkplay/core/device/LPDevice;)V

    invoke-virtual {p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->checkUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->R:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;

    const v1, 0x7f141266

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f1404b0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f141264

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v0, v1, v2, v4, v5}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;->b(Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$showUpdateBottomSheet$1$1;

    invoke-direct {v1, p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$showUpdateBottomSheet$1$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;Lcom/linkplay/core/device/LPDevice;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    sget-object p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    check-cast v4, Lcom/vuitton/android/presentation/link/LinkHandler;

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v5, v4, v3}, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthUtilsKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/link/LinkHandler;Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    invoke-static {p1, p0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v5, p1}, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthUtilsKt;->b(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    const-string p0, "AnalyticsWebInterface"

    invoke-virtual {v0, v3, p0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    check-cast p0, Ljava/util/List;

    check-cast v5, Ljava/util/List;

    check-cast v4, Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ls8;

    const/16 v1, 0xc

    invoke-direct {v0, v5, v4, v3, v1}, Ls8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x695c4065

    invoke-direct {v1, v3, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->a(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v3, p0, v4}, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, 0x799532c4

    invoke-direct {p0, v4, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/ComposableSingletons$TableSizeKt;->a:Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/ComposableSingletons$TableSizeKt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/ComposableSingletons$TableSizeKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v0, 0x3

    invoke-static {p1, v2, p0, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Ljava/lang/String;

    check-cast v3, Ljava/lang/Boolean;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v4

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

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
