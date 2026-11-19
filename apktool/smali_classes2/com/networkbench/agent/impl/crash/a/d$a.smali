.class public Lcom/networkbench/agent/impl/crash/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/crash/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/networkbench/com/google/gson/JsonArray;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/networkbench/com/google/gson/JsonArray;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->b:Ljava/lang/String;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->c:Lcom/networkbench/com/google/gson/JsonArray;

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->e:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->g:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->h:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->a:I

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->f:Lcom/networkbench/com/google/gson/JsonArray;

    return-void
.end method

.method private c()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v1, "metaData\u7684\u5927\u5c0f\u5927\u4e8e\u6700\u5927\u9650\u5236128K"

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "error"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/networkbench/agent/impl/crash/a/d$a;
    .locals 0

    .line 71
    iput p1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->i:I

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/data/AnomalousData;)Lcom/networkbench/agent/impl/crash/a/d$a;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/networkbench/agent/impl/data/AnomalousData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getThrowable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->g:J

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getImageUuid()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->f:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getAllStacktrace()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(Lcom/networkbench/com/google/gson/JsonArray;)Lcom/networkbench/agent/impl/crash/a/d$a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(Ljava/util/Map;)Lcom/networkbench/agent/impl/crash/a/d$a;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/a/d$a;->b(I)Lcom/networkbench/agent/impl/crash/a/d$a;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/a/d$a;->b()Lcom/networkbench/agent/impl/crash/a/d$a;

    return-object p0
.end method

.method public a(Lcom/networkbench/com/google/gson/JsonArray;)Lcom/networkbench/agent/impl/crash/a/d$a;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->c:Lcom/networkbench/com/google/gson/JsonArray;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/networkbench/agent/impl/crash/a/d$a;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/networkbench/agent/impl/crash/a/d;->b:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->b:Ljava/lang/String;

    return-object p0

    .line 79
    :cond_1
    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/crash/a/d$a;
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    :try_start_0
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 73
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 74
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-direct {v1, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 75
    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p2, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 76
    iget-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->c:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {p1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/Throwable;)Lcom/networkbench/agent/impl/crash/a/d$a;
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    :try_start_0
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 85
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 86
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->h:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 87
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    sget v2, Lcom/networkbench/agent/impl/crash/a/d;->c:I

    invoke-static {v2, p1}, Lcom/networkbench/agent/impl/util/ak;->a(ILjava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 88
    iget-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->c:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {p1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/networkbench/agent/impl/crash/a/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/networkbench/agent/impl/crash/a/d$a;"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/crash/a/d;->a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->d:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sget v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->MAX_METADATA_LENGTH:I

    if-le p1, v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/a/d$a;->c()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->d:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a()Lcom/networkbench/agent/impl/crash/a/d;
    .locals 11

    .line 83
    new-instance v0, Lcom/networkbench/agent/impl/crash/a/d;

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->c:Lcom/networkbench/com/google/gson/JsonArray;

    iget-object v3, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->d:Ljava/lang/String;

    iget v4, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->e:I

    iget v5, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->i:I

    iget v6, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->a:I

    iget-object v7, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->j:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/util/r;->e()Ljava/util/Map;

    move-result-object v8

    iget-object v9, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->f:Lcom/networkbench/com/google/gson/JsonArray;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/networkbench/agent/impl/crash/a/d;-><init>(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;IIILjava/lang/String;Ljava/util/Map;Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/agent/impl/crash/a/d$1;)V

    return-object v0
.end method

.method public b()Lcom/networkbench/agent/impl/crash/a/d$a;
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/util/r;->d(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->j:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/crash/g;->a()Lcom/networkbench/agent/impl/crash/g;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;->customError:Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/agent/impl/crash/NBSErrorEventType;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(I)Lcom/networkbench/agent/impl/crash/a/d$a;
    .locals 0

    .line 26
    iput p1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->e:I

    return-object p0
.end method

.method public b(Lcom/networkbench/com/google/gson/JsonArray;)Lcom/networkbench/agent/impl/crash/a/d$a;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/a/d$a;->f:Lcom/networkbench/com/google/gson/JsonArray;

    return-object p0
.end method
