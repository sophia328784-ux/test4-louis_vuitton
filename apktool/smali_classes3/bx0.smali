.class public final synthetic Lbx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;I)V
    .locals 0

    iput p2, p0, Lbx0;->a:I

    iput-object p1, p0, Lbx0;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lbx0;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[downloadSkuByProtocolMethod] end id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lbx0;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x3

    const-string v2, "SkuCacheStrategyHelper"

    invoke-static {v0, p0, v1, v2}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[downloadSku] end id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lbx0;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
