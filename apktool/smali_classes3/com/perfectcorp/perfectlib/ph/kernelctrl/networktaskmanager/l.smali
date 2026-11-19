.class final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Lcom/perfectcorp/perfectlib/ph/template/b$b;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public synthetic b:I

.field public synthetic c:Ljava/util/List;

.field public synthetic d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public synthetic e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;->c:Ljava/util/List;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-object/from16 v4, p1

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;->b:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] get valid components from IdSystemParser.Response"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    const-string v9, "IdSystemDataHelper"

    invoke-static {v8, v9, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    new-instance v10, Lxx0;

    const/16 v11, 0x1b

    invoke-direct {v10, v11}, Lxx0;-><init>(I)V

    invoke-virtual {v5, v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->s(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v10

    new-instance v11, Lm91;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lm91;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->s(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v10

    invoke-virtual {v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v10

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v11

    new-instance v13, Lm91;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lm91;-><init>(I)V

    invoke-virtual {v11, v13}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->s(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v11

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v4

    new-instance v13, Lm91;

    const/4 v15, 0x2

    invoke-direct {v13, v15}, Lm91;-><init>(I)V

    invoke-virtual {v4, v13}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->s(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/IdSystemDataNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] All components are invalid . ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/IdSystemDataNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->g(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v13, Ljava/util/HashSet;

    new-instance v15, Lm91;

    invoke-direct {v15, v8}, Lm91;-><init>(I)V

    invoke-static {v5, v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->b(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v15, Lm91;

    const/4 v14, 0x4

    invoke-direct {v15, v14}, Lm91;-><init>(I)V

    invoke-static {v10, v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->b(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    new-instance v14, Lxx0;

    const/16 v15, 0x1c

    invoke-direct {v14, v15}, Lxx0;-><init>(I)V

    invoke-static {v11, v14}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->b(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    new-instance v14, Lxx0;

    const/16 v15, 0x1d

    invoke-direct {v14, v15}, Lxx0;-><init>(I)V

    invoke-static {v4, v14}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->b(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v13, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] One or more components are invalid. ids="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v9, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    iget-object v15, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v15, v15, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v14

    invoke-virtual {v14}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v14}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-wide v14, v14, Lcom/perfectcorp/perfectlib/ph/template/a;->d:J

    iget-object v12, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v12, v14, v17

    if-eqz v12, :cond_3

    :cond_2
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_guid:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v13

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-wide v13, v13, Lcom/perfectcorp/perfectlib/ph/template/a;->d:J

    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v13, v13, v17

    if-eqz v13, :cond_5

    :cond_6
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->attr_guid:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v13

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-wide v13, v13, Lcom/perfectcorp/perfectlib/ph/template/a;->d:J

    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v13, v13, v17

    if-eqz v13, :cond_8

    :cond_9
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/template/idc/f;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v13

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-wide v13, v13, Lcom/perfectcorp/perfectlib/ph/template/a;->d:J

    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v13, v13, v17

    if-eqz v13, :cond_b

    :cond_c
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    const-string v4, "] filteredPatterns.size()="

    invoke-static {v7, v6, v4}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v9, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] trigger #downloadPatternImages(); start"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v9, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v4

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v2, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;-><init>(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v4, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v4

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v6

    new-instance v7, Lgy0;

    const/16 v8, 0xf

    invoke-direct {v7, v3, v2, v8}, Lgy0;-><init>(Ljava/io/Serializable;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v6, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v6

    invoke-static {v10}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;

    const/4 v9, 0x1

    invoke-direct {v8, v3, v2, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;-><init>(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v7, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v7

    invoke-static {v11}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v8

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;

    const/4 v12, 0x2

    invoke-direct {v9, v3, v2, v12}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;-><init>(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v8, v9}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    invoke-static {v4, v6, v7, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concat(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v4, Lr81;

    const/16 v6, 0x19

    invoke-direct {v4, v6}, Lr81;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v2

    iget v0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;->b:I

    new-instance v16, Lta0;

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-direct/range {v16 .. v21}, Lta0;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v16

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v1, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v1
.end method
