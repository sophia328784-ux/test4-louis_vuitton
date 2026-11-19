.class public final synthetic Ldz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;I)V
    .locals 0

    iput p2, p0, Ldz0;->a:I

    iput-object p1, p0, Ldz0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Ldz0;->a:I

    const-string v1, "SkuHandler"

    iget-object p0, p0, Ldz0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "[getSkuInfosWithGuids] failed."

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;->onComplete(Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[getSkuInfosWithGuids] succeed. size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {p1, v0, v2, v1}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;->onComplete(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
