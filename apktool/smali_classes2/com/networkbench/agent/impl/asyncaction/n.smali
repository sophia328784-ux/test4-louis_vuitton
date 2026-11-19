.class public Lcom/networkbench/agent/impl/asyncaction/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/o;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/networkbench/agent/impl/asyncaction/n$1;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/asyncaction/n$1;-><init>()V

    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/asyncaction/o;

    iget-wide v3, v3, Lcom/networkbench/agent/impl/asyncaction/o;->a:J

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/asyncaction/o;

    iget-wide v5, v2, Lcom/networkbench/agent/impl/asyncaction/o;->b:J

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/networkbench/agent/impl/asyncaction/o;

    iget-wide v8, v7, Lcom/networkbench/agent/impl/asyncaction/o;->a:J

    cmp-long v10, v8, v5

    if-lez v10, :cond_1

    sub-long v3, v5, v3

    add-long/2addr v3, v0

    move-wide v0, v3

    move-wide v3, v8

    :cond_1
    iget-wide v7, v7, Lcom/networkbench/agent/impl/asyncaction/o;->b:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sub-long/2addr v5, v3

    add-long/2addr v5, v0

    return-wide v5

    :catchall_0
    return-wide v0
.end method

.method public static b(Ljava/util/List;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/o;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Lcom/networkbench/agent/impl/asyncaction/n$2;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/asyncaction/n$2;-><init>()V

    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/asyncaction/o;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/asyncaction/o;->b()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v4, v0

    move-wide v6, v4

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/asyncaction/o;

    cmp-long v8, v4, v0

    if-nez v8, :cond_3

    iget-wide v4, v2, Lcom/networkbench/agent/impl/asyncaction/o;->b:J

    iget-wide v8, v2, Lcom/networkbench/agent/impl/asyncaction/o;->a:J

    sub-long v8, v4, v8

    add-long/2addr v8, v6

    move-wide v6, v8

    goto :goto_1

    :cond_3
    iget-wide v8, v2, Lcom/networkbench/agent/impl/asyncaction/o;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v10, v8, v4

    iget-wide v11, v2, Lcom/networkbench/agent/impl/asyncaction/o;->b:J

    if-ltz v10, :cond_4

    sub-long/2addr v11, v8

    :goto_2
    add-long/2addr v6, v11

    goto :goto_3

    :cond_4
    cmp-long v8, v11, v4

    if-lez v8, :cond_5

    sub-long/2addr v11, v4

    goto :goto_2

    :cond_5
    :goto_3
    :try_start_1
    iget-wide v8, v2, Lcom/networkbench/agent/impl/asyncaction/o;->b:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v2, v0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/networkbench/agent/impl/asyncaction/o;

    iget-wide v8, v8, Lcom/networkbench/agent/impl/asyncaction/o;->b:J

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_7
    cmp-long p0, v2, v4

    if-lez p0, :cond_8

    sub-long/2addr v2, v4

    add-long/2addr v2, v6

    return-wide v2

    :cond_8
    return-wide v6

    :catchall_0
    :goto_5
    return-wide v0
.end method
