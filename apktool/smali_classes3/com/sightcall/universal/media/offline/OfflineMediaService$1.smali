.class Lcom/sightcall/universal/media/offline/OfflineMediaService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/offline/OfflineMediaService;
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

    iput-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$1;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

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

    iget-object p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$1;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-static {p2}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->a(Lcom/sightcall/universal/media/offline/OfflineMediaService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sightcall/universal/media/offline/OfflineMediaService$1$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService$1$2;-><init>(Lcom/sightcall/universal/media/offline/OfflineMediaService$1;)V

    int-to-long p0, p1

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$1;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-static {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->h(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V

    return-void

    :cond_0
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$1;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-static {p2}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->a(Lcom/sightcall/universal/media/offline/OfflineMediaService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sightcall/universal/media/offline/OfflineMediaService$1$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService$1$1;-><init>(Lcom/sightcall/universal/media/offline/OfflineMediaService$1;)V

    int-to-long p0, p1

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
