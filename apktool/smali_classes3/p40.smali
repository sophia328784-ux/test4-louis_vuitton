.class public final synthetic Lp40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V
    .locals 0

    iput p2, p0, Lp40;->b:I

    iput-object p1, p0, Lp40;->c:Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lp40;->b:I

    const-string v1, "Data is synchronizing."

    const-string v2, "[getList] failed. Data is synchronizing."

    iget-object p0, p0, Lp40;->c:Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;

    packed-switch v0, :pswitch_data_0

    const-string v0, "NailLookHandler"

    invoke-static {v0, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    const-string v0, "LookHandler"

    invoke-static {v0, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    const-string v0, "JewelryLookHandler"

    invoke-static {v0, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
