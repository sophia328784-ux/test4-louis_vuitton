.class public final Lcom/appsflyer/internal/AFa1pSDK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final AFLogger:Lcom/appsflyer/internal/AFc1bSDK;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final unregisterClient:Lcom/appsflyer/internal/AFh1pSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;Lcom/appsflyer/internal/AFh1pSDK;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1bSDK;",
            "Lcom/appsflyer/internal/AFh1pSDK;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Lcom/appsflyer/internal/AFc1bSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1pSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFa1pSDK;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1pSDK;

    iget-object v1, v0, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/appsflyer/internal/AFh1pSDK;->w:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Lcom/appsflyer/internal/AFf1uSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1pSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFf1uSDK;-><init>(Lcom/appsflyer/internal/AFh1pSDK;Lcom/appsflyer/internal/AFc1bSDK;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1pSDK;->d:Ljava/util/Map;

    iput-object v1, v0, Lcom/appsflyer/internal/AFf1uSDK;->v:Ljava/util/Map;

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lcom/appsflyer/internal/AFh1lSDK;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/appsflyer/internal/AFf1vSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1pSDK;

    check-cast v1, Lcom/appsflyer/internal/AFh1lSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFf1vSDK;-><init>(Lcom/appsflyer/internal/AFh1lSDK;Lcom/appsflyer/internal/AFc1bSDK;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/appsflyer/internal/AFf1tSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1pSDK;

    iget-object v5, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Lcom/appsflyer/internal/AFc1bSDK;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/appsflyer/internal/AFf1tSDK;-><init>(Lcom/appsflyer/internal/AFh1pSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v3

    :goto_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->afWarnLog()Lcom/appsflyer/internal/AFe1wSDK;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFe1wSDK;->d(Lcom/appsflyer/internal/AFe1ySDK;)V

    return-void
.end method
