.class final Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthContentKt$WebViewAuthContent$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthContentKt$WebViewAuthContent$2$1$1;->b:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthContentKt$WebViewAuthContent$2$1$1;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthContentKt$WebViewAuthContent$2$1$1;->d:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthContentKt$WebViewAuthContent$2$1$1;->b:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;->c:Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;

    iget-object v2, v0, Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;->b:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Akamai-Webview"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthContentKt$WebViewAuthContent$2$1$1;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthContentKt$WebViewAuthContent$2$1$1;->d:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->J8()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
