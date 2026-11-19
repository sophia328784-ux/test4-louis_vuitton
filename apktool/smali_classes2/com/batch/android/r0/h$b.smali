.class public final Lcom/batch/android/r0/h$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/r0/h;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/z/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/batch/android/r0/h;


# direct methods
.method public constructor <init>(Lcom/batch/android/r0/h;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/r0/h$b;->b:Lcom/batch/android/r0/h;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/r0/h$b;->b:Lcom/batch/android/r0/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/batch/android/r0/h;->a(Lcom/batch/android/r0/h;Z)V

    iget-boolean v0, p0, Lcom/batch/android/r0/h$b;->a:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/batch/android/r0/h$b;->a:Z

    iget-object p0, p0, Lcom/batch/android/r0/h$b;->b:Lcom/batch/android/r0/h;

    invoke-static {p0}, Lcom/batch/android/r0/h;->c(Lcom/batch/android/r0/h;)V

    :cond_0
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/r0/h$b;->a()V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lcom/batch/android/r0/h$b;->a:Z

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/batch/android/r0/h$b;->b:Lcom/batch/android/r0/h;

    invoke-static {p0, p3, p2}, Lcom/batch/android/r0/h;->a(Lcom/batch/android/r0/h;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/batch/android/r0/h$b;->b:Lcom/batch/android/r0/h;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/batch/android/r0/h;->a(Lcom/batch/android/r0/h;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/batch/android/r0/h$b;->b:Lcom/batch/android/r0/h;

    sget-object p1, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->d:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    sget-object p2, Lcom/batch/android/f0/d;->d:Lcom/batch/android/f0/d;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/r0/h;->a(Lcom/batch/android/r0/h;Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-boolean p1, p0, Lcom/batch/android/r0/h$b;->a:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/batch/android/r0/h$b;->b:Lcom/batch/android/r0/h;

    sget-object p1, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->c:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    sget-object p2, Lcom/batch/android/f0/d;->d:Lcom/batch/android/f0/d;

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/r0/h;->a(Lcom/batch/android/r0/h;Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
