.class public Lcom/networkbench/agent/impl/crash/oom/e;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "OOMMemoryInfo"


# instance fields
.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:J

.field private f:F

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/crash/oom/e;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/networkbench/agent/impl/crash/oom/e;->c:J

    const-string v3, ""

    iput-object v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->d:Ljava/lang/String;

    iput-wide v1, p0, Lcom/networkbench/agent/impl/crash/oom/e;->e:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/networkbench/agent/impl/crash/oom/e;->f:F

    iput v0, p0, Lcom/networkbench/agent/impl/crash/oom/e;->g:I

    iput v0, p0, Lcom/networkbench/agent/impl/crash/oom/e;->h:I

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/oom/e;->a()V

    return-void
.end method

.method private a()V
    .locals 6

    const-string v0, "javaHeap:"

    :try_start_0
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    iput v2, p0, Lcom/networkbench/agent/impl/crash/oom/e;->b:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/networkbench/agent/impl/crash/oom/e;->c:J

    const-string v2, "summary.graphics"

    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/networkbench/agent/impl/crash/oom/e;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/oom/e;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/networkbench/agent/impl/crash/oom/e;->e:J

    const-string v2, "OOMMemoryInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", maxMemory:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalPss:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/networkbench/agent/impl/crash/oom/e;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/networkbench/agent/impl/crash/oom/e;->c:J

    long-to-float v0, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/networkbench/agent/impl/crash/oom/e;->f:F

    iget v0, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iput v0, p0, Lcom/networkbench/agent/impl/crash/oom/e;->g:I

    iget v0, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iput v0, p0, Lcom/networkbench/agent/impl/crash/oom/e;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private b()J
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "vmsize"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vmSizeStr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OOMMemoryInfo"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    array-length v0, p0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-string v0, "long parse error"

    invoke-static {v1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->b:I

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "pb"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->b:I

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "pf"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    iget-wide v7, p0, Lcom/networkbench/agent/impl/crash/oom/e;->c:J

    goto :goto_2

    :cond_2
    move-wide v7, v5

    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "hb"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v4, :cond_3

    move-wide v7, v5

    goto :goto_3

    :cond_3
    iget-wide v7, p0, Lcom/networkbench/agent/impl/crash/oom/e;->c:J

    :goto_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "hf"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->d:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v4, v1

    :goto_4
    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    const-string v4, "gb"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/oom/e;->d:Ljava/lang/String;

    :goto_5
    invoke-direct {v3, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    const-string v1, "gf"

    invoke-virtual {v2, v1, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->e:J

    goto :goto_6

    :cond_6
    move-wide v3, v5

    :goto_6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "vmb"

    invoke-virtual {v2, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    iget-wide v5, p0, Lcom/networkbench/agent/impl/crash/oom/e;->e:J

    :goto_7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "vmf"

    invoke-virtual {v2, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->f:F

    goto :goto_8

    :cond_8
    move v3, v4

    :goto_8
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "hbur"

    invoke-virtual {v2, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v3, :cond_9

    goto :goto_9

    :cond_9
    iget v4, p0, Lcom/networkbench/agent/impl/crash/oom/e;->f:F

    :goto_9
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "hfur"

    invoke-virtual {v2, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->g:I

    goto :goto_a

    :cond_a
    move v3, v0

    :goto_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "dpb"

    invoke-virtual {v2, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v3, :cond_b

    move v3, v0

    goto :goto_b

    :cond_b
    iget v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->g:I

    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "dpf"

    invoke-virtual {v2, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->h:I

    goto :goto_c

    :cond_c
    move v3, v0

    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "npb"

    invoke-virtual {v2, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/crash/oom/e;->i:Z

    if-eqz v3, :cond_d

    goto :goto_d

    :cond_d
    iget v0, p0, Lcom/networkbench/agent/impl/crash/oom/e;->h:I

    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string p0, "npf"

    invoke-virtual {v2, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v2
.end method
