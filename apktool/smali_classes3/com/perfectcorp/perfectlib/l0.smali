.class public final synthetic Lcom/perfectcorp/perfectlib/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/util/ArrayList;IILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/l0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/l0;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/l0;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/perfectcorp/perfectlib/l0;->c:I

    iput p4, p0, Lcom/perfectcorp/perfectlib/l0;->d:I

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/l0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/l0;->h:Ljava/lang/Object;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/l0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p8, p0, Lcom/perfectcorp/perfectlib/l0;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;IILcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    .line 23
    iput p9, p0, Lcom/perfectcorp/perfectlib/l0;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/l0;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/l0;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/perfectcorp/perfectlib/l0;->c:I

    iput p4, p0, Lcom/perfectcorp/perfectlib/l0;->d:I

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/l0;->h:Ljava/lang/Object;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/l0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/l0;->i:Ljava/lang/Object;

    iput-object p8, p0, Lcom/perfectcorp/perfectlib/l0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/l0;->a:I

    const-string v2, "[downloadAndApplySkus] shadeIdVtoSettings = "

    const-string v3, "[downloadAndApplySkus] existingMapping = "

    const/4 v4, 0x3

    const-string v5, "[downloadAndApplySkus] vtoSettings are mapped. mappedVtoSettings="

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/l0;->i:Ljava/lang/Object;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/l0;->h:Ljava/lang/Object;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/l0;->g:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v9, v8

    check-cast v9, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    move-object v13, v7

    check-cast v13, Lcom/perfectcorp/perfectlib/EffectConfig;

    move-object v15, v6

    check-cast v15, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    sget v6, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PhotoMakeupInternal"

    invoke-static {v4, v6, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/l0;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v5

    iget v10, v0, Lcom/perfectcorp/perfectlib/l0;->c:I

    iget v11, v0, Lcom/perfectcorp/perfectlib/l0;->d:I

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/l0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/l0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-nez v5, :cond_0

    invoke-static {v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v6, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v9 .. v17}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f(IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v0

    :goto_0
    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    move-object v12, v1

    invoke-virtual/range {v9 .. v17}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f(IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V

    :cond_1
    return-void

    :pswitch_0
    move-object/from16 v18, v8

    check-cast v18, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    move-object/from16 v22, v7

    check-cast v22, Lcom/perfectcorp/perfectlib/EffectConfig;

    move-object/from16 v24, v6

    check-cast v24, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    sget-object v6, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MakeupCamInternal"

    invoke-static {v4, v6, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/l0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v7

    iget v8, v0, Lcom/perfectcorp/perfectlib/l0;->c:I

    iget v9, v0, Lcom/perfectcorp/perfectlib/l0;->d:I

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/l0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/l0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-nez v7, :cond_2

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v6, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    move-object/from16 v25, v0

    move-object/from16 v21, v5

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v23, v10

    invoke-virtual/range {v18 .. v26}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->x(IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V

    goto :goto_1

    :cond_2
    move-object/from16 v25, v0

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v23, v10

    :goto_1
    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    move-object/from16 v21, v1

    invoke-virtual/range {v18 .. v26}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->x(IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V

    :cond_3
    return-void

    :pswitch_1
    check-cast v8, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    check-cast v7, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    move-object v10, v6

    check-cast v10, Ljava/util/List;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    iget-object v14, v8, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v14, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/l0;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v8}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v6

    move v9, v6

    iget v6, v0, Lcom/perfectcorp/perfectlib/l0;->c:I

    move-object v13, v10

    move-object v10, v7

    iget v7, v0, Lcom/perfectcorp/perfectlib/l0;->d:I

    move v11, v9

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/l0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/l0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-nez v11, :cond_4

    invoke-static {v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v14, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    move-object v11, v0

    invoke-virtual/range {v5 .. v13}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->l(IILjava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZLjava/util/List;)V

    move-object v8, v11

    :goto_2
    move v3, v6

    move-object v6, v9

    goto :goto_3

    :cond_4
    move-object v8, v0

    goto :goto_2

    :goto_3
    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v14, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    move-object v2, v5

    move v4, v7

    move-object v7, v10

    move-object v10, v13

    move-object v5, v1

    invoke-virtual/range {v2 .. v10}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->l(IILjava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZLjava/util/List;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
