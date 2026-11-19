.class public Lcom/networkbench/agent/impl/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/harvest/NBSUploadDataInterface;


# static fields
.field private static final b:Lcom/networkbench/agent/impl/c/e;

.field private static c:Lcom/networkbench/agent/impl/b/m; = null

.field private static final d:Ljava/lang/String; = "NBSAnrStore"

.field private static final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/b/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/networkbench/agent/impl/crash/h;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/networkbench/agent/impl/b/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/crash/j;

    const-string v1, "NBSAnrStore"

    invoke-direct {v0, p1, v1}, Lcom/networkbench/agent/impl/crash/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/m;->e:Lcom/networkbench/agent/impl/crash/h;

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/b/m;->g:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/b/m;
    .locals 2

    .line 137
    sget-object v0, Lcom/networkbench/agent/impl/b/m;->c:Lcom/networkbench/agent/impl/b/m;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/networkbench/agent/impl/b/m;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/b/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/networkbench/agent/impl/b/m;->c:Lcom/networkbench/agent/impl/b/m;

    .line 139
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/b/m;->c:Lcom/networkbench/agent/impl/b/m;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 140
    new-instance p0, Lcom/networkbench/com/google/gson/JsonParser;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    .line 141
    const-string p1, "data"

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->get(I)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    .line 143
    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->get(I)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;Z)V
    .locals 0

    .line 133
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->a()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lcom/networkbench/agent/impl/b/k;)V
    .locals 1

    .line 334
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/m;->e:Lcom/networkbench/agent/impl/crash/h;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/b/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/networkbench/agent/impl/crash/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/networkbench/agent/impl/b/k;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0

    iget-object p0, p1, Lcom/networkbench/agent/impl/b/k;->f:Ljava/util/Map;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->j(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/networkbench/agent/impl/b/k;)V
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/b/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/b/j;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/j;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/networkbench/agent/impl/b/k;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/j;->b:Ljava/lang/String;

    iput-object p0, p1, Lcom/networkbench/agent/impl/b/k;->e:Ljava/lang/String;

    const/4 p0, 0x2

    iput p0, p1, Lcom/networkbench/agent/impl/b/k;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonParseException;
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance p2, Lcom/networkbench/com/google/gson/JsonParser;

    invoke-direct {p2}, Lcom/networkbench/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {p2, p1}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    new-instance p2, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {p2, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "data"

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable()Z

    move-result p1

    const-string p2, "app"

    const-string v0, "dev"

    const-string v1, "did"

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->asSocketJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->asSocketJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0

    :cond_1
    const-string p0, "anr message error"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/b/k;)V
    .locals 1

    .line 134
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isAnr_enabled()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 135
    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/b/m;->c:Lcom/networkbench/agent/impl/b/m;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/b/m;->a(Lcom/networkbench/agent/impl/b/k;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 136
    sget-object p1, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "report failed:"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/b/k;Z)V
    .locals 5

    .line 120
    invoke-static {}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->getInstance()Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/b/k;->c()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/b/m;->c(Lcom/networkbench/agent/impl/b/k;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->answerAnomalousCallBack(ILcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/b/m;->b(Lcom/networkbench/agent/impl/b/k;)V

    .line 122
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/m;->isEnableUpload()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 123
    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "report anr start"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/b/k;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/crash/e;->b(Ljava/lang/String;)V

    .line 125
    sget-boolean p0, Lcom/networkbench/agent/impl/plugin/f/h;->e:Z

    if-eqz p0, :cond_1

    .line 126
    new-instance p0, Lcom/networkbench/agent/impl/plugin/f/a;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/plugin/f/a;-><init>(Lcom/networkbench/agent/impl/b/k;Z)V

    .line 127
    invoke-static {p0}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/plugin/f/i;)V

    .line 128
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/f/i;->d()V

    return-void

    .line 129
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 130
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TingyunSDK_anr"

    invoke-static {p0, p2}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 131
    sget-object p2, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "error reportAnr"

    invoke-interface {p2, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :cond_2
    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 14

    const-string v0, "report all stored anr ,anrStore size is "

    const-string v1, "ANR_enabled() is "

    :try_start_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/b/m;->g:Landroid/content/Context;

    if-nez v2, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "user close anr report "

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isAnr_enabled()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isAnr_enabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",stop report ANR!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/networkbench/agent/impl/b/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/networkbench/agent/impl/b/m;->e:Lcom/networkbench/agent/impl/crash/h;

    invoke-interface {v1}, Lcom/networkbench/agent/impl/crash/h;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v3, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/networkbench/agent/impl/crash/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object p0, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Anr has reported, timestamp is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/b/m;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v6
    :try_end_1
    .catch Lcom/networkbench/com/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v7, Lcom/networkbench/agent/impl/b/a;

    invoke-virtual {v6}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/networkbench/agent/impl/b/m;->e:Lcom/networkbench/agent/impl/crash/h;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/networkbench/agent/impl/util/s;->a:Ljava/lang/String;

    sget-object v12, Lcom/networkbench/agent/impl/j/d;->e:Lcom/networkbench/agent/impl/j/d;

    const-string v13, ""

    invoke-direct/range {v7 .. v13}, Lcom/networkbench/agent/impl/b/a;-><init>(Ljava/lang/String;Lcom/networkbench/agent/impl/crash/h;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/j/d;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->a()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    new-instance v5, Lcom/networkbench/agent/impl/crash/a;

    iget-object v7, p0, Lcom/networkbench/agent/impl/b/m;->e:Lcom/networkbench/agent/impl/crash/h;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v3, Lcom/networkbench/agent/impl/j/d;->e:Lcom/networkbench/agent/impl/j/d;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/j/d;->a()I

    move-result v9

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/networkbench/agent/impl/crash/a;-><init>(Lcom/networkbench/com/google/gson/JsonObject;Lcom/networkbench/agent/impl/crash/h;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->a()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/crash/e;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThreadPool submit store Anr report Runnable ,Anr num is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    sget-object v3, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "invaild json str for anr"

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/m;->e:Lcom/networkbench/agent/impl/crash/h;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/networkbench/agent/impl/crash/h;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "Exception occur while send stored anr"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/b/k;Z)V
    .locals 11

    .line 322
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/b/m;->d(Lcom/networkbench/agent/impl/b/k;)V

    .line 323
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/b/k;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/b/m;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v3

    .line 326
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :try_start_0
    new-instance v4, Lcom/networkbench/agent/impl/b/a;

    invoke-virtual {v3}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/networkbench/agent/impl/b/m;->e:Lcom/networkbench/agent/impl/crash/h;

    .line 328
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/b/k;->d()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/networkbench/agent/impl/util/s;->a:Ljava/lang/String;

    sget-object v9, Lcom/networkbench/agent/impl/j/d;->e:Lcom/networkbench/agent/impl/j/d;

    const-string v10, ""

    invoke-direct/range {v4 .. v10}, Lcom/networkbench/agent/impl/b/a;-><init>(Ljava/lang/String;Lcom/networkbench/agent/impl/crash/h;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/j/d;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v4, p2}, Lcom/networkbench/agent/impl/b/m;->a(Ljava/lang/Runnable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 330
    sget-object p1, Lcom/networkbench/agent/impl/b/m;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "error reportAnr"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 331
    :cond_0
    new-instance v2, Lcom/networkbench/agent/impl/crash/a;

    iget-object v4, p0, Lcom/networkbench/agent/impl/b/m;->e:Lcom/networkbench/agent/impl/crash/h;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/b/k;->d()Ljava/lang/String;

    move-result-object v5

    sget-object p1, Lcom/networkbench/agent/impl/j/d;->e:Lcom/networkbench/agent/impl/j/d;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/j/d;->a()I

    move-result v6

    .line 332
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/networkbench/agent/impl/crash/a;-><init>(Lcom/networkbench/com/google/gson/JsonObject;Lcom/networkbench/agent/impl/crash/h;Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    invoke-direct {p0, v2, p2}, Lcom/networkbench/agent/impl/b/m;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public isEnableUpload()Z
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aB()Z

    move-result p0

    return p0
.end method
