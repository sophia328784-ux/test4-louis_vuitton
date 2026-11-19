.class final Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LVWebChromeClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient;",
        "Landroid/webkit/WebChromeClient;",
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

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5

    if-eqz p1, :cond_3

    new-instance v0, Lcom/vuitton/android/presentation/screen/webview/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/screen/webview/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_0
    const-string v3, "WebViewConsole"

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lcom/vuitton/foundation/logger/Logger;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v3, v0, v2}, Lcom/vuitton/foundation/logger/Logger;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p0

    return p0
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->q:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->r:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x2

    if-ge v1, p1, :cond_1

    sget-object p1, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a:[Ljava/lang/String;

    aget-object p2, p1, v1

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x5ce

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_1
    new-instance p1, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$checkGps$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$checkGps$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;)V

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;)V

    return-void

    :cond_2
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const-string p2, "BackHomOnclick"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    sget-object p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->X()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->J()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V()V

    return p3

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return p3
.end method
