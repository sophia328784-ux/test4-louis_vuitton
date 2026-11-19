.class public final synthetic Lr21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/TagHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/TagHandler;I)V
    .locals 0

    iput p2, p0, Lr21;->a:I

    iput-object p1, p0, Lr21;->b:Lcom/perfectcorp/perfectlib/TagHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lr21;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Lr21;->b:Lcom/perfectcorp/perfectlib/TagHandler;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/TagHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/TagHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/TagHandler;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
