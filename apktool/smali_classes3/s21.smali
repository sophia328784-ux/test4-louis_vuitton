.class public final synthetic Ls21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/common/network/ProgressCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/common/utility/EventPublisher;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/utility/EventPublisher;I)V
    .locals 0

    iput p2, p0, Ls21;->a:I

    iput-object p1, p0, Ls21;->b:Lcom/perfectcorp/common/utility/EventPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 3

    iget v0, p0, Ls21;->a:I

    const-class v1, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;

    iget-object p0, p0, Ls21;->b:Lcom/perfectcorp/common/utility/EventPublisher;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkt0;

    const/4 v2, 0x4

    invoke-direct {v0, p1, p2, v2}, Lkt0;-><init>(DI)V

    sget-object p1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-virtual {p0, v1, v0, p1}, Lcom/perfectcorp/common/utility/EventPublisher;->a(Ljava/lang/Class;Lcom/perfectcorp/common/utility/EventPublisher$Publisher;Lcom/perfectcorp/common/concurrent/CallingThread;)V

    return-void

    :pswitch_0
    new-instance v0, Lkt0;

    const/4 v2, 0x5

    invoke-direct {v0, p1, p2, v2}, Lkt0;-><init>(DI)V

    sget-object p1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-virtual {p0, v1, v0, p1}, Lcom/perfectcorp/common/utility/EventPublisher;->a(Ljava/lang/Class;Lcom/perfectcorp/common/utility/EventPublisher$Publisher;Lcom/perfectcorp/common/concurrent/CallingThread;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
