.class public final synthetic Ljn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;I)V
    .locals 0

    iput p2, p0, Ljn0;->a:I

    iput-object p1, p0, Ljn0;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Ljn0;->a:I

    const-string v1, "SDKInitHandler"

    iget-object p0, p0, Ljn0;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    const-string v0, "[startInit] Init failed."

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    const-string v0, "[startInit] Init end."

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib$State;->RELEASED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    const-string v0, "PerfectLib"

    const-string v1, "SDK init failed."

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
