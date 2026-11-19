.class public final synthetic Luw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/Object;I)V
    .locals 0

    iput p5, p0, Luw0;->a:I

    iput-object p1, p0, Luw0;->d:Ljava/lang/Object;

    iput-object p2, p0, Luw0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Luw0;->c:I

    iput-object p4, p0, Luw0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Luw0;->a:I

    iget-object v1, p0, Luw0;->e:Ljava/lang/Object;

    iget v2, p0, Luw0;->c:I

    iget-object v3, p0, Luw0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Luw0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/List;

    check-cast v1, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    const-string v0, "[initParallelly] onError"

    const-string v4, "SDKInitHandler"

    invoke-static {v4, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[initParallelly] onError. errorCount="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", totalCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v2, :cond_0

    const-string p1, "[initParallelly] emit error"

    invoke-static {v4, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :pswitch_0
    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    check-cast v1, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast p1, Ljava/io/File;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[processProducts] Download success url="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    const-string v4, "SkinCare3RecommendationHandler"

    invoke-static {v0, v4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->s(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    int-to-double p0, p0

    const-wide v3, 0x3fc851eb851eb852L    # 0.19

    mul-double/2addr p0, v3

    int-to-double v2, v2

    div-double/2addr p0, v2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    add-double/2addr p0, v2

    new-instance v0, Lcom/perfectcorp/perfectlib/p;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/p;-><init>(Ljava/lang/Object;DI)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
