.class public final synthetic Lcq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;I)V
    .locals 0

    iput p4, p0, Lcq0;->b:I

    iput-object p1, p0, Lcq0;->c:Ljava/lang/String;

    iput-object p2, p0, Lcq0;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p3, p0, Lcq0;->e:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcq0;->b:I

    const/4 v1, 0x3

    const-string v2, "ProductMaskHelper"

    iget-object v3, p0, Lcq0;->e:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;

    iget-object v4, p0, Lcq0;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object p0, p0, Lcq0;->c:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "[syncServer] create DB consumer for featureType="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldq0;

    invoke-direct {v0, p0, v4, v3, p1}, Ldq0;-><init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;Ljava/util/List;)V

    return-object v0

    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[syncServer] has no product need to be queried in featureType="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lo2;

    const/16 p1, 0xe

    invoke-direct {p0, v4, p1}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "[syncServer] query product mask by GUIDs for featureType="

    invoke-static {v1, v0, p0, v2}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1e

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->b(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lno0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lno0;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lno0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lno0;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcq0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v4, v3, v1}, Lcq0;-><init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
