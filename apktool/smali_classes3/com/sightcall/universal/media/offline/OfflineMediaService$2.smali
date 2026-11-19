.class Lcom/sightcall/universal/media/offline/OfflineMediaService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/media/offline/OfflineMediaService;->createOfflineMediaSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$2;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$2;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-static {p2}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->a(Lcom/sightcall/universal/media/offline/OfflineMediaService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sightcall/universal/media/offline/OfflineMediaService$2$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService$2$2;-><init>(Lcom/sightcall/universal/media/offline/OfflineMediaService$2;)V

    int-to-long p0, p1

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    const-string p1, "data"

    iget-object v0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-object p2, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    iget-boolean v0, v0, Lokhttp3/Response;->r:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    check-cast p2, Lokhttp3/ResponseBody;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$2;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->d(Lcom/sightcall/universal/media/offline/OfflineMediaService;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$2;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "attributes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "uploadUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->f(Lcom/sightcall/universal/media/offline/OfflineMediaService;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$2;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-static {p1}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->b(Lcom/sightcall/universal/media/offline/OfflineMediaService;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->e(Lcom/sightcall/universal/media/offline/OfflineMediaService;Ljava/util/Iterator;)V

    iget-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$2;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-static {p1}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->c(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$2;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-static {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->h(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$2;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-static {p2}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->a(Lcom/sightcall/universal/media/offline/OfflineMediaService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sightcall/universal/media/offline/OfflineMediaService$2$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService$2$1;-><init>(Lcom/sightcall/universal/media/offline/OfflineMediaService$2;)V

    int-to-long p0, p1

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
