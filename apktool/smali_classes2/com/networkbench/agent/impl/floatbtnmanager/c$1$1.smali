.class Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/floatbtnmanager/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field final synthetic b:Lcom/networkbench/agent/impl/webview/a/a;

.field final synthetic c:Lcom/networkbench/agent/impl/webview/a/b;

.field final synthetic d:Lcom/networkbench/agent/impl/floatbtnmanager/c$1;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/floatbtnmanager/c$1;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Lcom/networkbench/agent/impl/webview/a/a;Lcom/networkbench/agent/impl/webview/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;->d:Lcom/networkbench/agent/impl/floatbtnmanager/c$1;

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    iput-object p3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;->b:Lcom/networkbench/agent/impl/webview/a/a;

    iput-object p4, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;->c:Lcom/networkbench/agent/impl/webview/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaJsBridge;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaJsBridge;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    const-string v2, "nbsJsBridge"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSJSBridgeDom;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSJSBridgeDom;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    const-string v2, "nbsDOMChanged"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;->b:Lcom/networkbench/agent/impl/webview/a/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c$1$1;->c:Lcom/networkbench/agent/impl/webview/a/b;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  activity.runOnUiThread  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method
