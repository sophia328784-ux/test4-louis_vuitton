.class public final synthetic Lax0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;I)V
    .locals 0

    iput p2, p0, Lax0;->a:I

    iput-object p1, p0, Lax0;->b:Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lax0;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "SkinCareProduct"

    const-string v1, "[getInventory] failed"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lax0;->b:Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    const-string v0, "[getInventory] success"

    const/4 v1, 0x3

    const-string v2, "SkinCareProduct"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lax0;->b:Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
