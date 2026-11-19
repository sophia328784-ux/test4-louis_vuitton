.class final Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$5$1$1"
    f = "WebViewFragment.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->V:Lkotlin/Lazy;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5$1$1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$SetConsents;

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$SetConsents;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$SetConsents;->a:Ljava/util/List;

    sget-object p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_f

    new-instance p1, Lf31;

    const/16 v1, 0x9

    invoke-direct {p1, v0, v1}, Lf31;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    :cond_0
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->f(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "consentAnalytics"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v6, v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    check-cast v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v3, :cond_4

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->a()Z

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v5

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v4, v4, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    check-cast v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v3, :cond_7

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->a()Z

    move-result v1

    goto :goto_3

    :cond_7
    move v1, v5

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "consentPersonalization"

    invoke-virtual {p1, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v3, v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_9
    move-object v1, v2

    :goto_4
    check-cast v1, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v1, :cond_a

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->a()Z

    move-result v5

    :cond_a
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "consentAdvertising"

    invoke-virtual {p1, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->c:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->k:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->W()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->R()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_5

    :cond_d
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$LoadCart;

    if-eqz p1, :cond_e

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$LoadCart;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$LoadCart;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->O(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;

    if-eqz p1, :cond_10

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;->a:Ljava/lang/Throwable;

    sget-object p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    move-result-object p1

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->p1:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_f

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_f

    sget-object p1, Lcom/google/android/material/snackbar/Snackbar;->A:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140967

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->g(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    :cond_f
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_10
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method
