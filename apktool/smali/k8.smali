.class public final synthetic Lk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/share/deeplink/DeepLinkListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lk8;->b:Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeepLinking(Lcom/appsflyer/share/deeplink/DeepLinkResult;)V
    .locals 3

    iget-object p0, p0, Lk8;->b:Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/appsflyer/share/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/share/deeplink/DeepLinkResult$Status;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p0, 0x2

    if-eq v1, p0, :cond_1

    const/4 p0, 0x3

    if-ne v1, p0, :cond_0

    invoke-virtual {p1}, Lcom/appsflyer/share/deeplink/DeepLinkResult;->getError()Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Deeplink error : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v1, "AppsFlyer"

    invoke-interface {v0, v1, p0, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/appsflyer/share/deeplink/DeepLinkResult;->getDeepLink()Lcom/appsflyer/share/deeplink/DeepLink;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/share/deeplink/DeepLink;->getDeepLinkValue()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/appsflyer/share/deeplink/DeepLink;->getDeepLinkValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;->e:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object p0, p0, Lk8;->b:Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to retrieve Firebase Cloud Message token for uninstall tracking: "

    const/4 v1, 0x0

    const-string v2, "AppsFlyer"

    invoke-static {v0, p1, p0, v2, v1}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
