.class public final synthetic Lq40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V
    .locals 0

    iput p2, p0, Lq40;->a:I

    iput-object p1, p0, Lq40;->b:Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lq40;->a:I

    const-string v1, "JewelryLookHandler"

    const-string v2, "LookHandler"

    const-string v3, "NailLookHandler"

    const/4 v4, 0x3

    const-string v5, "[getList] success, result.size="

    const-string v6, "[getList] failed"

    iget-object p0, p0, Lq40;->b:Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v3, v6, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v4, v3}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v2, v6, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v4, v2}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v6, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v4, v1}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;->onSuccess(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
