.class public final Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;",
        "",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;",
        "getUrlCatchingListUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;",
        "deepLinkBuilder",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;

.field public final c:Lcom/vuitton/foundation/logger/Logger;

.field public final d:Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->b:Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->c:Lcom/vuitton/foundation/logger/Logger;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->d:Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;

    const-string v6, "www.messenger.com"

    const-string v7, "m.me"

    const-string v0, "www.weibo.com"

    const-string v1, "wa.me"

    const-string v2, "bcrw.apple.com"

    const-string v3, "api.whatsapp.com"

    const-string v4, "line.me"

    const-string v5, "www.facebook.com"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->e:Ljava/util/List;

    return-void
.end method

.method public static b(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroid/app/Activity;Ljava/lang/String;ZI)V
    .locals 13

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    :cond_0
    move/from16 v4, p3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    const/4 v11, 0x0

    const/16 v12, 0x740

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "WebViewRouter"

    const-string v0, "Invalid URL : "

    invoke-static {v0, p2, p0, p1, v1}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->b:Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->X:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;

    return-object v0
.end method
