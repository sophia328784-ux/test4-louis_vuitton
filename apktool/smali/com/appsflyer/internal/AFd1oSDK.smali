.class public Lcom/appsflyer/internal/AFd1oSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final AFKeystoreWrapper:Ljava/lang/String;

.field public final AFLogger:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field final e:Z

.field public force:Z

.field i:Z

.field final registerClient:Z

.field public final unregisterClient:[B

.field public v:I

.field public w:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 28
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;ZB)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;ZB)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZB)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    iput-boolean p6, p0, Lcom/appsflyer/internal/AFd1oSDK;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1oSDK;->force:Z

    iput-boolean p6, p0, Lcom/appsflyer/internal/AFd1oSDK;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/appsflyer/internal/AFd1oSDK;->v:I

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1oSDK;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/appsflyer/internal/AFd1oSDK;->unregisterClient:[B

    iput-object p3, p0, Lcom/appsflyer/internal/AFd1oSDK;->AFKeystoreWrapper:Ljava/lang/String;

    iput-object p4, p0, Lcom/appsflyer/internal/AFd1oSDK;->AFLogger:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/appsflyer/internal/AFd1oSDK;->registerClient:Z

    iput-boolean p6, p0, Lcom/appsflyer/internal/AFd1oSDK;->e:Z

    return-void
.end method
