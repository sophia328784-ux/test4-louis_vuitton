.class public final synthetic Liy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;I)V
    .locals 0

    iput p2, p0, Liy0;->a:I

    iput-object p1, p0, Liy0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Liy0;->a:I

    check-cast p1, Ljava/lang/Throwable;

    packed-switch v0, :pswitch_data_0

    const-string v0, "SkuHandler"

    const-string v1, "[checkNeedToUpdateWithGuids] failed"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Liy0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    const-string v0, "SkuHandler"

    const-string v1, "[checkNeedToUpdateWithSkuSetGuids] failed"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Liy0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
