.class LZjTIAZ/USrWvK$uSrWvK;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/USrWvK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SafeWebViewClient"
.end annotation


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;


# instance fields
.field public final synthetic a:LZjTIAZ/USrWvK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "]vY\u0013V@]Oc\u000b\u0015"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->b:Ljava/lang/String;

    const-string v0, "]vY\u0013_]H\u0000wP\\P@DR\u0002\t"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->c:Ljava/lang/String;

    const-string v0, "aKGVPWFVtUpNGYE\u0002\t"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->d:Ljava/lang/String;

    const-string v0, "aKERTWiI\u007fXFTPR\u0017][XD^\u0017\u000e"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->e:Ljava/lang/String;

    const-string v0, ".Pg_\u000e"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->f:Ljava/lang/String;

    const-string v0, "aKGVPWFVtU}HAFrJ[EY\u0016\r"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->g:Ljava/lang/String;

    const-string v0, "\\@f\\F@LE1TGNZD\r\u0018"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->h:Ljava/lang/String;

    const-string v0, ".HtZ]t]A|T\u0008"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->i:Ljava/lang/String;

    const-string v0, "M|SdVPyItFgI[XRJ"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->j:Ljava/lang/String;

    const-string v0, "FqAc\u0013"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->k:Ljava/lang/String;

    const-string v0, "{K~]\\EA"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$uSrWvK;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LZjTIAZ/USrWvK;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/USrWvK$uSrWvK;->a:LZjTIAZ/USrWvK;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, LZjTIAZ/USrWvK$uSrWvK;->a:LZjTIAZ/USrWvK;

    iget-object v1, v0, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {v0, p1}, LZjTIAZ/USrWvK;->f(LZjTIAZ/USrWvK;Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, LZjTIAZ/USrWvK$uSrWvK;->j:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, LZjTIAZ/USrWvK$uSrWvK;->e:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {p1, p2, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    iget-object p0, p0, LZjTIAZ/USrWvK$uSrWvK;->a:LZjTIAZ/USrWvK;

    iget-object p1, p0, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    :try_start_0
    sget-object p1, LZjTIAZ/USrWvK$uSrWvK;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LZjTIAZ/USrWvK$uSrWvK;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p3, LZjTIAZ/USrWvK$uSrWvK;->f:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p3, LZjTIAZ/USrWvK$uSrWvK;->i:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p0, [Ljava/lang/Throwable;

    invoke-static {p1, p2, p3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, LZjTIAZ/USrWvK$uSrWvK;->j:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, LZjTIAZ/USrWvK$uSrWvK;->d:Ljava/lang/String;

    invoke-static {p1, v0, p3}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    new-array p0, p0, [Ljava/lang/Throwable;

    invoke-static {p2, p3, p0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    iget-object p0, p0, LZjTIAZ/USrWvK$uSrWvK;->a:LZjTIAZ/USrWvK;

    iget-object p1, p0, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    :try_start_0
    sget-object p1, LZjTIAZ/USrWvK$uSrWvK;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LZjTIAZ/USrWvK$uSrWvK;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, LZjTIAZ/USrWvK$uSrWvK;->f:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p3, LZjTIAZ/USrWvK$uSrWvK;->i:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p0, [Ljava/lang/Throwable;

    invoke-static {p1, p2, p3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, LZjTIAZ/USrWvK$uSrWvK;->j:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, LZjTIAZ/USrWvK$uSrWvK;->g:Ljava/lang/String;

    invoke-static {p1, v0, p3}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    new-array p0, p0, [Ljava/lang/Throwable;

    invoke-static {p2, p3, p0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_0
    iget-object p0, p0, LZjTIAZ/USrWvK$uSrWvK;->a:LZjTIAZ/USrWvK;

    iget-object p2, p0, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p0, p0, LZjTIAZ/USrWvK;->k:Landroid/webkit/WebView;

    if-eqz p0, :cond_3

    if-eq p1, p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    sget-object p1, LZjTIAZ/USrWvK$uSrWvK;->j:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, LZjTIAZ/USrWvK$uSrWvK;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    sget-object p3, LZjTIAZ/USrWvK$uSrWvK;->l:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p0, [Ljava/lang/Throwable;

    invoke-static {p1, p2, p3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    sget-object p2, LZjTIAZ/USrWvK$uSrWvK;->j:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, LZjTIAZ/USrWvK$uSrWvK;->c:Ljava/lang/String;

    invoke-static {p1, v0, p3}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array p0, p0, [Ljava/lang/Throwable;

    invoke-static {p2, p1, p0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
