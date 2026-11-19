.class public Lcom/networkbench/agent/impl/crash/oom/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:I = 0x40000

.field private static d:Ljava/lang/String; = "OOMBigObjectPathCalc"

.field private static final e:I = 0xa


# instance fields
.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;


# direct methods
.method public constructor <init>(JLcom/networkbench/agent/impl/crash/oom/OOMJsonParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/a;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/a;->b:Ljava/util/Map;

    iput-wide p1, p0, Lcom/networkbench/agent/impl/crash/oom/a;->f:J

    iput-object p3, p0, Lcom/networkbench/agent/impl/crash/oom/a;->g:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/oom/a;->b()V

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;->size:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    iget-object v2, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;->className:Ljava/lang/String;

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const-string v4, "[]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;->className:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;->size:Ljava/lang/String;

    const-string v4, "]"

    invoke-static {v2, v4, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v5, " @ "

    invoke-static {v2, v5}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;->objectId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/crash/oom/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method private a(Lcom/networkbench/com/google/gson/JsonArray;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 2

    .line 139
    new-instance v0, Lcom/networkbench/agent/impl/crash/oom/a$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/crash/oom/a$1;-><init>(Lcom/networkbench/agent/impl/crash/oom/a;)V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Lcom/networkbench/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 141
    new-array v1, v0, [Lcom/networkbench/com/google/gson/JsonArray;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/networkbench/com/google/gson/JsonArray;

    .line 142
    new-instance v1, Lcom/networkbench/agent/impl/crash/oom/a$2;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/crash/oom/a$2;-><init>(Lcom/networkbench/agent/impl/crash/oom/a;)V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 143
    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 144
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 145
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 161
    sget v0, Lcom/networkbench/agent/impl/crash/oom/a;->a:I

    if-lt p1, v0, :cond_0

    .line 162
    sget-object p1, Lcom/networkbench/agent/impl/crash/oom/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "root paths add referenceId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/a;->c:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 164
    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/crash/oom/a;->d:Ljava/lang/String;

    const-string p1, "root paths not add referenceId, threshold is small than default"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 1

    .line 130
    const-string p0, "contextClassLoader"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_2

    const-string p0, "runtimeInternalObjects"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 131
    const-string p0, "java.lang.Object[]"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private b(Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;)Ljava/lang/String;
    .locals 3

    .line 236
    iget-object p0, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->declaredClass:Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    const-string v0, " @ "

    if-nez p0, :cond_0

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->declaredClass:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 238
    :cond_0
    iget-object p0, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->reference:Ljava/lang/String;

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    .line 239
    iget-object v1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->reference:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->retainedHeapByteSize:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] @ "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 241
    :cond_1
    invoke-static {v1, v0}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 242
    iget-object p1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 10

    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/a;->g:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;

    iget-object v0, v0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->gcPaths:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;

    iget-object v2, v1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->path:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    iget-object v2, v1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->path:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const-string v4, ""

    move-object v5, v4

    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;

    iget-object v8, p0, Lcom/networkbench/agent/impl/crash/oom/a;->b:Ljava/util/Map;

    iget-object v9, v6, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/networkbench/agent/impl/crash/oom/a;->b:Ljava/util/Map;

    iget-object v9, v6, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v5}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/networkbench/agent/impl/crash/oom/a;->b:Ljava/util/Map;

    iget-object v9, v6, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->childIds:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object v8, Lcom/networkbench/agent/impl/crash/oom/a;->d:Ljava/lang/String;

    const-string v9, "value is null, please check"

    invoke-static {v8, v9}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget v8, v6, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->retainedHeapByteSize:I

    if-le v4, v8, :cond_6

    if-nez v3, :cond_6

    sget-object v3, Lcom/networkbench/agent/impl/crash/oom/a;->d:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "found wrong retainedsize, add referenceId:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lcom/networkbench/agent/impl/crash/oom/a;->a(ILjava/lang/String;)V

    move v3, v7

    :cond_6
    iget v4, v6, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->retainedHeapByteSize:I

    iget-object v5, v6, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    goto :goto_1

    :cond_7
    if-nez v3, :cond_8

    invoke-direct {p0, v4, v5}, Lcom/networkbench/agent/impl/crash/oom/a;->a(ILjava/lang/String;)V

    :cond_8
    iget-object v2, v1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->selfTracePath:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;

    iget-object v4, p0, Lcom/networkbench/agent/impl/crash/oom/a;->b:Ljava/util/Map;

    iget-object v5, v3, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/networkbench/agent/impl/crash/oom/a;->b:Ljava/util/Map;

    iget-object v5, v3, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v4, v1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->path:Ljava/util/List;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    iget-object v4, v1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMGCPath;->path:Ljava/util/List;

    invoke-static {v7, v4}, Lfc;->e(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/networkbench/agent/impl/crash/oom/a;->b:Ljava/util/Map;

    iget-object v4, v4, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->childIds:Ljava/util/Set;

    iget-object v3, v3, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->referenceId:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    sget-object v3, Lcom/networkbench/agent/impl/crash/oom/a;->d:Ljava/lang/String;

    const-string v4, "parent is null, please check"

    invoke-static {v3, v4}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    :goto_4
    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 5

    .line 132
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/oom/a;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    invoke-virtual {p0, v2}, Lcom/networkbench/agent/impl/crash/oom/a;->a(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/oom/a;->g:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;

    iget-object v1, v1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->leakObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;

    .line 136
    iget-object v3, p0, Lcom/networkbench/agent/impl/crash/oom/a;->b:Ljava/util/Map;

    iget-object v4, v2, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;->objectId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/crash/oom/a;->a(Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_1

    .line 138
    :cond_2
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/a;->a(Lcom/networkbench/com/google/gson/JsonArray;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    .line 155
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 156
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/crash/oom/a;->b(Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 157
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->retainedObjectCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 158
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->shallowSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 159
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->retainedHeapByteSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 160
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget p1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->retainedHeapByteSize:I

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/oom/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/a;->a(Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/oom/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;

    iget-object p1, p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMSinglePath;->childIds:Ljava/util/Set;

    .line 148
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 149
    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0

    .line 150
    :cond_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 151
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    invoke-virtual {p0, v2}, Lcom/networkbench/agent/impl/crash/oom/a;->a(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/crash/oom/a;->a(Lcom/networkbench/com/google/gson/JsonArray;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    .line 154
    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4

    .line 165
    iget-wide v0, p0, Lcom/networkbench/agent/impl/crash/oom/a;->f:J

    int-to-long v2, p1

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    .line 166
    const-string p0, "0.00%"

    return-object p0

    :cond_0
    int-to-float p0, p1

    long-to-float p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    .line 167
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.2f%%"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
