.class public final synthetic Ltx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;I)V
    .locals 0

    iput p2, p0, Ltx0;->a:I

    iput-object p1, p0, Ltx0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ltx0;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "[syncSkuListByEffect] end"

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ltx0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;->onSuccess()V

    return-void

    :pswitch_0
    const-string v0, "[syncSkuList] end"

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ltx0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;->onSuccess()V

    return-void

    :pswitch_1
    const-string v0, "[syncServerByEffect] end"

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ltx0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;->onSuccess()V

    return-void

    :pswitch_2
    const-string v0, "[syncServer] succeed"

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ltx0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;->onSuccess()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
