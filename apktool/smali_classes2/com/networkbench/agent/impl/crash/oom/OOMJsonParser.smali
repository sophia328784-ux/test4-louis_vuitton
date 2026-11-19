.class public Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$RunningInfo;,
        Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;,
        Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;,
        Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;,
        Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMClassInfo;
    }
.end annotation


# static fields
.field private static final GC_ROOT_TIP:Ljava/lang/String; = "GC Root: "

.field private static final TAG:Ljava/lang/String; = "OOMJsonParser"


# instance fields
.field public classInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field public gcPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;",
            ">;"
        }
    .end annotation
.end field

.field public leakObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;",
            ">;"
        }
    .end annotation
.end field

.field public runningInfo:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$RunningInfo;

.field private searchReference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->searchReference:Ljava/util/Map;

    return-void
.end method

.method private constructReference(Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;)[Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->selfTracePath:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n\t"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;

    iget-object v4, v2, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->reference:Ljava/lang/String;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, v2, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->reference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->path:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    iget-object p1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->path:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, ""

    move-object v2, v1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;

    iget-object v5, v4, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->reference:Ljava/lang/String;

    invoke-static {v5}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v4, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->reference:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->declaredClass:Ljava/lang/String;

    iget-object v6, v4, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->reference:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->isRealLeakClassName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, v4, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->declaredClass:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    return-object p1
.end method

.method private isRealLeakClassName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_3

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "java.lang.Object[]"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "java.util.ArrayList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "java.util.ArrayList.elementData"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public getBigObjectReference()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 4

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    :try_start_0
    new-instance v1, Lcom/networkbench/agent/impl/crash/oom/a;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->runningInfo:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$RunningInfo;

    iget-object v2, v2, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$RunningInfo;->heapMetaData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p0}, Lcom/networkbench/agent/impl/crash/oom/a;-><init>(JLcom/networkbench/agent/impl/crash/oom/OOMJsonParser;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/crash/oom/a;->a()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v1, "OOMJsonParser"

    const-string v2, "error getBigDataReference"

    invoke-static {v1, v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getLeakReferenceChain()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 9

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->gcPaths:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->gcPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;

    iget-object v3, v2, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->path:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->constructReference(Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "leakClass"

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-direct {v6, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v5, "gcRoot"

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GC Root: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->gcRoot:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "ref"

    new-instance v5, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-direct {v5, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v5}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    return-object v0

    :goto_1
    const-string v1, "OOMJsonParser"

    const-string v2, "error getReferenceChain"

    invoke-static {v1, v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public setSearchReference()V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->gcPaths:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->gcPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->searchReference:Ljava/util/Map;

    iget-object v3, v1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->leakObjectId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
