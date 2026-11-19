.class Lcom/powerfront/insidewebsdkandroid/InsideClient$4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/powerfront/insidewebsdkandroid/InsideClient;


# direct methods
.method public constructor <init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$4;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$4;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-boolean p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d:Z

    if-nez p1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->c:Z

    :cond_0
    iget-boolean p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->c:Z

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d:Z

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$4;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->c:Z

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$4;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a(Lcom/powerfront/insidewebsdkandroid/InsideClient;I)V

    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$4;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a(Lcom/powerfront/insidewebsdkandroid/InsideClient;I)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$4;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    invoke-static {p0, p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a(Lcom/powerfront/insidewebsdkandroid/InsideClient;I)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$4;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-boolean p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->c:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d:Z

    :cond_0
    iput-boolean v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->c:Z

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->a:Lcom/vuitton/foundation/contracts/link/UrlVerifier;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$UnknownUrl;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$UnknownUrl;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lcom/vuitton/foundation/contracts/link/UrlVerifier;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$DeepLinkUrl;

    invoke-direct {v1, p2}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$DeepLinkUrl;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Lcom/vuitton/foundation/contracts/link/UrlVerifier;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance v1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$WebAppLinkUrl;

    invoke-direct {v1, p2}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$WebAppLinkUrl;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-static {v1}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    return v0
.end method
