.class public final synthetic Lfy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;I)V
    .locals 0

    iput p3, p0, Lfy0;->a:I

    iput-object p1, p0, Lfy0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Lfy0;->c:Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lfy0;->a:I

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    iget-object v3, p0, Lfy0;->c:Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;

    iget-object p0, p0, Lfy0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[checkNeedToUpdateWithGuids] succeed. statusMap.size="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, p0}, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;->onSuccess(Ljava/util/Map;)V

    return-void

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[checkNeedToUpdateWithSkuSetGuids] succeed. statusMap.size="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, p0}, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;->onSuccess(Ljava/util/Map;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
