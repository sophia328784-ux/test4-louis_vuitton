.class public final synthetic Lla0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lla0;->a:I

    iput-object p1, p0, Lla0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lla0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lla0;->a:I

    iget-object v1, p0, Lla0;->c:Ljava/lang/Object;

    iget-object p0, p0, Lla0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/io/File;

    check-cast v1, Ljava/io/File;

    invoke-static {p0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    invoke-static {v1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/LookHandler;

    check-cast v1, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
