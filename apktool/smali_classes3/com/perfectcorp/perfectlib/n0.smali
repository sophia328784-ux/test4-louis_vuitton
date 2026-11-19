.class public final synthetic Lcom/perfectcorp/perfectlib/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;IILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/n0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/n0;->c:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/n0;->d:I

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/n0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/n0;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/n0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/n0;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/util/ArrayList;IILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V
    .locals 1

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/n0;->h:Ljava/lang/Object;

    iput p3, p0, Lcom/perfectcorp/perfectlib/n0;->c:I

    iput p4, p0, Lcom/perfectcorp/perfectlib/n0;->d:I

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/n0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/n0;->f:Ljava/lang/Object;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/n0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IILcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    .line 22
    iput p8, p0, Lcom/perfectcorp/perfectlib/n0;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/n0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/n0;->c:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/n0;->d:I

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/n0;->f:Ljava/lang/Object;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/n0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/n0;->h:Ljava/lang/Object;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/n0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/n0;->a:I

    const-string v2, "[downloadAndApplySkus] product GUIDs are found. mappedVtoSettings="

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/n0;->h:Ljava/lang/Object;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/n0;->f:Ljava/lang/Object;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/n0;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v7, v6

    check-cast v7, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    move-object v11, v5

    check-cast v11, Lcom/perfectcorp/perfectlib/EffectConfig;

    move-object v13, v4

    check-cast v13, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    move-object/from16 v10, p1

    check-cast v10, Ljava/util/List;

    sget v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoMakeupInternal"

    invoke-static {v3, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    iget v8, v0, Lcom/perfectcorp/perfectlib/n0;->c:I

    iget v9, v0, Lcom/perfectcorp/perfectlib/n0;->d:I

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/n0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/n0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual/range {v7 .. v15}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f(IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V

    return-void

    :pswitch_0
    move-object/from16 v16, v6

    check-cast v16, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    move-object/from16 v20, v5

    check-cast v20, Lcom/perfectcorp/perfectlib/EffectConfig;

    move-object/from16 v22, v4

    check-cast v22, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    move-object/from16 v19, p1

    check-cast v19, Ljava/util/List;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v19 .. v19}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MakeupCamInternal"

    invoke-static {v3, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    iget v1, v0, Lcom/perfectcorp/perfectlib/n0;->c:I

    iget v2, v0, Lcom/perfectcorp/perfectlib/n0;->d:I

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/n0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/n0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object/from16 v23, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v24}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->x(IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V

    return-void

    :pswitch_1
    check-cast v6, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    move-object v9, v5

    check-cast v9, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    move-object/from16 v2, p1

    check-cast v2, Ljava/util/List;

    iget-object v12, v6, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[downloadAndApplySkus] vtoSettings are mapped. mappedVtoSettings="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v12, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v7}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v2

    iget v5, v0, Lcom/perfectcorp/perfectlib/n0;->c:I

    move-object v4, v6

    iget v6, v0, Lcom/perfectcorp/perfectlib/n0;->d:I

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/n0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/n0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-nez v2, :cond_0

    invoke-static {v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[downloadAndApplySkus] existingMapping = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v12, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->k(IILjava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V

    :cond_0
    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[downloadAndApplySkus] shadeIdVtoSettings = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v12, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    move-object v7, v1

    invoke-virtual/range {v4 .. v11}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->k(IILjava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V

    :cond_1
    return-void

    :pswitch_2
    move-object v12, v6

    check-cast v12, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    move-object/from16 v17, v5

    check-cast v17, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    move-object/from16 v20, v4

    check-cast v20, Ljava/util/List;

    move-object/from16 v15, p1

    check-cast v15, Ljava/util/List;

    iget-object v1, v12, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    iget v13, v0, Lcom/perfectcorp/perfectlib/n0;->c:I

    iget v14, v0, Lcom/perfectcorp/perfectlib/n0;->d:I

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/n0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/n0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object/from16 v18, v0

    move-object/from16 v16, v1

    invoke-virtual/range {v12 .. v20}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->l(IILjava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZLjava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
