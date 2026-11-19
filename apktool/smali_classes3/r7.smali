.class public final synthetic Lr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;I)V
    .locals 0

    iput p2, p0, Lr7;->a:I

    iput-object p1, p0, Lr7;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lr7;->a:I

    const-string v1, "ApplyEffectUtility"

    iget-object p0, p0, Lr7;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    sget-object p1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "downloadThenUpdateOnNextSdkInit failed, guid="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    sget-object p1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "downloadThenUpdateOnNextSdkInit task done, guid="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, p0, v0, v1}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
