.class public final Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$checkGps$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/webview/WebViewActivity$checkGps$1",
        "Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$checkGps$1;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess()V
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$checkGps$1;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->q:Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->r:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method
