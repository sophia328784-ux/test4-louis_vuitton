.class public Lcom/networkbench/agent/impl/plugin/c/d;
.super Lcom/networkbench/agent/impl/plugin/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/plugin/c/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LogTrackPlugin"


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->OBJECT:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/plugin/h;-><init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/networkbench/agent/impl/plugin/c/d;->r:Z

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/c/d;->b:Lorg/json/JSONObject;

    const-string p2, ""

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/c/d;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/f/i;->e()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/c/d;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(I)Z
    .locals 3

    .line 91
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 92
    const-string p0, "LogTrackPlugin"

    const-string p1, "logTrackPlugin is empty, please check"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 93
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->b(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    if-eqz p0, :cond_2

    return v2

    :cond_2
    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_4

    :cond_3
    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/c/d;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->r:Z

    return p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/plugin/c/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->d:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/plugin/c/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->e:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/networkbench/agent/impl/plugin/c/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/networkbench/agent/impl/plugin/c/d;)Lcom/networkbench/agent/impl/plugin/f/i;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    return-object p0
.end method

.method public static synthetic h()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 94
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->a()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/plugin/c/d$a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/plugin/c/d$a;-><init>(Lcom/networkbench/agent/impl/plugin/c/d;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 95
    const-string v0, "LogTrackPlugin"

    const-string v1, "error execute runnable"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "LogTrackPlugin"

    const-string v0, "logTrackPlugin params:"

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/c/d;->d:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/networkbench/agent/impl/plugin/c/d;->b:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", taskId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v0, v0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->b:Lorg/json/JSONObject;

    const-string v1, "startTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->d:J

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->b:Lorg/json/JSONObject;

    const-string v1, "endTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->e:J

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->b:Lorg/json/JSONObject;

    const-string v1, "uploadType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/plugin/c/d;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/d;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/c/d;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    const-string p0, "parseEnvironment"

    invoke-static {p1, p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 0

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    return-object p0
.end method

.method public b()Z
    .locals 0

    .line 3
    const/4 p0, 0x0

    return p0
.end method
