.class public Lcom/networkbench/agent/impl/crash/b/b;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private b:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/networkbench/agent/impl/crash/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/crash/b/b;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aa()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->e:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/util/r;->F:I

    iput v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->f:I

    iget v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->e:I

    if-nez v0, :cond_1

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->e:I

    :cond_1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    iget v1, p0, Lcom/networkbench/agent/impl/crash/b/b;->e:I

    iget v2, p0, Lcom/networkbench/agent/impl/crash/b/b;->f:I

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "<_TY_C_API>"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/networkbench/agent/impl/crash/b/a;
    .locals 1

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 180
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/crash/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Lcom/networkbench/agent/impl/crash/b/a;)V
    .locals 4

    const-string v0, "The length of Trails is greater than "

    const-string v1, "The length of BreadCrumbs is greater than "

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/b/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/crash/b/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    iget v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->c:I

    iget v3, p0, Lcom/networkbench/agent/impl/crash/b/b;->f:I

    if-ge v0, v3, :cond_1

    .line 166
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 167
    iget p1, p0, Lcom/networkbench/agent/impl/crash/b/b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/agent/impl/crash/b/b;->c:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 168
    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/crash/b/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/crash/b/b;->c:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",remove the earliest one!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v2}, Lcom/networkbench/agent/impl/crash/b/b;->a(Ljava/lang/String;)Z

    .line 170
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_2
    iget v1, p0, Lcom/networkbench/agent/impl/crash/b/b;->d:I

    iget v3, p0, Lcom/networkbench/agent/impl/crash/b/b;->e:I

    if-ge v1, v3, :cond_3

    .line 172
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 173
    iget p1, p0, Lcom/networkbench/agent/impl/crash/b/b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/agent/impl/crash/b/b;->d:I

    goto :goto_0

    .line 174
    :cond_3
    sget-object v1, Lcom/networkbench/agent/impl/crash/b/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",remove the earliest one!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, v2}, Lcom/networkbench/agent/impl/crash/b/b;->a(Ljava/lang/String;)Z

    .line 176
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 178
    :cond_4
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/crash/b/b;->c(Ljava/lang/String;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    move p1, v1

    :goto_0
    if-ge p1, v2, :cond_4

    iget-object v4, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/crash/b/a;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/crash/b/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/crash/b/b;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object p1, Lcom/networkbench/agent/impl/crash/b/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Earliest BreadCrumb Element :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_1
    if-ge p1, v2, :cond_4

    iget-object v4, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/crash/b/a;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/crash/b/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/crash/b/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/networkbench/agent/impl/crash/b/b;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object p1, Lcom/networkbench/agent/impl/crash/b/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Earliest Trails Element :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :goto_2
    move v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_4
    if-ltz p1, :cond_5

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_5
    monitor-exit p0

    return v1

    :goto_5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/crash/b/a;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/crash/b/b;->c(Ljava/lang/String;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    move p1, v1

    :goto_0
    if-ge p1, v2, :cond_4

    iget-object v4, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/crash/b/a;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/crash/b/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/crash/b/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_2
    move p1, v1

    :goto_1
    if-ge p1, v2, :cond_4

    iget-object v4, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/crash/b/a;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/crash/b/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/crash/b/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    move v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_4
    if-ltz p1, :cond_5

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/b/b;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_5
    monitor-exit p0

    return v1

    :goto_5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
