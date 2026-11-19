.class final Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler<",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->b:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$a;->a:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$a;->b(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;)V

    return-object p1
.end method

.method public final b(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]updateCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "DataHandlers1"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$a;->a:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cacheKey"

    invoke-virtual {p0, v0, p1}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
