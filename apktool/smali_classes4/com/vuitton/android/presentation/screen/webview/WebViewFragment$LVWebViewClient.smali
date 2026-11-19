.class final Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LVWebViewClient"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V",
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
.field public static final synthetic b:I


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "browser_fallback_url"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->R()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p2, p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget-object p2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->d:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->j1:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->V()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->d:Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->i1:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->j1:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->V()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->d:Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->e:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/webview/c;

    const/4 v0, 0x1

    invoke-direct {p1, p3, p2, v0}, Lcom/vuitton/android/presentation/screen/webview/c;-><init>(Ljava/lang/Object;Landroid/webkit/WebResourceRequest;I)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    move-result-object p0

    sget-object p2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->p1:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-interface {p0, p2, p1, p3}, Lcom/vuitton/foundation/logger/Logger;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    sget-object p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "buildConfigProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/webview/c;

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcom/vuitton/android/presentation/screen/webview/c;-><init>(Ljava/lang/Object;Landroid/webkit/WebResourceRequest;I)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    move-result-object p0

    sget-object p2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->p1:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-interface {p0, p2, p1, p3}, Lcom/vuitton/foundation/logger/Logger;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    sget-object p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->p1:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/webview/b;

    const/4 v2, 0x2

    invoke-direct {v1, p3, v2}, Lcom/vuitton/android/presentation/screen/webview/b;-><init>(Ljava/lang/Object;I)V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/vuitton/foundation/logger/Logger;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->j1:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->i1:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->i1:Z

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->d:Landroid/widget/ProgressBar;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lf31;

    const/16 p3, 0x9

    invoke-direct {p2, p0, p3}, Lf31;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    if-nez v2, :cond_0

    iput-boolean v3, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->h1:Z

    return v3

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->h0:Lkotlin/Lazy;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->e:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/StringAndroidExtKt;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->h1:Z

    const-string v6, ""

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v10

    new-instance v11, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;

    invoke-direct {v11, v0, v8, v9, v7}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v10, v7, v7, v11, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->R:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->t0:Lkotlin/Lazy;

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_1

    move-object v8, v6

    :cond_1
    invoke-virtual {v0, v8}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "chatLifecycleObserver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_3
    :goto_0
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    move-result-object v0

    const-string v8, "Url-in-webView"

    invoke-interface {v0, v8, v2, v7}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v9, "intent"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_4

    :goto_1
    move v0, v3

    goto :goto_5

    :cond_4
    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v11, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v11, Lkotlin/Result$Failure;

    invoke-direct {v11, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v11

    :goto_2
    instance-of v11, v0, Lkotlin/Result$Failure;

    if-eqz v11, :cond_5

    move-object v0, v7

    :cond_5
    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v10, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;->a(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_8

    goto/16 :goto_d

    :cond_8
    invoke-static {v8}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->U()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object v8

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    const-string v10, "android.intent.action.VIEW"

    if-nez v11, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-virtual {v8, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;

    move-result-object v12

    if-eqz v12, :cond_11

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;->b:Ljava/lang/String;

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string v8, "General Terms"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_6

    :cond_a
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v9}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    :sswitch_1
    const-string v8, "catalog"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto/16 :goto_6

    :sswitch_2
    const-string v8, "wall"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto/16 :goto_6

    :sswitch_3
    const-string v8, "Wall"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto/16 :goto_6

    :cond_b
    sget-object v10, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    sget-object v12, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->FEED:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v15, 0x0

    const/16 v16, 0x1c

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    :sswitch_4
    const-string v13, "My Orders"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto/16 :goto_6

    :sswitch_5
    const-string v13, "MyOrders"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto/16 :goto_6

    :cond_c
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->d:Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;

    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->LOGIN:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "null"

    const-string v4, "myorders"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;->a:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {v1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, v2

    check-cast v12, Ljava/lang/Iterable;

    new-instance v1, Lbp;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lbp;-><init>(I)V

    const/16 v17, 0x1e

    const-string v13, "/"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_d

    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, v3

    check-cast v12, Ljava/lang/Iterable;

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const-string v13, "/"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    :sswitch_6
    const-string v8, "Privacy Policy"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v3}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    :sswitch_7
    const-string v8, "External"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_6

    :sswitch_8
    const-string v8, "external"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_6

    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    :sswitch_9
    const-string v8, "Catalog"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_6

    :cond_10
    sget-object v10, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    sget-object v12, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v15, 0x0

    const/16 v16, 0x1c

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    :cond_11
    :goto_6
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->U()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object v8

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    if-nez v11, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v8, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;

    move-result-object v12

    if-eqz v12, :cond_15

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;->b:Ljava/lang/String;

    const-string v13, "Forward"

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    const-string v13, "forward"

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    :cond_13
    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "Url used to open CustomTabs = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const v3, 0x7f060097

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const/high16 v5, -0x1000000

    or-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v6, v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->b:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    iput-object v3, v6, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->b:Ljava/lang/Integer;

    const v3, 0x7f060477

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    or-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->a()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->b:Landroid/os/Bundle;

    invoke-static {v11, v2, v0}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_14
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_d

    :cond_15
    :goto_7
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const-string v11, "linkHandler"

    if-eqz v8, :cond_17

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->O:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v12, :cond_16

    invoke-static {v12, v2, v8}, Lcom/vuitton/android/presentation/link/LinkHandler;->b(Lcom/vuitton/android/presentation/link/LinkHandler;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)Z

    move-result v8

    goto :goto_8

    :cond_16
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_17
    move v8, v3

    :goto_8
    if-nez v8, :cond_2d

    const-string v8, "mailto:"

    invoke-static {v2, v8, v3}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-static {v2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move-object v1, v6

    :cond_18
    invoke-virtual {v0}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_9

    :cond_19
    move-object v6, v0

    :goto_9
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.extra.EMAIL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.CC"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    :cond_1a
    const-string v6, "tel:"

    invoke-static {v2, v6, v3}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1b

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    :cond_1b
    const-string v6, "/homepage"

    invoke-static {v2, v6, v3}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_1d

    new-instance v0, Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1c
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_d

    :cond_1d
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->U()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object v6

    invoke-static {v2}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1e

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->e:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_a

    :cond_1e
    move v6, v3

    :goto_a
    if-eqz v6, :cond_1f

    new-instance v0, Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v9

    :cond_1f
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->U()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->b1:Lkotlin/Lazy;

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v12, -0x1

    if-nez v8, :cond_20

    goto :goto_b

    :cond_20
    const-string v8, "success"

    invoke-static {v2, v8, v3}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_21

    if-eqz v6, :cond_2d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CARE_SERVICE_PAYMENT_SUCCESS"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_d

    :cond_21
    const-string v8, "error"

    invoke-static {v2, v8, v3}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_22

    if-eqz v6, :cond_2d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CARE_SERVICE_PAYMENT_FAILED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_d

    :cond_22
    const-string v8, "cancel"

    invoke-static {v2, v8, v3}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_23

    if-eqz v6, :cond_2d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CARE_SERVICE_PAYMENT_CANCEL"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_d

    :cond_23
    :goto_b
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->U()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    if-eqz v5, :cond_24

    const-string v5, "lvpass=true"

    invoke-static {v1, v5, v3}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "cancelOrder=true"

    invoke-static {v1, v5, v3}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2d

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "NATIVE_CART_ORDER_CANCELED"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_d

    :cond_24
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    :try_start_3
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_d

    :catch_0
    :cond_25
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->f:Ljava/lang/String;

    const-string v5, "lvpass"

    if-eqz v0, :cond_27

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    iput-boolean v9, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->g1:Z

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->AUTHENTICATE_GOOGLE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->O:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/vuitton/android/presentation/link/LinkHandler;->e:I

    invoke-virtual {v2, v0, v5, v7}, Lcom/vuitton/android/presentation/link/LinkHandler;->a(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z

    move-result v0

    goto/16 :goto_c

    :cond_26
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_27
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->g:Ljava/lang/String;

    if-eqz v0, :cond_29

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    iput-boolean v9, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->g1:Z

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->AUTHENTICATE_LINE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->O:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/vuitton/android/presentation/link/LinkHandler;->e:I

    invoke-virtual {v2, v0, v5, v7}, Lcom/vuitton/android/presentation/link/LinkHandler;->a(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z

    move-result v0

    goto :goto_c

    :cond_28
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_29
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->h:Ljava/lang/String;

    if-eqz v0, :cond_2b

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    iput-boolean v9, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->g1:Z

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->AUTHENTICATE_KAKAO:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->O:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/vuitton/android/presentation/link/LinkHandler;->e:I

    invoke-virtual {v2, v0, v5, v7}, Lcom/vuitton/android/presentation/link/LinkHandler;->a(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z

    move-result v0

    goto :goto_c

    :cond_2a
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_2b
    move v0, v3

    :goto_c
    if-eqz v0, :cond_2c

    goto :goto_d

    :cond_2c
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->R()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return v3

    :cond_2d
    :goto_d
    return v9

    :sswitch_data_0
    .sparse-switch
        -0x7ba80807 -> :sswitch_9
        -0x6c869c35 -> :sswitch_8
        -0x68ac3815 -> :sswitch_7
        -0x3fbde6f6 -> :sswitch_6
        -0x332f302f -> :sswitch_5
        -0x23f0b027 -> :sswitch_4
        0x2905ea -> :sswitch_3
        0x3791ca -> :sswitch_2
        0x211f6019 -> :sswitch_1
        0x7a02580f -> :sswitch_0
    .end sparse-switch
.end method
