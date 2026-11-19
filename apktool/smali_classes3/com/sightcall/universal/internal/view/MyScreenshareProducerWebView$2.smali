.class Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->restore(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$2;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$2;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->erase()V

    const-string p1, "about:blank"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$2;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->c(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$2;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->c(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
