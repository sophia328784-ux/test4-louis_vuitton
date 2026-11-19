.class public final synthetic Lcom/perfectcorp/perfectlib/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/PerfectEffect;ZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/u1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/u1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/u1;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/u1;->c:Z

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/u1;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 15
    iput p5, p0, Lcom/perfectcorp/perfectlib/u1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/u1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/u1;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/u1;->f:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/perfectcorp/perfectlib/u1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/perfectcorp/perfectlib/PerfectEffect;Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;)V
    .locals 1

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/perfectcorp/perfectlib/u1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/u1;->c:Z

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/u1;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/u1;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/u1;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/u1;->b:I

    const-string v2, "[transformMetadataToInfo] Filter out product since it has no SKUs. productGuid="

    const-string v3, "SkuHandler"

    sget-object v4, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface;->a:Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface$1;

    const-string v5, "N/A"

    const/4 v7, 0x3

    iget-boolean v8, v0, Lcom/perfectcorp/perfectlib/u1;->c:Z

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/u1;->f:Ljava/lang/Object;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/u1;->e:Ljava/lang/Object;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/u1;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v13, v0

    check-cast v13, Lcom/perfectcorp/perfectlib/TagHandler$Type;

    move-object v12, v10

    check-cast v12, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast v9, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget v1, v0, Lcom/perfectcorp/common/network/RequestTask$Response;->a:I

    const/16 v2, 0x130

    const-string v3, "TagHandler"

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[syncServer] type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " up-to-date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lpx0;

    const/16 v1, 0xa

    invoke-direct {v0, v12, v1}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance v1, Lpx0;

    const/16 v2, 0xb

    invoke-direct {v1, v12, v2}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;

    invoke-static/range {v17 .. v17}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;->a()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;

    move-result-object v0

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "[convertResponseToDbInfos] start"

    invoke-static {v7, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;->b()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b;->c()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a;

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;-><init>()V

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->a:Ljava/lang/String;

    move/from16 v18, v8

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a;->a()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->b:J

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->c:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a;->c()Z

    move-result v7

    iput-boolean v7, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->d:Z

    new-instance v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;

    invoke-direct {v7, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;)V

    invoke-interface {v15, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a$a;

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;

    invoke-direct {v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;-><init>()V

    iput-object v5, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;->a:Ljava/lang/String;

    move-object/from16 p0, v6

    move-object/from16 p1, v7

    invoke-virtual/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a$a;->a()J

    move-result-wide v6

    iput-wide v6, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;->b:J

    invoke-virtual/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;->c:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a$a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;->d:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a;->a()J

    move-result-wide v6

    iput-wide v6, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;->e:J

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;

    invoke-direct {v6, v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;)V

    invoke-interface {v14, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a$a;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v5, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v2, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$a;->a(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    move-object/from16 v20, v2

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;->b:Ljava/lang/String;

    move-object v2, v4

    move-object v0, v5

    invoke-virtual/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a$b$a$a;->a()J

    move-result-wide v4

    iput-wide v4, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;->c:J

    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;->d:Z

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;->e:Ljava/lang/String;

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;

    invoke-direct {v4, v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v5, v0

    move-object v4, v2

    move-object/from16 v0, v19

    move-object/from16 v2, v20

    goto :goto_3

    :cond_1
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v6, p0

    goto/16 :goto_2

    :cond_2
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v8, v18

    const/4 v7, 0x3

    goto/16 :goto_1

    :cond_3
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v18, v8

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    const/4 v7, 0x3

    goto/16 :goto_0

    :cond_4
    move/from16 v18, v8

    const-string v0, "[convertResponseToDbInfos] end"

    const/4 v2, 0x3

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lpx0;

    const/16 v4, 0xc

    invoke-direct {v0, v12, v4}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    const-string v0, "[downloadImages] start"

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;

    iget-wide v5, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v7, Lrx0;

    const/16 v8, 0x8

    invoke-direct {v7, v12, v4, v2, v8}, Lrx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {v7}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_6
    new-instance v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-direct {v10}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;-><init>()V

    iput-object v8, v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->a:Ljava/lang/String;

    move-object/from16 p1, v0

    move-object/from16 p0, v1

    iget-wide v0, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->c:Ljava/lang/String;

    iget-object v0, v13, Lcom/perfectcorp/perfectlib/TagHandler$Type;->e:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    iput-object v0, v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    if-eqz v18, :cond_9

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    goto :goto_6

    :cond_7
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v1, "url"

    invoke-virtual {v0, v11, v1, v8}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    :goto_6
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->b:Ljava/lang/String;

    iput-object v1, v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->b:Ljava/lang/String;

    iget-wide v0, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->e:J

    iput-wide v0, v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->e:J

    :cond_9
    invoke-static {v10}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_7

    :cond_a
    invoke-static {v8}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lsw0;

    const/4 v8, 0x3

    invoke-direct {v1, v0, v9, v8}, Lsw0;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v8, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v8, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v8, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v1

    new-instance v8, Lln0;

    const/16 v11, 0x11

    invoke-direct {v8, v10, v11}, Lln0;-><init>(Ljava/lang/Object;I)V

    new-instance v10, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v10, v1, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Lt21;

    const/4 v8, 0x0

    invoke-direct {v1, v7, v0, v8}, Lt21;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;Ljava/lang/String;I)V

    invoke-virtual {v10, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v1

    new-instance v8, Lt21;

    const/4 v10, 0x1

    invoke-direct {v8, v7, v0, v10}, Lt21;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;Ljava/lang/String;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v0, v1, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    :goto_7
    new-instance v1, Lhy0;

    invoke-direct {v1, v12, v4, v2}, Lhy0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    goto/16 :goto_5

    :cond_b
    move-object/from16 p0, v1

    const-string v0, "[downloadImages] end"

    const/4 v2, 0x3

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->merge(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v11, Lcom/perfectcorp/perfectlib/l4;

    move-object/from16 v16, p0

    invoke-direct/range {v11 .. v17}, Lcom/perfectcorp/perfectlib/l4;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/TagHandler$Type;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;)V

    invoke-virtual {v0, v11}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    move-object v0, v1

    :goto_8
    return-object v0

    :pswitch_0
    move/from16 v18, v8

    check-cast v0, Lcom/perfectcorp/perfectlib/PerfectEffect;

    check-cast v10, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v9, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    if-eqz v18, :cond_c

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v4

    new-instance v6, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapper;

    invoke-direct {v6, v4}, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapper;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;)V

    move-object v4, v6

    :cond_c
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->b:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-nez v12, :cond_d

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v7, v8, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-virtual {v8, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_f
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->b:Ljava/lang/String;

    invoke-interface {v4, v12}, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    sget-object v11, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->MAPPING_INCOMPLETE:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_b

    :cond_11
    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    if-eqz v11, :cond_10

    new-instance v14, Lcom/perfectcorp/perfectlib/ProductInfo;

    sget-object v15, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->URL:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-direct {v14, v0, v13, v11, v15}, Lcom/perfectcorp/perfectlib/ProductInfo;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_10

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_10

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    move-object/from16 p0, v0

    iget-object v0, v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    invoke-interface {v4, v12, v0}, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->MAPPING_INCOMPLETE:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_d
    move-object/from16 v0, p0

    goto :goto_c

    :cond_12
    invoke-static {v14, v0, v15}, Lcom/perfectcorp/perfectlib/SkuInfo;->a(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)Lcom/perfectcorp/perfectlib/SkuInfo;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_13
    move-object/from16 p0, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    invoke-static {v0, v2, v12, v3}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move-object/from16 v0, p0

    goto/16 :goto_b

    :cond_14
    iget-object v0, v14, Lcom/perfectcorp/perfectlib/ProductInfo;->i:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_15
    invoke-static {v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :pswitch_1
    move/from16 v18, v8

    check-cast v0, Lcom/perfectcorp/perfectlib/SkuHandler;

    check-cast v10, Lcom/perfectcorp/perfectlib/PerfectEffect;

    check-cast v9, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    iget-object v6, v10, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->isAccessory()Z

    move-result v6

    if-nez v6, :cond_16

    goto/16 :goto_11

    :cond_16
    sget-object v6, Lcom/perfectcorp/perfectlib/SkuHandler$1;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1d

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1d

    const/4 v8, 0x3

    if-eq v6, v8, :cond_1d

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1d

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1d

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iget-object v11, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    sget-object v12, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v10, v12, :cond_1a

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v12

    if-eqz v12, :cond_19

    iget-object v13, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    iget-object v13, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->guid:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_19

    iget-object v11, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->guid:Ljava/lang/String;

    goto :goto_10

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No pattern GUID can be found in SKU \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    const-string v2, "\'"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_16

    :cond_1a
    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    :goto_10
    invoke-static {v11}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v11

    if-eqz v11, :cond_17

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->b()Z

    move-result v11

    if-nez v11, :cond_18

    goto :goto_f

    :cond_1b
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1c
    move-object v1, v6

    :cond_1d
    :goto_11
    if-eqz v18, :cond_1e

    iget-object v4, v10, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v4

    new-instance v6, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapper;

    invoke-direct {v6, v4}, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapper;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;)V

    move-object v4, v6

    :cond_1e
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-interface {v4, v8}, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    sget-object v7, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->MAPPING_INCOMPLETE:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_12

    :cond_1f
    new-instance v12, Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-direct {v12, v10, v11, v7, v13}, Lcom/perfectcorp/perfectlib/ProductInfo;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object v11, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuItemOnly;->a:[Ljava/lang/String;

    const-string v13, "0"

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "skuGuid=? AND isDeleted=?"

    invoke-static {v7, v11, v14, v13}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/g;->c(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    :cond_20
    invoke-static {v8}, Lcom/perfectcorp/perfectlib/SkuHandler;->m(Ljava/lang/String;)Ljava/util/AbstractSet;

    move-result-object v11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    iget-object v15, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    move-object/from16 p0, v0

    invoke-interface {v4, v8, v15}, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->MAPPING_INCOMPLETE:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_14
    move-object/from16 v0, p0

    goto :goto_13

    :cond_21
    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_22

    const-string v0, "[transformMetadataToInfo] Filter out SKU by product mask. skuGuid="

    const/4 v14, 0x3

    invoke-static {v14, v0, v15, v3}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_22
    const/4 v15, 0x3

    invoke-static {v12, v0, v14}, Lcom/perfectcorp/perfectlib/SkuInfo;->a(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)Lcom/perfectcorp/perfectlib/SkuInfo;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_23
    move-object/from16 p0, v0

    const/4 v15, 0x3

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_15
    move-object/from16 v0, p0

    goto/16 :goto_12

    :cond_24
    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ProductInfo;->i:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "[transformMetadataToInfo] productGuid="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", skuInfos.size()="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x3

    invoke-static {v8, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_25
    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_16
    return-object v0

    :pswitch_2
    move/from16 v18, v8

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    check-cast v9, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, v9, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;->b:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move/from16 v3, v18

    invoke-static {v0, v10, v2, v1, v3}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/util/List;Z)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
