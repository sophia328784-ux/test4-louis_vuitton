.class Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$1;
.super Landroid/webkit/WebChromeClient;
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

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$1;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$1;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->b(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$1;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView$1;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    const/16 v0, 0x8

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->b(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->b(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
