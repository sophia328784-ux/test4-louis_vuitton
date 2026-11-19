.class public Lcom/networkbench/agent/impl/b/k;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "NBSStackService"

.field private static final h:I = 0x32

.field private static n:Lcom/networkbench/agent/impl/c/e;

.field private static s:Ljava/lang/String;

.field private static final u:[Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:J

.field private k:I

.field private l:Ljava/security/SecureRandom;

.field private m:Lcom/networkbench/com/google/gson/JsonObject;

.field private o:Lcom/networkbench/agent/impl/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/agent/impl/b/l<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private t:Lcom/networkbench/agent/impl/k/b;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/k;->n:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "android.os.MessageQueue.nativePollOnce"

    sput-object v0, Lcom/networkbench/agent/impl/b/k;->s:Ljava/lang/String;

    const-string v0, "postFrameCallback"

    const-string v1, "uncaughtException"

    const-string v2, "Permission"

    const-string v3, "permission"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/k;->u:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/networkbench/agent/impl/b/k;->b:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/networkbench/agent/impl/b/k;->k:I

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/b/k;->l:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/networkbench/agent/impl/b/k;->m:Lcom/networkbench/com/google/gson/JsonObject;

    const-string v1, ""

    iput-object v1, p0, Lcom/networkbench/agent/impl/b/k;->r:Ljava/lang/String;

    const-string v2, "ANR"

    iput-object v2, p0, Lcom/networkbench/agent/impl/b/k;->d:Ljava/lang/String;

    const-string v2, "Dear developer,a slowly operation is blocking the main thread."

    iput-object v2, p0, Lcom/networkbench/agent/impl/b/k;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/b/k;->v:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->p()Lcom/networkbench/agent/impl/k/b;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/b/k;->t:Lcom/networkbench/agent/impl/k/b;

    iput-wide p1, p0, Lcom/networkbench/agent/impl/b/k;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/b/k;->j:J

    new-instance p1, Lcom/networkbench/agent/impl/b/l;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/b/l;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k;->o:Lcom/networkbench/agent/impl/b/l;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k;->p:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k;->q:Ljava/util/HashMap;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getStackDepth()I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/b/k;->k:I

    if-nez p1, :cond_0

    iput v0, p0, Lcom/networkbench/agent/impl/b/k;->k:I

    :cond_0
    return-void
.end method

.method private a(I[Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;
    .locals 3

    .line 182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 183
    array-length v0, p2

    if-eqz v0, :cond_4

    array-length v0, p2

    if-lt p3, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    array-length v1, p2

    if-ge p3, v1, :cond_3

    if-lt v0, p1, :cond_1

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 186
    const-string p1, "\t..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " more"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 187
    aget-object v1, p2, p3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 188
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    .line 189
    :cond_4
    :goto_2
    sget-object p1, Lcom/networkbench/agent/impl/b/k;->n:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "anr getShortStackTrace failed"

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/b/k;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "sun.misc.Unsafe.park"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return p0
.end method

.method private c(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 104
    new-instance p0, Lcom/networkbench/agent/impl/util/c/f;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/c/f;-><init>(I)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/c/f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 102
    sget-object v0, Lcom/networkbench/agent/impl/b/k;->u:[Ljava/lang/String;

    array-length v1, v0

    move v2, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 103
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method private k()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 7

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/k;->o:Lcom/networkbench/agent/impl/b/l;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v4}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v4, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSBlockInfo  stackTraces size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/k;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NBSStackService"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private l()J
    .locals 4

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->R()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v0, p0, Lcom/networkbench/agent/impl/b/k;->i:J

    :cond_0
    return-wide v0
.end method

.method private m()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 4

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pu"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "ppu"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/crash/b;->a(Landroid/content/Context;Lcom/networkbench/com/google/gson/JsonObject;)V

    const-string v0, "sp_free"

    invoke-static {}, Lcom/networkbench/agent/impl/crash/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/crash/e;->a()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/b/k;->n:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cust is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const-string v1, "cust"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->c()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    const-string v1, "tr"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;I)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/b/a/b;",
            ">;I)",
            "Lcom/networkbench/com/google/gson/JsonArray;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    if-eqz p1, :cond_4

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/b/a/b;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/b/a/b;->a()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/networkbench/agent/impl/b/k;->a([Ljava/lang/StackTraceElement;I)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "stack"

    const-string v7, "count"

    if-ne v5, v0, :cond_1

    :try_start_1
    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p1, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v7, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p0, v6, v4}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v2, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v2

    :cond_1
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/b/a/b;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/b/a/b;->a()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/networkbench/agent/impl/b/k;->a([Ljava/lang/StackTraceElement;I)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance p2, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p2, v7, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {p2, v6, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v2, p2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    :cond_4
    :goto_3
    return-object v2
.end method

.method public a([Ljava/lang/StackTraceElement;I)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 5

    .line 192
    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    if-eqz p1, :cond_2

    .line 193
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    add-int/2addr v2, v1

    .line 195
    aget-object v3, p1, v0

    .line 196
    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    if-le v2, p2, :cond_1

    .line 197
    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string p2, "... more"

    invoke-direct {p1, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public a()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/k;->q:Ljava/util/HashMap;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k;->r:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/b/a/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k;->c:Ljava/util/List;

    .line 199
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/k;->j()V

    .line 201
    invoke-static {}, Lcom/networkbench/agent/impl/crash/i;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k;->a:Ljava/lang/String;

    .line 202
    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/k;->m()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k;->m:Lcom/networkbench/com/google/gson/JsonObject;

    .line 203
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object p1

    .line 204
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/b/k;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/b/k;->a(Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k;->f:Ljava/util/Map;

    return-void

    .line 206
    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/util/d;

    const-string p1, "stack trace is empty, skip collection"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k;->w:Ljava/util/Map;

    return-void
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 7

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    iget-wide v3, p0, Lcom/networkbench/agent/impl/b/k;->i:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/networkbench/agent/impl/util/r;->f(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/k;->l()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/networkbench/agent/impl/util/r;->f(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/k;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/k;->p:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/k;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/k;->k()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/k;->p:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/k;->r:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/k;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->g(Landroid/content/Context;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/v;->a()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/k;->m:Lcom/networkbench/com/google/gson/JsonObject;

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/k;->q:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->c(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_1
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/k;->v:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/agent/impl/data/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/k;->t:Lcom/networkbench/agent/impl/k/b;

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/data/a;-><init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a;->a()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v2

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v4, p0, Lcom/networkbench/agent/impl/b/k;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "anr_type"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a;->a()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v2

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "anr_duration"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a;->a()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v2

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "anr_stack_interval"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->b()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/k;->c:Ljava/util/List;

    iget v3, p0, Lcom/networkbench/agent/impl/b/k;->k:I

    invoke-virtual {p0, v2, v3}, Lcom/networkbench/agent/impl/b/k;->a(Ljava/util/List;I)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_4
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/k;->r:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k;->f:Ljava/util/Map;

    return-void
.end method

.method public c()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 5

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/k;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/k;->c:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lfc;->e(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/b/a/b;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/networkbench/agent/impl/b/k;->k:I

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/a/b;->a()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/networkbench/agent/impl/b/k;->a(I[Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v2, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/b/k;->i:J

    const-string p0, ""

    invoke-static {v1, v2, p0, v0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/k;->m:Lcom/networkbench/com/google/gson/JsonObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "req"

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/k;->i()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void
.end method

.method public f()Z
    .locals 5

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/k;->o:Lcom/networkbench/agent/impl/b/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/k;->o:Lcom/networkbench/agent/impl/b/l;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/b/k;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v1

    :cond_4
    const-string v4, "com.networkbench.agent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/k;->o:Lcom/networkbench/agent/impl/b/l;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ne v3, v2, :cond_2

    return v1

    :cond_5
    return v2
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/k;->o:Lcom/networkbench/agent/impl/b/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/b/a/b;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/a/b;->a()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/b/k;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/networkbench/agent/impl/b/k;->k:I

    invoke-direct {p0, v2, v1, v3}, Lcom/networkbench/agent/impl/b/k;->a(I[Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/k;->o:Lcom/networkbench/agent/impl/b/l;

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/b/l;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public i()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 10

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getAnrAction()I

    move-result v2

    const-string v3, "anrAction:"

    const-string v4, ", actions:"

    invoke-static {v2, v3, v4}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->getActionDatas()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NBSStackService"

    invoke-static {v4, v3}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->getActionDatas()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/networkbench/agent/impl/b/k$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/b/k$1;-><init>(Lcom/networkbench/agent/impl/b/k;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTimestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v6, p0, Lcom/networkbench/agent/impl/b/k;->i:J

    cmp-long v6, v3, v6

    if-ltz v6, :cond_1

    iget-wide v6, p0, Lcom/networkbench/agent/impl/b/k;->j:J

    cmp-long v3, v3, v6

    if-gtz v3, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonArray;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_2
    new-instance v4, Lcom/networkbench/agent/impl/b/i;

    iget-wide v6, p0, Lcom/networkbench/agent/impl/b/k;->i:J

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTimestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/networkbench/agent/impl/b/i;-><init>(Lcom/networkbench/agent/impl/harvest/ActionData;JJ)V

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/b/i;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public j()V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/util/r;->d(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/k;->v:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/crash/g;->a()Lcom/networkbench/agent/impl/crash/g;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;->anr:Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/k;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/agent/impl/crash/NBSErrorEventType;Ljava/lang/String;)V

    return-void
.end method
