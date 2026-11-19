.class public final Lcom/kakao/sdk/common/util/KakaoCustomTabsClient$openWithDefault$connection$1;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/kakao/sdk/common/util/KakaoCustomTabsClient$openWithDefault$connection$1",
        "Landroidx/browser/customtabs/CustomTabsServiceConnection;",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/kakao/sdk/auth/CustomTabLauncherActivity;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/kakao/sdk/auth/CustomTabLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient$openWithDefault$connection$1;->c:Landroid/net/Uri;

    iput-object p2, p0, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient$openWithDefault$connection$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient$openWithDefault$connection$1;->e:Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const-string p2, "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->a:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->a()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    iget-object p2, p0, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient$openWithDefault$connection$1;->c:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient$openWithDefault$connection$1;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient$openWithDefault$connection$1;->e:Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-object p0, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/kakao/sdk/common/util/SdkLog;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/util/SdkLog;

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->D:Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-static {p0, p1, v0}, Lcom/kakao/sdk/common/util/SdkLog;->a(Lcom/kakao/sdk/common/util/SdkLog;Ljava/lang/Object;Lcom/kakao/sdk/common/util/SdkLogLevel;)V

    return-void
.end method
