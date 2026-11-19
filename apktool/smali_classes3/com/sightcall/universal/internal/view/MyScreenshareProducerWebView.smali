.class public Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/ScreenshareProducer;


# static fields
.field public static final BLANK:Ljava/lang/String; = "about:blank"

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private handler:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

.field private isStarted:Z

.field private progressBar:Landroid/view/View;

.field private screenshare:Lnet/rtccloud/sdk/ScreenshareModule;

.field private session:Lcom/sightcall/universal/model/Session;

.field private sink:Lnet/rtccloud/sdk/Sink$Screenshare;

.field private who:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->SCREENSHARE_PRODUCER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->lambda$restore$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->progressBar:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->updateUrl(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/util/ViewUtils;->whoami(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->who:Ljava/lang/String;

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->getCallComponent()Lcom/sightcall/universal/CallComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/CallComponent;->inject(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)V

    return-void
.end method

.method private synthetic lambda$restore$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->erase()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->processDeleteAll()V

    return-void
.end method

.method private updateUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->session:Lcom/sightcall/universal/model/Session;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->session:Lcom/sightcall/universal/model/Session;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/universal/model/CallParameters;->screenshareWebUrl:Ljava/lang/String;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-object p1, p0, Lcom/sightcall/universal/model/CallParameters;->screenshareWebUrl:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public configure(Lcom/sightcall/universal/model/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->session:Lcom/sightcall/universal/model/Session;

    return-void
.end method

.method public erase()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->processDeleteAll()V

    return-void
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->isStarted:Z

    return p0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->erase()V

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->updateUrl(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->updateUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->erase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    :cond_1
    return-void
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Sink$Screenshare;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onBind() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->screenshare:Lnet/rtccloud/sdk/ScreenshareModule;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {p1, p0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->layoutOver(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStart() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->isStarted:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->setAnchor(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    sget-object v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;->DrawDrop:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;

    invoke-interface {v0, p0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v0, p0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->layoutOver(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->resumeAnnotations(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->activateCoBrowsing()V

    new-instance v0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;-><init>(Landroid/view/View;Lnet/rtccloud/sdk/Sink$Screenshare;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->handler:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STARTED_SHARE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void
.end method

.method public onStop()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStop() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->isStarted:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->stopCoBrowsing()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->handler:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->teardown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->handler:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOPPED_SHARE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onUnbind()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onUnbind() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->screenshare:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    new-instance p1, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$1;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$1;-><init>(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$2;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$2;-><init>(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lge0;

    invoke-direct {v0, p0}, Lge0;-><init>(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->session:Lcom/sightcall/universal/model/Session;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object p1, p1, Lcom/sightcall/universal/model/CallParameters;->screenshareWebUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setProgressBar(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->progressBar:Landroid/view/View;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->progressBar:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public snapshot()Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/SnapshotKt;->getSnapshot(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public unloadUrl()V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->erase()V

    const-string v0, "about:blank"

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->updateUrl(Ljava/lang/String;)V

    return-void
.end method
