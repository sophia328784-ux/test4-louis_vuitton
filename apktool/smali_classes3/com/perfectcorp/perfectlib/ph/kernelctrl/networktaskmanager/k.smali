.class final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
        "Landroid/util/Pair<",
        "Ljava/util/List<",
        "Lcom/perfectcorp/perfectlib/ph/template/a;",
        ">;",
        "Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public synthetic b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public synthetic c:I

.field public synthetic d:Ljava/util/List;

.field public synthetic e:Ljava/lang/String;

.field public synthetic f:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public synthetic g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

.field public synthetic h:Ljava/lang/String;

.field public synthetic i:F


# virtual methods
.method public final a(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->e:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->d:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_1
    invoke-virtual {p2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/util/Collection;J)V

    goto :goto_1

    :goto_2
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->d:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_guid:Ljava/lang/String;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_4
    invoke-virtual {p2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_5

    :cond_2
    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_guid:Ljava/lang/String;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/util/Collection;J)V

    goto :goto_4

    :goto_5
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->e:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->attr_guid:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_7
    invoke-virtual {p2, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_8

    :cond_4
    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->attr_guid:Ljava/lang/String;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v5, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/util/Collection;J)V

    goto :goto_7

    :goto_8
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->attr_guid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_6

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/a;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_a
    invoke-virtual {p2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_9

    :cond_6
    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/a;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, p1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/util/Collection;J)V

    goto :goto_a

    :cond_7
    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {v9}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "[#"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->c:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] #makeData(); begin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    const-string v13, "IdSystemDataHelper"

    invoke-static {v12, v13, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->c:Ljava/util/Collection;

    iget-object v14, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, v9, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_itemZIP:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "has zip, pattern id: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", zip: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_itemZIP:Ljava/lang/String;

    invoke-static {v4, v5, v12, v13}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->f:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->b:Ljava/util/List;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->valueOfSkuFeatureType(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v4

    check-cast v5, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v5, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->u:Ljava/util/HashMap;

    new-instance v4, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;

    invoke-direct {v4, v2}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "no zip, pattern id: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-static {v4, v5, v12, v13}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->h:Ljava/lang/String;

    iget v6, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->i:F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->a(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Ljava/lang/String;FLcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    goto/16 :goto_0

    :cond_2
    iget-object v0, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    if-nez v3, :cond_3

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    invoke-direct {v5}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;-><init>()V

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_guid:Ljava/lang/String;

    iget-object v15, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_thumbnail:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    invoke-static {v6, v15}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->p:Ljava/util/ArrayList;

    new-instance v15, Lcom/perfectcorp/perfectlib/ph/template/u;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_guid:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v15, v2, v6, v4}, Lcom/perfectcorp/perfectlib/ph/template/u;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->h:Ljava/lang/String;

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->a(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    goto :goto_3

    :cond_5
    iget-object v0, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    if-nez v3, :cond_6

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;-><init>()V

    move-object v6, v0

    goto :goto_5

    :cond_6
    move-object v6, v3

    :goto_5
    iget-object v0, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    iget-object v15, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_thumbnail:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    invoke-static {v0, v15}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_mask:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    invoke-static {v0, v12}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    move-object/from16 v16, v2

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_shadow:Ljava/lang/String;

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    invoke-static {v12, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_highlight:Ljava/lang/String;

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    invoke-static {v12, v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    move-object/from16 v18, v4

    iget-object v4, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_lip_shape_ombre:Ljava/lang/String;

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    invoke-static {v12, v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v19, v14

    :try_start_1
    const-string v14, "attr_guid"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v20, v8

    :try_start_2
    iget-object v8, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    invoke-virtual {v12, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "attr_thumbnail"

    invoke-virtual {v12, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "attr_mask"

    invoke-virtual {v12, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_shadow"

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_highlight"

    invoke-virtual {v12, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_lip_shape_ombre"

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_height_intensity"

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_height_intensity:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_height_upper_intensity"

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_height_upper_intensity:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_height_lower_intensity"

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_height_lower_intensity:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_size_intensity"

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_size_intensity:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_width_intensity"

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_width_intensity:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_mshaped_intensity"

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_mshaped_intensity:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_lip_shape_roi_start"

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_lip_shape_roi_start:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_itemZIP"

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_itemZIP:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v20, v8

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v19, v14

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v0, v18

    :goto_7
    iget-object v2, v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->o:Ljava/util/ArrayList;

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/p;

    iget-object v4, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    invoke-direct {v3, v4, v15, v0}, Lcom/perfectcorp/perfectlib/ph/template/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v14, v19

    move-object/from16 v8, v20

    const/4 v12, 0x3

    goto/16 :goto_4

    :cond_7
    move-object/from16 v20, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] #makeData(); end"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v13, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->u:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v0, "no idcZipDownloadComponents"

    invoke-static {v2, v13, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v1, v7, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->a(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "has idcZipDownloadComponents, total: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->u:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v13, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lua0;

    move-object/from16 v4, v20

    invoke-direct {v2, v4, v3}, Lua0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Lms;

    const/4 v4, 0x5

    invoke-direct {v3, v11, v4}, Lms;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i0;

    invoke-direct {v2, v1, v7, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i0;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v1
.end method
