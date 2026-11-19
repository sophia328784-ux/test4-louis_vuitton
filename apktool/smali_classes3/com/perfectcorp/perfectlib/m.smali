.class public final synthetic Lcom/perfectcorp/perfectlib/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    iput p6, p0, Lcom/perfectcorp/perfectlib/m;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/m;->g:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/m;->c:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/m;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/m;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/m;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lcom/perfectcorp/perfectlib/m;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/m;->d:Ljava/util/List;

    iget v3, p0, Lcom/perfectcorp/perfectlib/m;->c:I

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/m;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->s(I)V

    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->e(Ljava/util/List;Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/m;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/m;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/VtoSetting;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->s(I)V

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v10, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->s(I)V

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v10, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;

    move-result-object v2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->m(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setSkuGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1

    :pswitch_0
    check-cast v4, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->g(I)V

    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->b(Ljava/util/List;Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/m;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/m;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/VtoSetting;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->g(I)V

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v10, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->g(I)V

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v10, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;

    move-result-object v2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->m(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setSkuGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
