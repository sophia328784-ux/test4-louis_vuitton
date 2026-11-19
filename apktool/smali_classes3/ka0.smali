.class public final synthetic Lka0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/LookHandler;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    iput p3, p0, Lka0;->a:I

    iput-object p1, p0, Lka0;->b:Lcom/perfectcorp/perfectlib/LookHandler;

    iput-object p2, p0, Lka0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lka0;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lka0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object p0, p0, Lka0;->b:Lcom/perfectcorp/perfectlib/LookHandler;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v2, :cond_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v2, :cond_2

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
