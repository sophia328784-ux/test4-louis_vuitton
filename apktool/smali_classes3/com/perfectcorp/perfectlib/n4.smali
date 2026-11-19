.class public final synthetic Lcom/perfectcorp/perfectlib/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoObject$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/n4;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/n4;->c:Lcom/perfectcorp/perfectlib/VtoObject$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/n4;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/n4;->c:Lcom/perfectcorp/perfectlib/VtoObject$Callback;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
