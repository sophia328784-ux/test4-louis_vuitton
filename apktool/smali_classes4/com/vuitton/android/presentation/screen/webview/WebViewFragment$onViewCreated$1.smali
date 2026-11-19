.class public final Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$1",
        "Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;",
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


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

.field public final synthetic b:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$1;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$1;->b:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$1;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$1;->b:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->b(Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$1;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->W()Z

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$1;->b:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->b(Z)V

    return-void
.end method
