.class public Lcom/networkbench/agent/impl/crash/c;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "NBSCrash"

.field private static c:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private d:I

.field private e:Ljava/lang/Throwable;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;

.field private final i:Landroid/content/Context;

.field private j:Lcom/networkbench/agent/impl/k/b;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/networkbench/com/google/gson/JsonArray;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/networkbench/com/google/gson/JsonArray;

.field private p:Lcom/networkbench/com/google/gson/JsonArray;

.field private q:Ljava/util/Map;

.field private r:I

.field private s:Lcom/networkbench/agent/impl/crash/oom/b;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/crash/c;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v0, ""

    sput-object v0, Lcom/networkbench/agent/impl/crash/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    .line 128
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->i:Landroid/content/Context;

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->l:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->m:Lcom/networkbench/com/google/gson/JsonArray;

    .line 131
    :try_start_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/c;->t:Ljava/lang/String;

    .line 132
    new-instance p1, Lcom/networkbench/agent/impl/crash/oom/b;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/crash/oom/b;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/c;->s:Lcom/networkbench/agent/impl/crash/oom/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 133
    const-string p1, "NBSCrash"

    const-string v0, "nbscrash init from content failed"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;JLcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "J",
            "Lcom/networkbench/com/google/gson/JsonArray;",
            "Lcom/networkbench/com/google/gson/JsonArray;",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->i:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->m:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->k:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->p()Lcom/networkbench/agent/impl/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->j:Lcom/networkbench/agent/impl/k/b;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/crash/c;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->h:Ljava/lang/String;

    iput-object p7, p0, Lcom/networkbench/agent/impl/crash/c;->f:Ljava/lang/String;

    iput-wide p2, p0, Lcom/networkbench/agent/impl/crash/c;->g:J

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/c;->e:Ljava/lang/Throwable;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getStackDepth()I

    move-result p2

    iput p2, p0, Lcom/networkbench/agent/impl/crash/c;->d:I

    if-nez p2, :cond_0

    const/16 p2, 0x64

    iput p2, p0, Lcom/networkbench/agent/impl/crash/c;->d:I

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/networkbench/agent/impl/crash/c;->n:Ljava/util/HashMap;

    sget-object p2, Lcom/networkbench/agent/impl/crash/c;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p7, "stackDepth is "

    invoke-direct {p3, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p7, p0, Lcom/networkbench/agent/impl/crash/c;->d:I

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/networkbench/agent/impl/crash/c;->o:Lcom/networkbench/com/google/gson/JsonArray;

    iput-object p5, p0, Lcom/networkbench/agent/impl/crash/c;->p:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/util/r;->e()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/crash/c;->q:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/crash/c;->b(Ljava/lang/Throwable;)V

    new-instance p2, Lcom/networkbench/agent/impl/crash/oom/b;

    sget-object p3, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {p3}, Lcom/networkbench/agent/impl/data/type/f;->d()Z

    move-result p3

    invoke-direct {p2, p3}, Lcom/networkbench/agent/impl/crash/oom/b;-><init>(Z)V

    iput-object p2, p0, Lcom/networkbench/agent/impl/crash/c;->s:Lcom/networkbench/agent/impl/crash/oom/b;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/crash/c;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0, p6}, Lcom/networkbench/agent/impl/crash/c;->b(Ljava/util/Map;)V

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 1

    .line 154
    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 155
    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 156
    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p1, p3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 157
    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    invoke-direct {p1, p4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    .line 158
    new-instance v0, Lcom/networkbench/com/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    .line 159
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    const/4 v1, 0x0

    .line 160
    :goto_0
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 162
    invoke-virtual {p1, v1}, Lcom/networkbench/com/google/gson/JsonArray;->get(I)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    new-instance v1, Lcom/networkbench/com/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->get(I)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p1

    .line 164
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/c;->s:Lcom/networkbench/agent/impl/crash/oom/b;

    const-string v2, "memory"

    invoke-virtual {p1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/oom/b;->a(Lcom/networkbench/com/google/gson/JsonObject;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 132
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_0

    .line 133
    :try_start_0
    new-instance p1, Lcom/networkbench/agent/impl/crash/oom/d;

    new-instance v0, Lcom/networkbench/agent/impl/util/c;

    .line 134
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/networkbench/agent/impl/crash/oom/d;-><init>(Lcom/networkbench/agent/impl/util/c;)V

    .line 135
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/oom/d;->a()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/util/a;->a:Lcom/networkbench/agent/impl/util/a;

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/crash/oom/g;->a(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/util/a;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/c;->s:Lcom/networkbench/agent/impl/crash/oom/b;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/h;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/b;->a(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 140
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".json"

    const-string v1, ".content"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 143
    const-string p1, "NBSCrash"

    const-string v0, "error configOOMHprofReport"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;>;",
            "Lcom/networkbench/com/google/gson/JsonArray;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 148
    array-length v2, v1

    if-lez v2, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 150
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 151
    iget v4, p0, Lcom/networkbench/agent/impl/crash/c;->d:I

    if-gt v3, v4, :cond_2

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\tat "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/networkbench/agent/impl/crash/c;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 134
    iput p1, p0, Lcom/networkbench/agent/impl/crash/c;->r:I

    return-void

    .line 135
    :cond_0
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 136
    iput p1, p0, Lcom/networkbench/agent/impl/crash/c;->r:I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 137
    iput p1, p0, Lcom/networkbench/agent/impl/crash/c;->r:I

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 2
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

    .line 138
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->l:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->i:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/ak;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->l:Ljava/lang/String;

    .line 140
    :cond_0
    iget v0, p0, Lcom/networkbench/agent/impl/crash/c;->r:I

    if-ne v0, v1, :cond_1

    .line 141
    new-instance p1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/c;->m:Lcom/networkbench/com/google/gson/JsonArray;

    return-void

    .line 142
    :cond_1
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/c;->a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/c;->m:Lcom/networkbench/com/google/gson/JsonArray;

    return-void
.end method

.method private c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/crash/c;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "className:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", throwable message is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    iget p0, p0, Lcom/networkbench/agent/impl/crash/c;->d:I

    if-ge p0, v2, :cond_1

    move v2, p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-ge p0, v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tat "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
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

    iget-wide v0, p0, Lcom/networkbench/agent/impl/crash/c;->g:J

    :cond_0
    return-wide v0
.end method

.method private m()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->o()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/k/b;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/c;->j:Lcom/networkbench/agent/impl/k/b;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Lcom/networkbench/com/google/gson/JsonArray;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/c;->e:Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/networkbench/agent/impl/crash/c;->e:Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.facebook.react.JavaScript"

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/networkbench/agent/impl/crash/c;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/networkbench/agent/impl/crash/c;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "user crash thread is UIThread"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/networkbench/agent/impl/crash/c;->d:I

    invoke-virtual {p0, v4}, Lcom/networkbench/agent/impl/crash/c;->a(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/networkbench/agent/impl/crash/c;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/networkbench/agent/impl/crash/c;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "user crash thread is not UIThread"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/networkbench/agent/impl/crash/c;->d:I

    invoke-virtual {p0, v4}, Lcom/networkbench/agent/impl/crash/c;->a(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/networkbench/agent/impl/crash/c;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->g(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/crash/c;->a(Ljava/util/List;Lcom/networkbench/com/google/gson/JsonArray;)V

    return-object v0
.end method

.method public a(I)Ljava/lang/StringBuilder;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/c;->b(I)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/crash/oom/b;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/c;->s:Lcom/networkbench/agent/impl/crash/oom/b;

    return-void
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/c;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->t:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/crash/c;->a(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    iget-wide v4, p0, Lcom/networkbench/agent/impl/crash/c;->g:J

    invoke-virtual {v3, v4, v5}, Lcom/networkbench/agent/impl/util/r;->f(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/c;->l()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/networkbench/agent/impl/util/r;->f(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    new-instance v3, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/crash/c;->h:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_1

    move-object v3, v4

    :cond_1
    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/c;->m:Lcom/networkbench/com/google/gson/JsonArray;

    if-nez v2, :cond_2

    new-instance v2, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    :cond_2
    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/c;->o:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/c;->p:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/c;->l:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/c;->i:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/networkbench/agent/impl/util/ak;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/networkbench/agent/impl/crash/c;->l:Ljava/lang/String;

    :cond_3
    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/crash/c;->l:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v3, v4

    :cond_4
    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v2, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    sget-boolean v2, Lcom/networkbench/agent/impl/util/r;->q:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "logcats :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/networkbench/agent/impl/crash/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v3, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v2, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    sget-object v2, Lcom/networkbench/agent/impl/crash/c;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "logcats collect  is  not turned on !"

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/c;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isUI_enabled()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    sget-object v2, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/type/f;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_1

    :cond_6
    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v2, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_1

    :cond_7
    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v2, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_1
    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/c;->k:Ljava/lang/String;

    if-nez v2, :cond_8

    move-object v2, v4

    :cond_8
    invoke-direct {v0, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->c(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {v1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_2
    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/c;->f:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    move-object v4, v2

    :goto_3
    invoke-direct {v0, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/agent/impl/data/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/crash/c;->j:Lcom/networkbench/agent/impl/k/b;

    invoke-direct {v0, v2, v3}, Lcom/networkbench/agent/impl/data/a;-><init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v2, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/crash/c;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/c;->s:Lcom/networkbench/agent/impl/crash/oom/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/c;->k:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)Ljava/lang/StringBuilder;
    .locals 8

    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/c;->e:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/c;->e:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/c;->e:Ljava/lang/Throwable;

    :cond_1
    const/4 p0, 0x0

    move v2, p0

    :goto_0
    if-eqz v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caused by: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    move v5, p0

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    if-lt v2, p1, :cond_2

    const-string v4, "\t... "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " more"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/networkbench/agent/impl/crash/c;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sDepth is"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\tat "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/c;->m:Lcom/networkbench/com/google/gson/JsonArray;

    return-object p0
.end method

.method public e()Ljava/util/HashMap;
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

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/c;->n:Ljava/util/HashMap;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/crash/c;->r:I

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/c;->t:Ljava/lang/String;

    return-object p0
.end method

.method public h()Z
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/crash/c;->g:J

    const-string p0, ""

    invoke-static {v1, v2, p0, v0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
