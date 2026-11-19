.class public Lcom/networkbench/agent/impl/data/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x1f40

.field public static final b:Ljava/lang/String; = "pageLoading"

.field private static final c:Ljava/lang/String; = "OverLapView"

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/data/d/j;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/ConcurrentLinkedQueue;)Lcom/networkbench/agent/impl/data/d/h;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ">;)",
            "Lcom/networkbench/agent/impl/data/d/h;"
        }
    .end annotation

    .line 178
    invoke-static/range {p0 .. p0}, Lcom/networkbench/agent/impl/data/d/j;->c(Ljava/util/concurrent/ConcurrentLinkedQueue;)Lcom/networkbench/agent/impl/data/d/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {v0}, Lcom/networkbench/agent/impl/data/d/j;->b(Lcom/networkbench/agent/impl/data/d/h;)V

    .line 180
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->l()J

    move-result-wide v2

    .line 181
    invoke-static/range {p0 .. p0}, Lcom/networkbench/agent/impl/data/d/j;->e(Ljava/util/concurrent/ConcurrentLinkedQueue;)J

    move-result-wide v6

    .line 182
    invoke-static/range {p0 .. p0}, Lcom/networkbench/agent/impl/data/d/j;->f(Ljava/util/concurrent/ConcurrentLinkedQueue;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    move-wide v4, v6

    .line 183
    :cond_0
    new-instance v8, Lcom/networkbench/agent/impl/data/d/h;

    sub-long v10, v6, v2

    sub-long v12, v4, v2

    .line 184
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->g()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v14

    .line 185
    invoke-static/range {p0 .. p0}, Lcom/networkbench/agent/impl/data/d/j;->d(Ljava/util/concurrent/ConcurrentLinkedQueue;)Ljava/util/List;

    move-result-object v1

    invoke-static/range {v1 .. v7}, Lcom/networkbench/agent/impl/data/d/j;->a(Ljava/util/List;JJJ)Lcom/networkbench/agent/impl/data/type/p;

    move-result-object v15

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->d()Lcom/networkbench/agent/impl/k/b;

    move-result-object v16

    const/4 v9, 0x3

    invoke-direct/range {v8 .. v16}, Lcom/networkbench/agent/impl/data/d/h;-><init>(IJJLcom/networkbench/agent/impl/data/d/c;Lcom/networkbench/agent/impl/data/type/p;Lcom/networkbench/agent/impl/k/b;)V

    return-object v8

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(JJJ)Lcom/networkbench/agent/impl/data/type/p;
    .locals 0

    .line 200
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/data/d/j;->a(J)Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object p0

    .line 201
    new-instance p1, Lcom/networkbench/agent/impl/data/type/p;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/data/type/p;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V

    .line 202
    invoke-virtual {p1, p4, p5}, Lcom/networkbench/agent/impl/asyncaction/s;->c(J)V

    .line 203
    invoke-virtual {p1, p2, p3}, Lcom/networkbench/agent/impl/data/type/p;->e(J)V

    return-object p1
.end method

.method private static a(Ljava/util/List;JJJ)Lcom/networkbench/agent/impl/data/type/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/data/type/p;",
            ">;JJJ)",
            "Lcom/networkbench/agent/impl/data/type/p;"
        }
    .end annotation

    .line 186
    invoke-static/range {p1 .. p6}, Lcom/networkbench/agent/impl/data/d/j;->a(JJJ)Lcom/networkbench/agent/impl/data/type/p;

    move-result-object p1

    .line 187
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/networkbench/agent/impl/data/type/p;

    .line 188
    invoke-static {p2, p1}, Lcom/networkbench/agent/impl/data/d/j;->a(Lcom/networkbench/agent/impl/data/type/p;Lcom/networkbench/agent/impl/data/type/p;)V

    .line 189
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/type/p;->x()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 190
    invoke-virtual {p1, p3}, Lcom/networkbench/agent/impl/data/type/p;->a(Z)V

    .line 191
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/type/p;->z()Lcom/networkbench/agent/impl/i/e;

    move-result-object p3

    sget-object p4, Lcom/networkbench/agent/impl/i/e;->b:Lcom/networkbench/agent/impl/i/e;

    if-eq p3, p4, :cond_0

    .line 192
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/type/p;->z()Lcom/networkbench/agent/impl/i/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/data/type/p;->a(Lcom/networkbench/agent/impl/i/e;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/p;->a()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/s;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/networkbench/agent/impl/data/d/j;->a(Ljava/util/Map;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    return-object p1
.end method

.method private static a(J)Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;
    .locals 1

    .line 194
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-direct {v0, p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;-><init>(J)V

    .line 195
    const-string p0, "pageLoading"

    iput-object p0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    .line 196
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->setUnitThreadWithUIThread()V

    const/4 p0, 0x0

    .line 197
    iput p0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->segmentType:I

    const/4 p0, 0x1

    .line 198
    iput p0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    const/4 p0, 0x2

    .line 199
    iput p0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->nodeType:I

    return-object v0
.end method

.method private static a(Lcom/networkbench/agent/impl/data/d/h;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ")",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 177
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a()V
    .locals 1

    .line 214
    sget-object v0, Lcom/networkbench/agent/impl/data/d/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/data/d/h;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/data/d/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Lcom/networkbench/agent/impl/data/d/j;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 166
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/d/h;

    .line 167
    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/d/h;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/networkbench/agent/impl/data/d/c;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->g()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/networkbench/agent/impl/data/d/c;-><init>(Lcom/networkbench/agent/impl/data/d/c;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/data/d/b;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/d/c;)V

    .line 168
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 169
    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/data/d/j;->d:Ljava/util/Map;

    invoke-static {p0}, Lcom/networkbench/agent/impl/data/d/j;->a(Lcom/networkbench/agent/impl/data/d/h;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/d/h;->g()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object p1

    .line 171
    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/data/d/c;->a(Lcom/networkbench/agent/impl/data/d/h;)V

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p1, Lcom/networkbench/agent/impl/data/d/c;->d:Z

    .line 173
    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/d/b;->a(Lcom/networkbench/agent/impl/data/d/c;)V

    .line 174
    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/d/h;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/b;->c()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/networkbench/agent/impl/data/d/b;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/d/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/networkbench/agent/impl/data/type/p;Lcom/networkbench/agent/impl/data/type/p;)V
    .locals 4

    .line 204
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/p;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v2, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 207
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v2, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    const-string v3, "pageLoading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 208
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v2, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object v3

    iget-object v3, v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    if-ne v2, v3, :cond_3

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/s;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object v3

    iget-object v3, v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    iput-object v3, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    .line 210
    :cond_3
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/p;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/p;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_4
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/s;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object v1

    iget-object v1, v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    iput-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    .line 213
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/s;->s()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->s()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    move-object v4, v3

    check-cast v4, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget v4, v4, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_8

    const/4 v2, 0x0

    move v3, v1

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-wide v4, v4, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-wide v6, v6, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-wide v4, v4, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-wide v6, v6, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    if-eqz v2, :cond_2

    iget-wide v4, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-wide v6, v6, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v4, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    iput-object v4, v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v3, v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    if-eqz v3, :cond_6

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    iput-object v3, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 175
    sget-object v0, Lcom/networkbench/agent/impl/data/d/j;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    const-string v0, "getFirstVCForVisual firstVC:"

    const-string v1, "11111 pageDataMap size:"

    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/data/d/j;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/data/d/h;->a:Lcom/networkbench/agent/impl/data/d/c;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/data/d/j;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/data/d/j;->d:Ljava/util/Map;

    sget-object v3, Lcom/networkbench/agent/impl/data/d/h;->a:Lcom/networkbench/agent/impl/data/d/c;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v1}, Lcom/networkbench/agent/impl/data/d/j;->c(Ljava/util/concurrent/ConcurrentLinkedQueue;)Lcom/networkbench/agent/impl/data/d/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/networkbench/agent/impl/data/d/j;->c(Lcom/networkbench/agent/impl/data/d/h;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error getFirstVCForVisual"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static b(Lcom/networkbench/agent/impl/data/d/h;)V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/d/h;->j()V

    return-void
.end method

.method private static b(Ljava/util/concurrent/ConcurrentLinkedQueue;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ">;)Z"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/d/h;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->m()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->m()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget v0, Lcom/networkbench/agent/impl/data/d/j;->a:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Ljava/util/concurrent/ConcurrentLinkedQueue;)Lcom/networkbench/agent/impl/data/d/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ">;)",
            "Lcom/networkbench/agent/impl/data/d/h;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 118
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/d/h;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 119
    :cond_1
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/h;->l()J

    move-result-wide v2

    .line 120
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->l()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static c(Lcom/networkbench/agent/impl/data/d/h;)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/d/h;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/networkbench/agent/impl/data/d/j;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v4}, Lcom/networkbench/agent/impl/data/d/j;->b(Ljava/util/concurrent/ConcurrentLinkedQueue;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/networkbench/agent/impl/data/d/j;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;)Lcom/networkbench/agent/impl/data/d/h;

    move-result-object v3

    const-string v4, "OverLapView"

    const-string v5, "overlap page is null"

    invoke-static {v4, v5}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/d/h;->o()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/d/h;->p()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/d/h;->r()V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/d/h;->q()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/networkbench/agent/impl/data/d/j;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static d(Ljava/util/concurrent/ConcurrentLinkedQueue;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/data/type/p;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/d/h;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/h;->e()Lcom/networkbench/agent/impl/data/type/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static e(Ljava/util/concurrent/ConcurrentLinkedQueue;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ">;)J"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/d/h;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->m()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->m()J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method private static f(Ljava/util/concurrent/ConcurrentLinkedQueue;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ">;)J"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/d/h;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->n()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->n()J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_0

    :cond_1
    return-wide v1
.end method
