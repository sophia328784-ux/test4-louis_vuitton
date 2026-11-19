.class public abstract Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;",
        "",
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


# direct methods
.method public static a(Lcoil3/request/ImageRequest$Builder;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    invoke-direct {v0}, Lcoil3/network/NetworkHeaders$Builder;-><init>()V

    sget-object v1, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;->c:Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lcoil3/network/NetworkHeaders$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "accept"

    const-string v1, "image/webp,image/heic,image/png;q=0.9,image/*;q=0.8,*/*;q=0.5"

    invoke-virtual {v0, p1, v1}, Lcoil3/network/NetworkHeaders$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders$Builder;->b()Lcoil3/network/NetworkHeaders;

    move-result-object p1

    sget-object v0, Lcoil3/network/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->b()Lcoil3/Extras$Builder;

    move-result-object p0

    sget-object v0, Lcoil3/network/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    invoke-virtual {p0, v0, p1}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcoil3/request/ImageRequest$Builder;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;->a(Lcoil3/request/ImageRequest$Builder;Landroid/content/Context;)V

    sget-object p1, Lcoil3/request/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    const/16 p1, 0xc8

    invoke-static {p0, p1}, Lcoil3/request/ImageRequests_androidKt;->a(Lcoil3/request/ImageRequest$Builder;I)V

    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->b()Lcoil3/Extras$Builder;

    move-result-object p1

    sget-object p2, Lcoil3/request/ImageRequests_androidKt;->g:Lcoil3/Extras$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    sget-object p1, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->x:Lcoil3/size/Precision;

    return-void
.end method
